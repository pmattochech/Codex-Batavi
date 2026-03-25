"""Interface de linha de comando: batavi-img."""

from __future__ import annotations

import argparse
import os
import subprocess
import sys
import tomllib
import uuid
from pathlib import Path

from batavi_forja import __version__
from batavi_forja.config import assets_dir as cfg_assets_dir
from batavi_forja.config import comfy_base_url, comfy_home, comfy_output_dir, forja_root
import time

from batavi_forja.comfy_client import (
    check_server,
    find_first_cliptextencode_node,
    inject_prompt_text,
    load_workflow_file,
    move_latest_image,
    queue_prompt,
    run_ws_wait,
    wait_execution_history,
)


def _load_presets() -> dict:
    path = forja_root() / "presets.toml"
    if not path.is_file():
        return {}
    with path.open("rb") as f:
        data = tomllib.load(f)
    p = data.get("presets")
    return p if isinstance(p, dict) else {}


def _resolve_workflow_path(preset_name: str | None, workflow_arg: Path | None) -> Path:
    root = forja_root()
    if workflow_arg is not None:
        wf = workflow_arg.expanduser()
        if not wf.is_absolute():
            wf = (Path.cwd() / wf).resolve()
        return wf
    if not preset_name:
        raise ValueError("Indique --preset ou --workflow.")
    presets = _load_presets()
    entry = presets.get(preset_name)
    if not isinstance(entry, dict):
        raise KeyError(
            f"Preset desconhecido: {preset_name!r}. Veja presets.toml ou `batavi-img presets`."
        )
    rel = entry.get("workflow")
    if not rel or not isinstance(rel, str):
        raise KeyError(f"Preset {preset_name!r} sem campo 'workflow'.")
    path = (root / rel).resolve()
    return path


def _squash_ws(s: str) -> str:
    return " ".join(s.split())


def _resolve_template_path(raw: str | Path) -> Path:
    p = Path(raw).expanduser()
    if p.is_file():
        return p.resolve()
    c = Path.cwd() / p
    if c.is_file():
        return c.resolve()
    bundled = forja_root() / "templates" / "prompts" / p
    if bundled.is_file():
        return bundled.resolve()
    if not p.suffix:
        bundled_toml = forja_root() / "templates" / "prompts" / f"{p}.toml"
        if bundled_toml.is_file():
            return bundled_toml.resolve()
    raise FileNotFoundError(
        f"Template não encontrado: {raw!r} (cwd, caminho absoluto ou forja/templates/prompts/)"
    )


def _load_prompt_template(path: Path) -> dict:
    with path.open("rb") as f:
        data = tomllib.load(f)
    if not isinstance(data, dict):
        raise ValueError(f"Template inválido (esperado TOML com chaves no topo): {path}")
    return data


def _apply_prompt_template(tpl: dict, user_fragment: str) -> str:
    """Junta positive_prefix + texto do usuário + positive_suffix (vírgulas entre blocos)."""
    pre = _squash_ws(str(tpl.get("positive_prefix", "") or ""))
    suf = _squash_ws(str(tpl.get("positive_suffix", "") or ""))
    mid = _squash_ws(user_fragment.strip())
    parts = [x for x in (pre, mid, suf) if x]
    return ", ".join(parts)


def _print_negative_suggestion(tpl: dict) -> None:
    neg = tpl.get("negative")
    if isinstance(neg, str) and neg.strip():
        print(
            "[info] Negative sugerido (nó CLIP negativo no Comfy, se o workflow tiver):",
            file=sys.stderr,
        )
        print(_squash_ws(neg), file=sys.stderr)


def _preset_node_id(preset_name: str | None) -> str | None:
    if not preset_name:
        return None
    presets = _load_presets()
    entry = presets.get(preset_name)
    if not isinstance(entry, dict):
        return None
    raw = entry.get("prompt_node_id")
    if raw is None:
        return None
    s = str(raw).strip()
    return s if s else None


def cmd_check(args: argparse.Namespace) -> int:
    base = args.url or comfy_base_url()
    try:
        check_server(base, timeout=args.timeout)
    except ConnectionError as e:
        print(e, file=sys.stderr)
        return 1
    print(f"[ok] ComfyUI responde em {base}")
    return 0


def cmd_serve(args: argparse.Namespace) -> int:
    """Inicia ComfyUI com python main.py na pasta do clone."""
    root = Path(args.comfy_home).expanduser().resolve() if args.comfy_home else comfy_home()
    main_py = root / "main.py"
    if not main_py.is_file():
        print(
            f"main.py não encontrado em {root}. Ajuste --comfy-home ou a variável FORJA_COMFY_HOME.",
            file=sys.stderr,
        )
        return 1

    py_exe = os.environ.get("FORJA_COMFY_PYTHON", sys.executable)
    cmd: list[str] = [py_exe, str(main_py)]
    if args.port is not None:
        cmd.extend(["--port", str(args.port)])
    if args.listen is not None:
        cmd.extend(["--listen", args.listen])
    extra = list(args.extra or [])
    if extra and extra[0] == "--":
        extra = extra[1:]
    cmd.extend(extra)

    if args.detach:
        log_path = args.log_file
        if log_path is None:
            log_path = root / "batavi-forja-comfyui.log"
        else:
            log_path = Path(log_path).expanduser().resolve()
        log_path.parent.mkdir(parents=True, exist_ok=True)
        with open(log_path, "ab", buffering=0) as logf:
            proc = subprocess.Popen(
                cmd,
                cwd=str(root),
                stdout=logf,
                stderr=subprocess.STDOUT,
                start_new_session=True,
            )
        print(f"[ok] ComfyUI em segundo plano (PID {proc.pid}). Log: {log_path}")
        return 0

    print(f"[info] ComfyUI: {' '.join(cmd)}")
    print(f"[info] cwd={root} (Ctrl+C para parar)\n")
    try:
        return subprocess.call(cmd, cwd=str(root))
    except KeyboardInterrupt:
        print("\n[info] Interrompido.", file=sys.stderr)
        return 130


def cmd_presets(_args: argparse.Namespace) -> int:
    presets = _load_presets()
    if not presets:
        print("Nenhum preset em presets.toml (ou arquivo ausente).", file=sys.stderr)
        return 1
    for name in sorted(presets.keys()):
        entry = presets[name]
        wf = entry.get("workflow", "?") if isinstance(entry, dict) else "?"
        nid = entry.get("prompt_node_id", "") if isinstance(entry, dict) else ""
        print(f"  {name}: workflow={wf!r} prompt_node_id={nid!r}")
    return 0


def cmd_templates(_args: argparse.Namespace) -> int:
    d = forja_root() / "templates" / "prompts"
    if not d.is_dir():
        print(f"Pasta inexistente: {d}", file=sys.stderr)
        return 1
    files = sorted(d.glob("*.toml"))
    if not files:
        print(f"Nenhum .toml em {d}", file=sys.stderr)
        return 1
    for f in files:
        title = ""
        try:
            t = _load_prompt_template(f)
            title = str(t.get("character", "") or "").strip()
        except OSError:
            pass
        extra = f" — {title}" if title else ""
        print(f"  {f.name}{extra}")
    return 0


def cmd_generate(args: argparse.Namespace) -> int:
    if args.template:
        try:
            tpath = _resolve_template_path(args.template)
            tpl = _load_prompt_template(tpath)
        except (OSError, ValueError) as e:
            print(e, file=sys.stderr)
            return 1
        user_part = ""
        if args.prompt_file:
            user_part = args.prompt_file.read_text(encoding="utf-8").strip()
        elif args.message:
            user_part = args.message.strip()
        prompt = _apply_prompt_template(tpl, user_part)
        if not prompt.strip():
            print(
                "Prompt vazio: o template precisa ter positive_prefix/suffix ou use -m / --prompt-file.",
                file=sys.stderr,
            )
            return 2
        print(f"[info] Template: {tpath.name}", file=sys.stderr)
        _print_negative_suggestion(tpl)
    elif args.prompt_file:
        prompt = args.prompt_file.read_text(encoding="utf-8").strip()
    elif args.message:
        prompt = args.message.strip()
    else:
        print(
            "Use -m/--message, --prompt-file ou --template (com texto opcional).",
            file=sys.stderr,
        )
        return 2

    try:
        wf_path = _resolve_workflow_path(args.preset, args.workflow)
    except (KeyError, ValueError) as e:
        print(e, file=sys.stderr)
        return 1

    try:
        workflow = load_workflow_file(wf_path)
    except FileNotFoundError as e:
        print(e, file=sys.stderr)
        expected = forja_root() / "workflows" / "workflow_api.json"
        print(
            "\nDica: falta o JSON em formato API. No ComfyUI: Save (API Format) e salve como:\n"
            f"  {expected}\n"
            "Depois execute o comando de novo, ou use: --workflow /caminho/absoluto/para/o.api.json\n",
            file=sys.stderr,
        )
        return 1
    except (OSError, ValueError) as e:
        print(e, file=sys.stderr)
        return 1

    node_id = args.node_id or _preset_node_id(args.preset)
    if not node_id:
        node_id = find_first_cliptextencode_node(workflow)
        if node_id is None:
            print(
                "Nenhum CLIPTextEncode encontrado. Defina prompt_node_id no preset ou --node-id.",
                file=sys.stderr,
            )
            return 1
        print(f"[info] Autodetecção: nó de texto = {node_id!r}")

    try:
        inject_prompt_text(workflow, node_id, prompt)
    except (KeyError, TypeError) as e:
        print(e, file=sys.stderr)
        return 1

    base = args.url or comfy_base_url()
    output_dir = (
        Path(args.comfy_output).expanduser().resolve()
        if args.comfy_output
        else comfy_output_dir()
    )
    dest_assets = (
        Path(args.assets_dir).expanduser().resolve()
        if args.assets_dir
        else cfg_assets_dir()
    )

    try:
        check_server(base, timeout=min(10.0, args.timeout))
    except ConnectionError as e:
        print(e, file=sys.stderr)
        return 1

    client_id = str(uuid.uuid4())
    try:
        prompt_id = queue_prompt(workflow, client_id, base)
    except RuntimeError as e:
        print(e, file=sys.stderr)
        return 1

    print(f"[info] prompt_id={prompt_id} client_id={client_id}")

    try:
        run_ws_wait(client_id, args.timeout, base)
    except (TimeoutError, RuntimeError, ConnectionError) as e:
        print(f"[aviso] WebSocket: {e}", file=sys.stderr)
        print("[info] Confirmando via /history …", file=sys.stderr)

    try:
        wait_execution_history(prompt_id, args.timeout, 0.75, base)
    except TimeoutError as e:
        print(e, file=sys.stderr)
        return 1

    if args.poll_fallback:
        try:
            wait_execution_history(prompt_id, min(120.0, args.timeout), 0.5, base)
        except TimeoutError:
            pass

    time.sleep(args.settle)

    if args.skip_move:
        print("[ok] Geração concluída (sem mover arquivo).")
        return 0

    try:
        dest = move_latest_image(prompt, dest_assets, output_dir)
    except FileNotFoundError as e:
        print(f"Pós-processamento: {e}", file=sys.stderr)
        return 1

    print(f"[ok] Imagem: {dest}")
    return 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        prog="batavi-img",
        description="CLI para ComfyUI — lore Cohors Batavorum",
    )
    p.add_argument("--version", action="version", version=f"%(prog)s {__version__}")
    sub = p.add_subparsers(dest="command", required=True)

    pc = sub.add_parser("check", help="Ver se o ComfyUI responde")
    pc.add_argument("--url", default=None, help="URL base (padrão: env ou 127.0.0.1:8188)")
    pc.add_argument("--timeout", type=float, default=5.0)
    pc.set_defaults(func=cmd_check)

    pp = sub.add_parser("presets", help="Listar presets de presets.toml")
    pp.set_defaults(func=cmd_presets)

    pt = sub.add_parser(
        "templates",
        help="Listar templates de prompt em templates/prompts/*.toml",
    )
    pt.set_defaults(func=cmd_templates)

    ps = sub.add_parser(
        "serve",
        help="Iniciar o servidor ComfyUI (executa main.py com o Python configurado)",
    )
    ps.add_argument(
        "--comfy-home",
        type=str,
        default=None,
        help="Pasta do ComfyUI (padrão: ~/ComfyUI ou FORJA_COMFY_HOME)",
    )
    ps.add_argument(
        "--detach",
        action="store_true",
        help="Segundo plano; saída vai para --log-file ou <ComfyUI>/batavi-forja-comfyui.log",
    )
    ps.add_argument(
        "--log-file",
        type=Path,
        default=None,
        help="Com --detach: arquivo de log (append)",
    )
    ps.add_argument(
        "--port",
        type=int,
        default=None,
        help="Repasse: --port do ComfyUI (ex.: 8188)",
    )
    ps.add_argument(
        "--listen",
        type=str,
        default=None,
        help='Repasse: --listen do ComfyUI (ex.: 127.0.0.1 ou 0.0.0.0)',
    )
    ps.add_argument(
        "extra",
        nargs=argparse.REMAINDER,
        help="Argumentos extra para o main.py (ex.: serve -- --preview-method auto)",
    )
    ps.set_defaults(func=cmd_serve)

    pg = sub.add_parser("generate", help="Enfileirar prompt e salvar PNG (codex-batavi/imagens-lore por padrão)")
    pg.add_argument("--preset", type=str, default=None, help="Nome do preset (presets.toml)")
    pg.add_argument(
        "--workflow",
        type=Path,
        default=None,
        help="Caminho para workflow API JSON (ignora preset)",
    )
    pg.add_argument("-m", "--message", type=str, default=None, help="Texto do prompt (ou fragmento com --template)")
    pg.add_argument("--prompt-file", type=Path, default=None, help="Arquivo UTF-8 com o prompt")
    pg.add_argument(
        "--template",
        type=str,
        default=None,
        metavar="ARQUIVO",
        help="TOML em templates/prompts/ ou caminho: junta positive_prefix + (-m|arquivo) + positive_suffix",
    )
    pg.add_argument("--node-id", type=str, default=None, help="ID do nó CLIPTextEncode")
    pg.add_argument("--url", default=None, help="URL base do ComfyUI")
    pg.add_argument("--timeout", type=float, default=900.0)
    pg.add_argument("--skip-move", action="store_true", help="Não mover PNG para o repo")
    pg.add_argument("--poll-fallback", action="store_true", help="Confirmação extra via /history")
    pg.add_argument(
        "--comfy-output",
        type=str,
        default=None,
        help="Pasta output do ComfyUI (padrão: ~/ComfyUI/output ou FORJA_COMFY_OUTPUT)",
    )
    pg.add_argument(
        "--assets-dir",
        type=str,
        default=None,
        help="Destino das PNG (padrão: FORJA_ASSETS_DIR ou ~/Codex-Batavi/codex-batavi/imagens-lore)",
    )
    pg.add_argument(
        "--settle",
        type=float,
        default=0.75,
        help="Segundos de espera após conclusão antes de procurar o PNG",
    )
    pg.set_defaults(func=cmd_generate)

    return p


def main() -> None:
    parser = build_parser()
    args = parser.parse_args()
    raise SystemExit(args.func(args))


if __name__ == "__main__":
    main()
