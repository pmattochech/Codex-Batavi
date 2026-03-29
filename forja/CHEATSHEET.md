# Cheat sheet — `batavi-img`

Quick reference. **Step-by-step from a fresh ComfyUI install:** [TUTORIAL.md](TUTORIAL.md) · [README.md](README.md).

---

## Install (once)

```bash
conda activate forja_batavi    # or another venv with Python 3.11+
cd ~/Codex-Batavi/forja
pip install -e .
```

---

## Before you generate

1. **Start ComfyUI** — `batavi-img serve` (or your usual script).
2. Workflow JSON in **API Format** inside `forja/workflows/` (e.g. `workflow_api.json`).
3. `batavi-img presets` — verify names and files in `presets.toml`.

---

## Start ComfyUI (`serve`)

Uses the current Python (`sys.executable`) or `FORJA_COMFY_PYTHON`. Default folder: **`~/ComfyUI`** or **`FORJA_COMFY_HOME`**.

**Nobara + Miniconda (env `forja_batavi`):** activate the env before `serve`, *or* export the Python path:

```bash
conda activate forja_batavi
# optional if another shell does not have the env on PATH:
# export FORJA_COMFY_PYTHON="$HOME/miniconda3/envs/forja_batavi/bin/python"
# export FORJA_COMFY_HOME="$HOME/ComfyUI"
```

```bash
# Foreground terminal (Ctrl+C to stop)
batavi-img serve

batavi-img serve --port 8188 --listen 127.0.0.1
batavi-img serve --comfy-home ~/ComfyUI

# Background (PID + log path) — frees the terminal; use another terminal for conda/batavi-img
batavi-img serve --detach --port 8188
batavi-img serve --detach --log-file ~/ComfyUI/comfyui.log

# ComfyUI’s own flags after --
batavi-img serve -- --lowvram
```

---

## Basic commands

```bash
batavi-img --version
batavi-img --help
batavi-img serve --help
batavi-img check
batavi-img presets
batavi-img templates
```

---

## Character templates (`--template`)

Files in `forja/templates/prompts/*.toml`. The CLI concatenates `positive_prefix` + your `-m` (or file) + `positive_suffix`. The `negative` field is only printed in the terminal for you to paste into ComfyUI.

```bash
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "lightning, iron battlement"
```

Preset `alaric_armor` uses the same file as `default`: `workflows/workflow_api.json` (export once from ComfyUI).

---

## Generate an image (`generate`)

Rule: use **`--preset`** *or* **`--workflow`**, and always **`-m`** *or* **`--prompt-file`**.

### By preset (`presets.toml`)

Presets `default`, `portrait`, `scene`, `alaric_armor`, `grimdark_character` share **`workflows/workflow_api.json`** until you edit `presets.toml`.

```bash
batavi-img generate --preset default  -m "your prompt here"
batavi-img generate --preset portrait -m "your prompt here"
batavi-img generate --preset scene    -m "your prompt here"
```

### By prompt file

```bash
batavi-img generate --preset default --prompt-file ./prompt.txt
```

### Manual workflow JSON

Path is **relative to the current directory** (not to `forja/`, unless your cwd is `forja/`).

```bash
cd ~/Codex-Batavi/forja
batavi-img generate --workflow ./workflows/my.api.json --node-id "12" -m "..."
```

`--node-id` = `CLIPTextEncode` node key in the JSON (`inputs.text`).

### Text node (optional)

If you omit `--node-id` and the preset has empty `prompt_node_id`, the first `CLIPTextEncode` with `text` is used.

```bash
batavi-img generate --preset default --node-id "7" -m "..."
```

---

## Useful flags

| Flag | Effect |
|------|--------|
| `--skip-move` | Do not move the PNG to `lore-images` (ComfyUI only). |
| `--poll-fallback` | Confirm again via `GET /history` after WebSocket. |
| `--timeout N` | Max wait in seconds (`generate` default: 900). |
| `--url URL` | ComfyUI base (default: env `FORJA_COMFY_URL` or `http://127.0.0.1:8188`). |
| `--comfy-output DIR` | ComfyUI output folder (default: `~/ComfyUI/output` or `FORJA_COMFY_OUTPUT`). |
| `--assets-dir DIR` | Final PNG destination (default: `~/Codex-Batavi/codex-batavi/lore-images` or `FORJA_ASSETS_DIR`). |
| `--settle N` | Seconds to wait after the job finishes before picking the newest `.png` (default: 0.75). |

Combined example:

```bash
batavi-img generate --preset default -m "test" \
  --timeout 1200 \
  --comfy-output ~/ComfyUI/output \
  --assets-dir ~/Codex-Batavi/codex-batavi/lore-images \
  --poll-fallback
```

---

## Environment variables

```bash
export FORJA_COMFY_HOME=~/ComfyUI
export FORJA_COMFY_PYTHON=~/miniconda3/envs/forja_batavi/bin/python
export FORJA_COMFY_URL=http://127.0.0.1:8188
export FORJA_COMFY_OUTPUT=~/ComfyUI/output
export FORJA_ASSETS_DIR=~/Codex-Batavi/codex-batavi/lore-images
```

---

## Help per subcommand

```bash
batavi-img generate --help
batavi-img check --help
```

---

## Where images end up

By default, the newest PNG in `~/ComfyUI/output` is renamed (prompt slug + UTC date) and moved to:

`~/Codex-Batavi/codex-batavi/lore-images/`

(or whatever you set in `FORJA_ASSETS_DIR` / `--assets-dir`.)
