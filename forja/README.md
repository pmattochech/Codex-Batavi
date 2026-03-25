# Batavi Forja — CLI + ComfyUI

Ferramenta de linha de comando para enfileirar gerações no **ComfyUI** local e salvar PNG no repositório de lore.

**Tutorial (ComfyUI recém-instalado → primeira imagem):** [TUTORIAL.md](TUTORIAL.md)  
**Resumo rápido:** [CHEATSHEET.md](CHEATSHEET.md)

## Requisitos

- Python **3.11+**
- ComfyUI rodando (por padrão `http://127.0.0.1:8188`)
- Pasta de saída do ComfyUI: `~/ComfyUI/output/`

## Instalação (ambiente conda `forja_batavi`)

Use **o mesmo** Python onde estão PyTorch (ROCm) e as dependências do ComfyUI:

```bash
conda activate forja_batavi
cd ~/Codex-Batavi/forja    # ou o caminho real do repositório
pip install -e .
```

O comando **`batavi-img`** fica disponível só com esse ambiente ativo (ou com `FORJA_COMFY_PYTHON` apontando para o `python` dele).

## Configuração

Variáveis de ambiente (opcional):

| Variável | Significado |
|----------|-------------|
| `FORJA_COMFY_URL` | URL base (ex.: `http://127.0.0.1:8188`) |
| `FORJA_COMFY_HOME` | Pasta do clone ComfyUI onde está `main.py` (padrão: `~/ComfyUI`) — usado por `serve` |
| `FORJA_COMFY_PYTHON` | Interpretador para `main.py` no `serve` (padrão: o mesmo `python` do `batavi-img`) |
| `FORJA_COMFY_OUTPUT` | Pasta de saída do ComfyUI (padrão: `~/ComfyUI/output`) |
| `FORJA_ASSETS_DIR` | Onde salvar PNG renomeadas (padrão: `~/Codex-Batavi/codex-batavi/imagens-lore`) |

## Workflow (ComfyUI)

1. No ComfyUI: **Save (API Format)** → salve o JSON em `forja/workflows/` (ex.: `workflow_api.json`).
2. Edite `presets.toml` se usar outro nome de arquivo ou nó de texto fixo (`prompt_node_id`).
3. Identifique o nó **CLIPTextEncode** cujo `inputs.text` deve receber o prompt (veja docstring em `batavi_forja/comfy_client.py`).

## Comandos (`batavi-img`)

| Subcomando | Função |
|------------|--------|
| `serve` | Inicia o ComfyUI (`python main.py` em `FORJA_COMFY_HOME` / `~/ComfyUI`). |
| `check` | Testa se o ComfyUI responde (`GET /system_stats`). |
| `presets` | Lista entradas de `presets.toml` (workflow + `prompt_node_id`). |
| `generate` | Enfileira o workflow, aguarda (WebSocket + `/history`), move o PNG mais recente para `imagens-lore` (ou `--assets-dir`). |
| `templates` | Lista arquivos `templates/prompts/*.toml` (personagens / cenários). |

**Global**

```bash
batavi-img --version
batavi-img --help
batavi-img generate --help
batavi-img serve --help
```

**serve** — use o **mesmo** ambiente conda/venv onde o ComfyUI tem dependências instaladas (ou defina `FORJA_COMFY_PYTHON`).

```bash
# Primeiro plano (logs no terminal; Ctrl+C encerra)
batavi-img serve

# Porta e interface (repassados ao main.py do ComfyUI)
batavi-img serve --port 8188 --listen 127.0.0.1

# Outra pasta do clone
batavi-img serve --comfy-home ~/src/ComfyUI

# Segundo plano — log em <ComfyUI>/batavi-forja-comfyui.log (ou --log-file)
batavi-img serve --detach --port 8188

# Argumentos extra do ComfyUI (após --)
batavi-img serve -- --preview-method auto
```

**check**

```bash
batavi-img check
batavi-img check --url http://127.0.0.1:8188 --timeout 8
```

**presets**

```bash
batavi-img presets
```

**templates** — prompts reutilizáveis (ver `templates/prompts/README.md`).

```bash
batavi-img templates
```

**generate** — obrigatório: `--preset` *ou* `--workflow`; e **`-m` / `--prompt-file`**, **ou** `--template` (prefix/suffix no TOML; `-m` opcional como complemento).

**Exemplo Alaric (Castra-Lupus):** preset `alaric_armor` + template `alaric_castra_lupus`:

```bash
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "chuva na amurada, fumo espesso"
```

**Showcase grimdark genérico** (personagem só em `-m`): preset `grimdark_character` + template `grimdark_character_showcase` — ver `templates/prompts/README.md`.

```bash
batavi-img generate --preset grimdark_character --template grimdark_character_showcase \
  -m "tall armored warrior, dramatic pose, industrial gothic backdrop"
```

```bash
# Preset definido em presets.toml (arquivo em workflows/)
batavi-img generate --preset default -m "grimdark, Orestes, chuva ácida"

# Workflow API à mão (caminho relativo ao diretório atual ou absoluto)
batavi-img generate --workflow ./workflows/meu.api.json --node-id "7" -m "retrato, armadura gótica"

# Prompt longo a partir de arquivo
batavi-img generate --preset portrait --prompt-file ./prompt.txt

# Só gerar no ComfyUI, não mover PNG para o repo
batavi-img generate --preset default -m "teste" --skip-move

# Confirmação extra no histórico (útil se o WebSocket falhar)
batavi-img generate --preset default -m "..." --poll-fallback

# Pastas e tempo
batavi-img generate --preset default -m "..." --timeout 1200 \
  --comfy-output ~/ComfyUI/output \
  --assets-dir ~/Codex-Batavi/codex-batavi/imagens-lore \
  --settle 1.5
```

**Variáveis de ambiente** (alternativa a `--url`, `--comfy-output`, `--assets-dir`): ver seção *Configuração* acima.

## Estrutura do pacote

- `batavi_forja/cli.py` — argumentos e orquestração
- `batavi_forja/comfy_client.py` — HTTP, WebSocket, histórico, arquivos
- `batavi_forja/config.py` — URLs e caminhos
- `presets.toml` — preset → workflow + nó
- `templates/prompts/*.toml` — prefixos/sufixos de prompt por personagem
- `workflows/*.json` — workflows exportados do ComfyUI (API)
