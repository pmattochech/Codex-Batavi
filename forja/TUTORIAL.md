# Tutorial — from a fresh ComfyUI install to your first `batavi-img generate`

This guide assumes you **just installed ComfyUI** on Nobara (AMD GPU) and that the **Codex-Batavi** repo is already on disk with:

- `codex-batavi/` — lore Markdown and `lore-images/`
- `forja/` — this CLI (`batavi-img`)
- `scripts/` — codex maintenance (optional for images)

---

## 1. Verify the ComfyUI install

1. Locate the ComfyUI folder. The usual case is **`~/ComfyUI/`** with **`main.py`** at that root.
2. If you installed elsewhere, note the path — you will use **`FORJA_COMFY_HOME`** or **`batavi-img serve --comfy-home ...`**.

**Quick test (without the forja CLI yet):** use the **same** conda env where you installed torch + ComfyUI’s `pip install -r requirements.txt`:

```bash
conda activate forja_batavi
cd ~/ComfyUI
python main.py
```

Open the browser at **`http://127.0.0.1:8188`** (or the port the terminal prints). If the graph loads, the base install is fine. **Ctrl+C** in the terminal to stop.

> **AMD (RDNA3):** follow ComfyUI/PyTorch docs for Linux with ROCm (or whatever stack you chose). If `python main.py` fails on GPU, fix that **before** relying on `batavi-img generate`.

---

## 2. Single Python environment (recommended)

For **`serve`** and **`generate`** to behave predictably, prefer **one** conda/venv where:

- **ComfyUI** dependencies live;
- you install **`batavi-forja`** (`pip install -e .`).

Example with conda **`forja_batavi`**:

```bash
conda activate forja_batavi
cd ~/Codex-Batavi/forja
pip install -e .
```

Confirm:

```bash
batavi-img --version
```

If ComfyUI is **not** in the same environment, point at another interpreter:

```bash
export FORJA_COMFY_PYTHON=/path/to/python/that/runs/ComfyUI
```

---

## 3. Optional variables (if you do not use default paths)

```bash
export FORJA_COMFY_HOME=~/ComfyUI              # folder with main.py
export FORJA_COMFY_URL=http://127.0.0.1:8188   # API URL
export FORJA_COMFY_OUTPUT=~/ComfyUI/output     # image output
export FORJA_ASSETS_DIR=~/Codex-Batavi/codex-batavi/lore-images
```

(You can add permanent `export` lines to `~/.bashrc` if you want.)

---

## 4. Start ComfyUI with the CLI (optional but handy)

In a terminal with the right environment:

```bash
conda activate forja_batavi
batavi-img serve --port 8188 --listen 127.0.0.1
```

If `serve` runs in another terminal **without** `conda activate`, set interpreter and ComfyUI home:

```bash
export FORJA_COMFY_PYTHON="$HOME/miniconda3/envs/forja_batavi/bin/python"
export FORJA_COMFY_HOME="$HOME/ComfyUI"
batavi-img serve --port 8188 --listen 127.0.0.1
```

Leave this terminal open. In **another** terminal:

```bash
conda activate forja_batavi
batavi-img check
```

It should report that ComfyUI is reachable.

**Alternative:** keep starting with `cd ~/ComfyUI && python main.py` — `generate` only needs the server **running**.

**“Stuck” terminal (foreground process):** while ComfyUI runs, that shell has no prompt. Options:

- **`batavi-img serve --detach`** — background, frees the terminal (log at `~/ComfyUI/batavi-forja-comfyui.log` or `--log-file`).
- **Two terminals** — one only for ComfyUI (`python main.py`); another with `conda activate` for `batavi-img check` / `generate`.
- **`tmux` / `screen`** — one session for the server, one for commands.
- **`nohup python main.py >>~/ComfyUI/comfyui.log 2>&1 &`** — manual background.

---

## 5. Prepare the workflow for the API

1. In the ComfyUI web UI, build your pipeline (checkpoint, prompts, Save Image, etc.) until you can generate an image **manually** once (stable graph).
2. **Export in API format** (e.g. *Save (API Format)* / *Export API* — wording depends on build).
3. Save the JSON under:

   **`~/Codex-Batavi/forja/workflows/`**

   Minimum name to start: **`workflow_api.json`** — presets **`default`**, **`portrait`**, **`scene`**, and **`alaric_armor`** use it by default. Later you can duplicate the file (e.g. `scene_wide.api.json`) and point a single preset at it.

4. Open the JSON and find the **`CLIPTextEncode`** node for the prompt the CLI should replace. The key is a stringified number, e.g. **`"6"`**.  
   - If **`presets.toml`** has `prompt_node_id = ""`, the CLI uses the **first** `CLIPTextEncode` with `inputs.text` (watch out if you have separate positive and negative nodes).

---

## 6. Tune `presets.toml`

File: **`forja/presets.toml`**

- **`workflow`** — path **relative to the `forja/` folder** (e.g. `workflows/workflow_api.json`).
- **`prompt_node_id`** — text node ID, or empty for auto-detection.

Preset **`alaric_armor`** uses the same file as **`default`**: **`workflows/workflow_api.json`**. When you have a graph just for Alaric, duplicate the JSON and update `presets.toml`.

```bash
batavi-img presets
```

You should see presets and configured files.

### 6.1 Prompt templates (characters)

Under **`forja/templates/prompts/`** there are **`.toml`** files with `positive_prefix` / `positive_suffix` / `negative` (the last is only suggested in the terminal).

```bash
batavi-img templates
```

See **`templates/prompts/README.md`**. Minimal Alaric armor example:

```bash
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "extra scene detail you want"
```

---

## 7. First CLI generation

With ComfyUI **running** and the conda env active:

```bash
conda activate forja_batavi
batavi-img generate --preset default -m "grimdark, space marine, gothic, rain"
```

Short flow: inject text into the node → **POST** `/prompt` → wait (WebSocket + history) → take the newest `.png` in **`~/ComfyUI/output`** → rename and move to **`codex-batavi/lore-images/`** (or `FORJA_ASSETS_DIR`).

---

## 8. Typical session from here on

1. `conda activate forja_batavi`
2. `batavi-img serve` (or your usual method)
3. In another terminal: `batavi-img check`
4. `batavi-img generate --preset default -m "..."` (or `portrait` / `scene` / `--workflow` + `--node-id`)

---

## 9. Roadmap: reference image (Alaric)

Long-term goal: align the local pipeline with the **reference look** (full body, crimson helm, asymmetric pelts, siege scene). Revisit this section when you add Refiner, LoRA, or IP-Adapter in ComfyUI.

| Phase | What | Notes |
|------|------|--------|
| **0** | Baseline | One fixed `workflow_api.json`, same checkpoint, reproducible `batavi-img generate`; negative prompt anti-monochrome (see `workflows/workflow_api.json` node 7). |
| **1** | Explicit target | Save the model PNG with a stable name (e.g. copy to `codex-batavi/lore-images/reference-alaric-model.png`) and a mental checklist (pose, wolf sides, sword, scene). |
| **2** | Text only | Template **`alaric_reference_fullbody`** + multiple seeds; measure checkpoint ceiling before extra nodes. |
| **3** | Model stack | SDXL Refiner in the graph; optionally another checkpoint or a LoRA — **one change at a time**. |
| **4** | Visual anchor | IP-Adapter (or ControlNet pose/depth) from the reference when text + model are not enough. |
| **5** | Finish | Upscale finalists; light color tweaks outside if needed. |
| **6** | Freeze | Document winning workflow + checkpoint + weights in the repo. |

**Base command (text only):**

```bash
conda activate forja_batavi
batavi-img generate --preset alaric_armor --template alaric_reference_fullbody \
  -m "slight wind on cape, more embers"
```

**Exploring seeds:** `workflow_api.json` may fix `seed` in KSampler; in ComfyUI change seed between runs or re-export with random / manual seed — the CLI does not expose `--seed` yet (future).

More template detail: `templates/prompts/README.md` and `alaric_reference_fullbody.toml` (header with viewer left/right conventions).

---

## 10. Supporting docs

| File | Contents |
|------|----------|
| [CHEATSHEET.md](CHEATSHEET.md) | Copy-paste commands |
| [README.md](README.md) | Full reference and tables |
| `batavi-img --help` / `batavi-img generate --help` | Built-in help |

---

## 11. Common issues (post-install)

| Situation | What to do |
|-----------|------------|
| `serve` cannot find `main.py` | Fix `FORJA_COMFY_HOME` or `--comfy-home` |
| `check` fails | Server not started or wrong port/URL (`--url` / `FORJA_COMFY_URL`) |
| Error queueing prompt | Invalid API JSON or wrong node — `prompt_node_id` / `--node-id` |
| Wrong PNG or no move | Another generation in parallel in the same `output/`; raise `--settle`; explicit `--comfy-output` / `--assets-dir` |
| Split dependencies | Unify venv or set `FORJA_COMFY_PYTHON` for `serve` |

---

*Good forging.*
