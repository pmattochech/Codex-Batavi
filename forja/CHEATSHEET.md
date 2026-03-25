# Cheat sheet — `batavi-img`

Referência rápida. **Passo a passo desde o ComfyUI novo:** [TUTORIAL.md](TUTORIAL.md) · [README.md](README.md).

---

## Instalação (uma vez)

```bash
conda activate forja_batavi    # ou outro venv com Python 3.11+
cd ~/Codex-Batavi/forja
pip install -e .
```

---

## Antes de gerar

1. **Subir o ComfyUI** — `batavi-img serve` (ou seu script habitual).
2. JSON do workflow em **API Format** dentro de `forja/workflows/` (ex.: `workflow_api.json`).
3. `batavi-img presets` — confere nomes e arquivos em `presets.toml`.

---

## Iniciar ComfyUI (`serve`)

Usa o Python atual (`sys.executable`) ou `FORJA_COMFY_PYTHON`. Pasta padrão: **`~/ComfyUI`** ou **`FORJA_COMFY_HOME`**.

**Nobara + Miniconda (env `forja_batavi`):** ative o env antes do `serve`, *ou* exporte o Python:

```bash
conda activate forja_batavi
# opcional se outro shell não tiver o env no PATH:
# export FORJA_COMFY_PYTHON="$HOME/miniconda3/envs/forja_batavi/bin/python"
# export FORJA_COMFY_HOME="$HOME/ComfyUI"
```

```bash
# Terminal em primeiro plano (Ctrl+C para parar)
batavi-img serve

batavi-img serve --port 8188 --listen 127.0.0.1
batavi-img serve --comfy-home ~/ComfyUI

# Segundo plano (PID + caminho do log) — liberta o terminal; use outro terminal para conda/batavi-img
batavi-img serve --detach --port 8188
batavi-img serve --detach --log-file ~/ComfyUI/comfyui.log

# Flags do próprio ComfyUI depois de --
batavi-img serve -- --lowvram
```

---

## Comandos básicos

```bash
batavi-img --version
batavi-img --help
batavi-img serve --help
batavi-img check
batavi-img presets
batavi-img templates
```

---

## Templates de personagem (`--template`)

Arquivos em `forja/templates/prompts/*.toml`. A CLI junta `positive_prefix` + seu `-m` (ou arquivo) + `positive_suffix`. O campo `negative` só aparece no terminal para você copiar ao Comfy.

```bash
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "raio, amurada de ferro"
```

Preset `alaric_armor` usa o mesmo arquivo que `default`: `workflows/workflow_api.json` (exporte uma vez do ComfyUI).

---

## Gerar imagem (`generate`)

Regra: use **`--preset`** *ou* **`--workflow`**, e sempre **`-m`** *ou* **`--prompt-file`**.

### Por preset (`presets.toml`)

Presets `default`, `portrait`, `scene`, `alaric_armor`, `grimdark_character` compartilham **`workflows/workflow_api.json`** até você editar `presets.toml`.

```bash
batavi-img generate --preset default  -m "seu prompt aqui"
batavi-img generate --preset portrait -m "seu prompt aqui"
batavi-img generate --preset scene    -m "seu prompt aqui"
```

### Por arquivo de prompt

```bash
batavi-img generate --preset default --prompt-file ./prompt.txt
```

### Workflow JSON manual

Caminho **relativo ao diretório atual** (não ao `forja/`, a menos que você esteja em `forja/`).

```bash
cd ~/Codex-Batavi/forja
batavi-img generate --workflow ./workflows/meu.api.json --node-id "12" -m "..."
```

`--node-id` = chave do nó `CLIPTextEncode` no JSON (campo `inputs.text`).

### Nó de texto (opcional)

Se não passar `--node-id` e o preset tiver `prompt_node_id` vazio, o primeiro `CLIPTextEncode` com `text` é usado.

```bash
batavi-img generate --preset default --node-id "7" -m "..."
```

---

## Flags úteis

| Flag | O que faz |
|------|-----------|
| `--skip-move` | Não move a PNG para `imagens-lore` (só gera no ComfyUI). |
| `--poll-fallback` | Confirma de novo via `GET /history` após o WebSocket. |
| `--timeout N` | Tempo máximo de espera em segundos (padrão em `generate`: 900). |
| `--url URL` | Base do ComfyUI (padrão: env `FORJA_COMFY_URL` ou `http://127.0.0.1:8188`). |
| `--comfy-output DIR` | Pasta de saída do ComfyUI (padrão: `~/ComfyUI/output` ou `FORJA_COMFY_OUTPUT`). |
| `--assets-dir DIR` | Onde salvar a PNG final (padrão: `~/Codex-Batavi/codex-batavi/imagens-lore` ou `FORJA_ASSETS_DIR`). |
| `--settle N` | Segundos de espera após o fim do job antes de achar o `.png` mais recente (padrão: 0.75). |

Exemplo combinado:

```bash
batavi-img generate --preset default -m "teste" \
  --timeout 1200 \
  --comfy-output ~/ComfyUI/output \
  --assets-dir ~/Codex-Batavi/codex-batavi/imagens-lore \
  --poll-fallback
```

---

## Variáveis de ambiente

```bash
export FORJA_COMFY_HOME=~/ComfyUI
export FORJA_COMFY_PYTHON=~/miniconda3/envs/forja_batavi/bin/python
export FORJA_COMFY_URL=http://127.0.0.1:8188
export FORJA_COMFY_OUTPUT=~/ComfyUI/output
export FORJA_ASSETS_DIR=~/Codex-Batavi/codex-batavi/imagens-lore
```

---

## Ajuda por subcomando

```bash
batavi-img generate --help
batavi-img check --help
```

---

## Onde as imagens vão parar

Por padrão, a PNG mais nova em `~/ComfyUI/output` é renomeada (slug do prompt + data UTC) e movida para:

`~/Codex-Batavi/codex-batavi/imagens-lore/`

(ou o que você definir em `FORJA_ASSETS_DIR` / `--assets-dir`.)
