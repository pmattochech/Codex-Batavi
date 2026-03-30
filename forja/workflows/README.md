# ComfyUI workflows (API format)

1. In ComfyUI, build the graph until you can render with the checkpoint / LoRAs you want.
2. **Save (API Format)** / export the JSON into this folder.
3. The first export can be named **`workflow_api.json`** — presets `default`, `portrait`, `scene`, and `alaric_armor` all point at that file until you add copies with other names/checkpoints.
4. On the first positive `CLIPTextEncode`, `batavi-img generate` injects the prompt (or text already merged by `--template`).

**Character presets** (e.g. `alaric_armor`) may reuse the same JSON as `portrait` until you have a dedicated graph (other checkpoint, resolution, etc.).
