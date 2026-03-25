# Workflows ComfyUI (formato API)

1. No ComfyUI, monte o grafo até gerar imagens com o checkpoint / LoRAs que você quer.
2. **Save (API Format)** / exporte o JSON para esta pasta.
3. O primeiro export pode chamar-se **`workflow_api.json`** — os presets `default`, `portrait`, `scene` e `alaric_armor` apontam todos para esse arquivo até você criar cópias com outros nomes/checkpoints.
4. No primeiro `CLIPTextEncode` positivo, o `batavi-img generate` injeta o prompt (ou o texto já processado por `--template`).

**Presets de personagem** (ex.: `alaric_armor`) podem reutilizar o mesmo arquivo JSON que `portrait` até você ter um grafo dedicado (outro checkpoint, resolução, etc.).
