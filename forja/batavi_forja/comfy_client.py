"""
HTTP + WebSocket client for ComfyUI.

How to find the text (prompt) node in API JSON
------------------------------------------------
1. Export the workflow in *API Format* from ComfyUI.
2. Each top-level key is a node ID (e.g. "12", "45").
3. Look for `"class_type": "CLIPTextEncode"` (positive or negative prompt).
4. Confirm `"inputs": { "text": "..." }` — that is the field the CLI replaces.
5. Pass that ID as --node-id or in presets.toml as prompt_node_id.
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
        raise FileNotFoundError(f"Workflow not found: {path}")
    with path.open("r", encoding="utf-8") as f:
        data = json.load(f)
    if not isinstance(data, dict):
        raise ValueError("API workflow must be a JSON object (dict of nodes).")
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
        raise KeyError(f"Node '{node_id}' does not exist in workflow.")
    node = workflow[node_id]
    if not isinstance(node, dict):
        raise TypeError(f"Node '{node_id}' is not a JSON object.")
    inputs = node.get("inputs")
    if not isinstance(inputs, dict):
        raise KeyError(f"Node '{node_id}' has no 'inputs' (dict).")
    if "text" not in inputs:
        raise KeyError(
            f"Node '{node_id}' has no inputs['text'] (expected typical CLIPTextEncode)."
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
            f"ComfyUI did not respond at {base}. Start the ComfyUI server. Error: {e}"
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
        raise RuntimeError(f"POST {url} failed: {e}") from e
    resp = r.json()
    if resp.get("node_errors"):
        raise RuntimeError(f"ComfyUI reported node errors: {resp['node_errors']}")
    prompt_id = resp.get("prompt_id")
    if not prompt_id:
        raise RuntimeError(f"Unexpected response without prompt_id: {resp}")
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
                    raise TimeoutError(f"Timeout ({timeout_sec}s) waiting on WebSocket.")
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
        raise ConnectionError(f"WebSocket failed ({uri}): {e}") from e


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
        f"History does not contain prompt_id={prompt_id} after {timeout_sec}s."
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
        raise FileNotFoundError(f"Output directory does not exist: {directory}")
    candidates = [p for p in directory.rglob("*.png") if p.is_file()]
    if not candidates:
        raise FileNotFoundError(f"No .png found under {directory}")
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
