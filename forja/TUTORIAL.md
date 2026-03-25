# Tutorial — do ComfyUI recém-instalado ao primeiro `batavi-img generate`

Este guia assume que **você acabou de instalar o ComfyUI** no seu Nobara (GPU AMD) e que o repositório **Codex-Batavi** já está na máquina com a estrutura:

- `codex-batavi/` — lore Markdown e `imagens-lore/`
- `forja/` — esta CLI (`batavi-img`)
- `scripts/` — manutenção do codex (opcional para imagens)

---

## 1. Confirmar a instalação do ComfyUI

1. Localize a pasta do ComfyUI. O mais comum é **`~/ComfyUI/`**, com **`main.py`** na raiz dessa pasta.
2. Se você instalou em outro lugar, anote o caminho — você vai usar **`FORJA_COMFY_HOME`** ou **`batavi-img serve --comfy-home ...`**.

**Teste rápido (sem a CLI forja ainda):** use o **mesmo** conda onde instalou torch + `pip install -r requirements.txt` do ComfyUI:

```bash
conda activate forja_batavi
cd ~/ComfyUI
python main.py
```

Abra o navegador em **`http://127.0.0.1:8188`** (ou a porta que o terminal mostrar). Se o grafo abrir, a instalação base está ok. **Ctrl+C** no terminal para parar.

> **AMD (RDNA3):** siga a documentação do ComfyUI/PyTorch para Linux com ROCm (ou a stack que você escolheu na instalação). Se `python main.py` falhar por GPU, resolva isso **antes** de depender do `batavi-img generate`.

---

## 2. Ambiente Python único (recomendado)

Para **`serve`** e **`generate`** funcionarem sem surpresas, o ideal é **um só ambiente conda/venv** onde:

- estão as dependências do **ComfyUI**;
- você instala o pacote **`batavi-forja`** (`pip install -e .`).

Exemplo com conda **`forja_batavi`**:

```bash
conda activate forja_batavi
cd ~/Codex-Batavi/forja
pip install -e .
```

Confirme:

```bash
batavi-img --version
```

Se o ComfyUI **não** estiver no mesmo ambiente, você pode apontar outro interpretador:

```bash
export FORJA_COMFY_PYTHON=/caminho/para/o/python/que/roda/o/ComfyUI
```

---

## 3. Variáveis opcionais (se você não usa os caminhos padrão)

```bash
export FORJA_COMFY_HOME=~/ComfyUI              # pasta com main.py
export FORJA_COMFY_URL=http://127.0.0.1:8188   # URL da API
export FORJA_COMFY_OUTPUT=~/ComfyUI/output     # saída das imagens
export FORJA_ASSETS_DIR=~/Codex-Batavi/codex-batavi/imagens-lore
```

(Você pode colocar `export` permanentes no `~/.bashrc` se quiser.)

---

## 4. Subir o ComfyUI com a CLI (opcional mas prático)

Num terminal com o ambiente certo:

```bash
conda activate forja_batavi
batavi-img serve --port 8188 --listen 127.0.0.1
```

Se o `serve` rodar noutro terminal **sem** `conda activate`, fixe o interpretador e a pasta do ComfyUI:

```bash
export FORJA_COMFY_PYTHON="$HOME/miniconda3/envs/forja_batavi/bin/python"
export FORJA_COMFY_HOME="$HOME/ComfyUI"
batavi-img serve --port 8188 --listen 127.0.0.1
```

Deixe este terminal aberto. Em **outro** terminal:

```bash
conda activate forja_batavi
batavi-img check
```

Deve indicar que o ComfyUI está acessível.

**Alternativa:** continuar iniciando com `cd ~/ComfyUI && python main.py` — o `generate` só precisa que o servidor esteja **rodando**.

**Terminal “travado” (processo em primeiro plano):** enquanto o ComfyUI corre, esse terminal não volta ao prompt. Opções:

- **`batavi-img serve --detach`** — sobe em segundo plano e liberta o terminal (log em `~/ComfyUI/batavi-forja-comfyui.log` ou `--log-file`).
- **Dois terminais** — um só para o ComfyUI (`python main.py`); outro com `conda activate` para `batavi-img check` / `generate`.
- **`tmux` / `screen`** — uma sessão para o servidor, outra para comandos.
- **`nohup python main.py >>~/ComfyUI/comfyui.log 2>&1 &`** — segundo plano manual.

---

## 5. Preparar o workflow para a API

1. Na interface web do ComfyUI, monte seu pipeline (checkpoint, prompts, Save Image, etc.) até gerar uma imagem **manualmente** uma vez (garanta que está estável).
2. **Exporte em formato API** (opção do tipo *Save (API Format)* / *Export API* — o nome varia conforme a build).
3. Salve o JSON em:

   **`~/Codex-Batavi/forja/workflows/`**

   Nome mínimo para começar: **`workflow_api.json`** — os presets **`default`**, **`portrait`**, **`scene`** e **`alaric_armor`** usam-no por padrão. Mais tarde você pode duplicar o arquivo (ex.: `scene_wide.api.json`) e apontar só um preset para ele.

4. Abra o JSON e identifique o nó **`CLIPTextEncode`** do prompt que você quer substituir pela CLI. A chave é um número em string, ex. **`"6"`**.  
   - Se no **`presets.toml`** você deixar `prompt_node_id = ""`, a CLI usa o **primeiro** `CLIPTextEncode` com `inputs.text` (cuidado se houver positivo e negativo).

---

## 6. Ajustar `presets.toml`

Arquivo: **`forja/presets.toml`**

- **`workflow`** — caminho **relativo à pasta `forja/`** (ex.: `workflows/workflow_api.json`).
- **`prompt_node_id`** — ID do nó de texto, ou vazio para autodetecção.

O preset **`alaric_armor`** usa o mesmo arquivo que **`default`**: **`workflows/workflow_api.json`**. Quando você tiver um grafo só para o Alaric, duplique o JSON e altere `presets.toml`.

```bash
batavi-img presets
```

Deve listar os presets e os arquivos configurados.

### 6.1 Templates de prompt (personagens)

Em **`forja/templates/prompts/`** há arquivos **`.toml`** com blocos `positive_prefix` / `positive_suffix` / `negative` (este último só sugerido no terminal).

```bash
batavi-img templates
```

Ver **`templates/prompts/README.md`**. Exemplo mínimo com Alaric de armadura:

```bash
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "cena que você quer acrescentar"
```

---

## 7. Primeira geração pela CLI

Com o ComfyUI **rodando** e o ambiente conda ativo:

```bash
conda activate forja_batavi
batavi-img generate --preset default -m "grimdark, space marine, gothic, rain"
```

Fluxo resumido: injeta o texto no nó → **POST** `/prompt` → aguarda (WebSocket + histórico) → pega o `.png` mais recente em **`~/ComfyUI/output`** → renomeia e move para **`codex-batavi/imagens-lore/`** (ou `FORJA_ASSETS_DIR`).

---

## 8. Sessão típica daqui para a frente

1. `conda activate forja_batavi`
2. `batavi-img serve` (ou seu método habitual)
3. Em outro terminal: `batavi-img check`
4. `batavi-img generate --preset default -m "..."` (ou `portrait` / `scene` / `--workflow` + `--node-id`)

---

## 9. Roadmap: imagem modelo (Alaric — referência)

Objetivo de longo prazo: aproximar o pipeline local do **visual de referência** (corpo inteiro, elmo carmesim, peles assimétricas, cena de cerco). Revisite esta secção quando for adicionar Refiner, LoRA ou IP-Adapter no ComfyUI.

| Fase | O quê | Notas |
|------|--------|--------|
| **0** | Baseline | Um `workflow_api.json` fixo, mesmo checkpoint, `batavi-img generate` reprodutível; negativo com anti-monocromático (ver `workflows/workflow_api.json` nó 7). |
| **1** | Alvo explícito | Guarde a PNG modelo com nome estável (ex. copiar para `codex-batavi/imagens-lore/referencia-alaric-modelo.png`) e uma checklist mental (pose, lados dos lobos, espada, cenário). |
| **2** | Prompt só texto | Template **`alaric_reference_fullbody`** + várias seeds; medir o teto do checkpoint antes de nós extras. |
| **3** | Pilha de modelo | SDXL Refiner no grafo; opcionalmente outro checkpoint ou uma LoRA — **uma mudança de cada vez**. |
| **4** | Ancoragem visual | IP-Adapter (ou ControlNet pose/depth) a partir da referência, quando texto + modelo não chegarem. |
| **5** | Acabamento | Upscale nas finalistas; ajuste leve de cor fora se necessário. |
| **6** | Congelar | Documentar workflow campeão + checkpoint + pesos no repo. |

**Comando base (texto apenas):**

```bash
conda activate forja_batavi
batavi-img generate --preset alaric_armor --template alaric_reference_fullbody \
  -m "slight wind on cape, more embers"
```

**Explorar seeds:** o `workflow_api.json` tem `seed` fixo no KSampler; no ComfyUI altere a seed entre corridas ou reexporte o JSON com `seed` aleatório / controlo manual — a CLI hoje não expõe `--seed` (futuro).

Mais detalhes dos templates: `templates/prompts/README.md` e `alaric_reference_fullbody.toml` (cabeçalho com convenções viewer left/right).

---

## 10. Documentação de apoio

| Arquivo | Conteúdo |
|----------|----------|
| [CHEATSHEET.md](CHEATSHEET.md) | Comandos copy-paste |
| [README.md](README.md) | Referência completa e tabelas |
| `batavi-img --help` / `batavi-img generate --help` | Ajuda integrada |

---

## 11. Problemas comuns (pós-instalação)

| Situação | O que fazer |
|----------|-------------|
| `serve` diz que não encontra `main.py` | `FORJA_COMFY_HOME` ou `--comfy-home` corretos |
| `check` falha | Servidor não iniciado ou porta/URL errada (`--url` / `FORJA_COMFY_URL`) |
| Erro ao enfileirar prompt | JSON API inválido ou nó errado — `prompt_node_id` / `--node-id` |
| PNG errada ou não move | Outra geração em paralelo na mesma `output/`; aumentar `--settle`; `--comfy-output` / `--assets-dir` explícitos |
| Dependências diferentes | Unificar venv ou `FORJA_COMFY_PYTHON` para o `serve` |

---

*Boa forja.*
