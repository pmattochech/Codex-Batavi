# Templates de prompt (`*.toml`)

Cada arquivo define **texto positivo** em camadas para a CLI juntar com o que você passar em `-m` ou `--prompt-file`.

## Chaves

| Chave | Obrigatório | Função |
|--------|-------------|--------|
| `character` | Não | Metadado (aparece em `batavi-img templates`). |
| `positive_prefix` | Recomendado | Bloco fixo (visual do personagem / armadura). |
| `positive_suffix` | Opcional | Estilo, enquadramento, tags finais. |
| `negative` | Opcional | **Não** é enviado à API: a CLI só imprime no stderr para você copiar ao nó negativo no ComfyUI. |

A string final enviada ao ComfyUI é:

`positive_prefix` + `, ` + (texto de `-m` / arquivo) + `, ` + `positive_suffix`  
(partes vazias são omitidas).

## Exemplo

```bash
batavi-img templates
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "standing on battlements, lightning"
```

**Alaric — canon visual (dossie §1.2):** `alaric_castra_lupus` usa elmo lupino em **ceramite cinza** e peles com olhos **azul-pálido (Viggo, ombro direito)** e **vermelho (lobo negro, ombro esquerdo)**. Elmo **carmesim** (prosa narrativa): `alaric_castra_lupus_crimson_helm` (corpo) e `alaric_bust_portrait_crimson_helm` (busto). Busto elmo cinza: `alaric_bust_portrait`.

```bash
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "lightning, battlements"
batavi-img generate --preset alaric_armor --template alaric_castra_lupus_crimson_helm -m "embers, smoke"
batavi-img generate --preset alaric_armor --template alaric_bust_portrait -m "three-quarter view"
```

**Imagem modelo (corpo inteiro, referência Gemini + lore):** `alaric_reference_fullbody` — elmo carmesim, lobo branco à **esquerda do observador**, preto à **direita**, olhos taxidermizados azul/vermelho. Roadmap em **`TUTORIAL.md` §9**.

```bash
batavi-img generate --preset alaric_armor --template alaric_reference_fullbody -m "extra smoke, fire rim light"
```

**Showcase grimdark genérico** (`grimdark_character_showcase.toml`): preset `grimdark_character` — o personagem vai todo em `-m` (ou `--prompt-file`).

```bash
batavi-img generate --preset grimdark_character --template grimdark_character_showcase \
  -m "tall armored warrior, horned helm, holding bolter, facing camera"
```

## Novos personagens

1. Copie `alaric_castra_lupus.toml` para `outro_personagem.toml`.
2. Ajuste `positive_prefix` ao dossiê (inglês costuma funcionar melhor em SD).
3. Acrescente um bloco em `presets.toml` se quiser um nome de preset dedicado (pode apontar para o mesmo `workflow`).

## Workflows ComfyUI

Os **grafos** (`.json` API) ficam em `forja/workflows/` — exportados do ComfyUI. Os templates **não** substituem o workflow; só enriquecem o texto do CLIP positivo.
