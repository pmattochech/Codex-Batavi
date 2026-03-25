"""
Cliente HTTP + WebSocket para ComfyUI.

Como identificar o nó de texto (prompt) no JSON API
----------------------------------------------------
1. Exporte o workflow em *API Format* no ComfyUI.
2. Cada chave de primeiro nível é um ID de nó (ex.: "12", "45").
3. Procure `"class_type": "CLIPTextEncode"` (prompt positivo ou negativo).
4. Confirme `"inputs": { "text": "..." }` — é esse campo que a CLI substitui.
5. Passe esse ID em --node-id ou em presets.toml como prompt_node_id.
"""

from __future__ import annotations

import asyncio
import json
import re
import shutil
import time
import uuid
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

import requests
import websockets

from batavi_forja.config import comfy_base_url, comfy_output_dir


def load_workflow_file(path: Path) -> dict[str, Any]:
    if not path.is_file():
        raise FileNotFoundError(f"Workflow não encontrado: {path}")
    with path.open("r", encoding="utf-8") as f:
        data = json.load(f)
    if not isinstance(data, dict):
        raise ValueError("O workflow API deve ser um objeto JSON (dicionário de nós).")
    return data


def find_first_cliptextencode_node(workflow: dict[str, Any]) -> str | None:
    for node_id, node in workflow.items():
        if not isinstance(node, dict):
            continue
        if node.get("class_type") != "CLIPTextEncode":
            continue
        inputs = node.get("inputs")
        if isinstance(inputs, dict) and "text" in inputs:
            return str(node_id)
    return None


def inject_prompt_text(workflow: dict[str, Any], node_id: str, prompt: str) -> None:
    if node_id not in workflow:
        raise KeyError(f"Nó '{node_id}' não existe no workflow.")
    node = workflow[node_id]
    if not isinstance(node, dict):
        raise TypeError(f"Nó '{node_id}' não é um objeto JSON.")
    inputs = node.get("inputs")
    if not isinstance(inputs, dict):
        raise KeyError(f"Nó '{node_id}' não tem 'inputs' (dict).")
    if "text" not in inputs:
        raise KeyError(
            f"Nó '{node_id}' não tem inputs['text'] (esperado CLIPTextEncode típico)."
        )
    inputs["text"] = prompt


def check_server(base: str | None = None, timeout: float = 3.0) -> None:
    base = (base or comfy_base_url()).rstrip("/")
    url = f"{base}/system_stats"
    try:
        r = requests.get(url, timeout=timeout)
        r.raise_for_status()
    except requests.exceptions.RequestException as e:
        raise ConnectionError(
            f"ComfyUI não respondeu em {base}. Inicie o servidor ComfyUI. Erro: {e}"
        ) from e


def queue_prompt(
    workflow: dict[str, Any],
    client_id: str,
    base: str | None = None,
) -> str:
    base = (base or comfy_base_url()).rstrip("/")
    body = {"prompt": workflow, "client_id": client_id}
    url = f"{base}/prompt"
    try:
        r = requests.post(url, json=body, timeout=120)
        r.raise_for_status()
    except requests.exceptions.RequestException as e:
        raise RuntimeError(f"Falha no POST {url}: {e}") from e
    resp = r.json()
    if resp.get("node_errors"):
        raise RuntimeError(f"Erros de nó reportados pelo ComfyUI: {resp['node_errors']}")
    prompt_id = resp.get("prompt_id")
    if not prompt_id:
        raise RuntimeError(f"Resposta inesperada sem prompt_id: {resp}")
    return str(prompt_id)


async def wait_execution_websocket(
    client_id: str,
    timeout_sec: float,
    base: str | None = None,
) -> None:
    base = (base or comfy_base_url()).rstrip("/")
    host = base.split("://", 1)[-1]
    if "/" in host:
        host = host.split("/", 1)[0]
    ws_scheme = "wss" if base.startswith("https") else "ws"
    uri = f"{ws_scheme}://{host}/ws?clientId={client_id}"
    try:
        async with websockets.connect(uri, max_size=None) as ws:
            loop = asyncio.get_running_loop()
            deadline = loop.time() + timeout_sec
            while True:
                remaining = deadline - loop.time()
                if remaining <= 0:
                    raise TimeoutError(f"Timeout ({timeout_sec}s) aguardando o WebSocket.")
                raw = await asyncio.wait_for(ws.recv(), timeout=min(remaining, 60.0))
                if isinstance(raw, (bytes, bytearray)):
                    raw = raw.decode("utf-8", errors="replace")
                if not isinstance(raw, str):
                    continue
                try:
                    msg = json.loads(raw)
                except json.JSONDecodeError:
                    continue
                mtype = msg.get("type")
                if mtype == "execution_error":
                    raise RuntimeError(f"ComfyUI execution_error: {msg}")
                if mtype == "executing":
                    data = msg.get("data") or {}
                    if data.get("node") is None:
                        return
    except websockets.exceptions.WebSocketException as e:
        raise ConnectionError(f"WebSocket falhou ({uri}): {e}") from e


def wait_execution_history(
    prompt_id: str,
    timeout_sec: float,
    poll_interval: float,
    base: str | None = None,
) -> dict[str, Any]:
    base = (base or comfy_base_url()).rstrip("/")
    url = f"{base}/history"
    start = time.monotonic()
    while time.monotonic() - start < timeout_sec:
        try:
            r = requests.get(url, timeout=20)
            if r.status_code != 200:
                time.sleep(poll_interval)
                continue
            full = r.json()
            if isinstance(full, dict) and prompt_id in full:
                return full[prompt_id]
        except requests.exceptions.RequestException:
            pass
        time.sleep(poll_interval)
    raise TimeoutError(
        f"Histórico não contém prompt_id={prompt_id} após {timeout_sec}s."
    )


def run_ws_wait(client_id: str, timeout: float, base: str | None = None) -> None:
    asyncio.run(wait_execution_websocket(client_id, timeout, base))


def slugify_prompt(text: str, max_len: int = 48) -> str:
    t = text.strip().lower()
    t = re.sub(r"[^\w\s-]", "", t, flags=re.UNICODE)
    t = re.sub(r"[-\s]+", "-", t).strip("-")
    return (t[:max_len] if t else "lore").rstrip("-")


def newest_png(directory: Path) -> Path:
    if not directory.is_dir():
        raise FileNotFoundError(f"Pasta de saída inexistente: {directory}")
    candidates = [p for p in directory.rglob("*.png") if p.is_file()]
    if not candidates:
        raise FileNotFoundError(f"Nenhum .png encontrado em {directory}")
    return max(candidates, key=lambda p: p.stat().st_mtime)


def move_latest_image(
    prompt: str,
    assets_dir: Path,
    output_dir: Path | None = None,
) -> Path:
    output_dir = output_dir or comfy_output_dir()
    assets_dir.mkdir(parents=True, exist_ok=True)
    src = newest_png(output_dir)
    ts = datetime.now(timezone.utc).strftime("%Y%m%d-%H%M%S")
    slug = slugify_prompt(prompt)
    dest = assets_dir / f"{slug}_{ts}.png"
    if dest.exists():
        dest = assets_dir / f"{slug}_{ts}_{uuid.uuid4().hex[:6]}.png"
    shutil.move(str(src), str(dest))
    return dest
