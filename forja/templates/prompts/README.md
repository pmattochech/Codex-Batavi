# Prompt templates (`*.toml`)

Each file defines **positive** text in layers for the CLI to merge with whatever you pass in `-m` or `--prompt-file`.

## Keys

| Key | Required | Role |
|-----|----------|------|
| `character` | No | Metadata (shown by `batavi-img templates`). |
| `positive_prefix` | Recommended | Fixed block (character look / armor). |
| `positive_suffix` | Optional | Style, framing, trailing tags. |
| `negative` | Optional | **Not** sent to the API: the CLI only prints it to stderr for you to copy into the negative node in ComfyUI. |

The string sent to ComfyUI is:

`positive_prefix` + `, ` + (`-m` / file text) + `, ` + `positive_suffix`  
(empty parts are omitted).

## Example

```bash
batavi-img templates
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "standing on battlements, lightning"
```

**Alaric — canon visual (dossier §1.2):** `alaric_castra_lupus` uses a lupine helm in **grey ceramite** and pelts with **pale blue** eyes (Viggo, right shoulder) and **red** eyes (**Batav Wolf** / black wolf, left shoulder). **Crimson** helm (narrative prose): `alaric_castra_lupus_crimson_helm` (full body) and `alaric_bust_portrait_crimson_helm` (bust). Grey-helm bust: `alaric_bust_portrait`.

```bash
batavi-img generate --preset alaric_armor --template alaric_castra_lupus -m "lightning, battlements"
batavi-img generate --preset alaric_armor --template alaric_castra_lupus_crimson_helm -m "embers, smoke"
batavi-img generate --preset alaric_armor --template alaric_bust_portrait -m "three-quarter view"
```

**Reference image (full body, Gemini + lore):** `alaric_reference_fullbody` — crimson helm, white wolf on the **viewer’s left**, black on the **viewer’s right**, taxidermy blue/red eyes. Roadmap in **`TUTORIAL.md` §9**.

```bash
batavi-img generate --preset alaric_armor --template alaric_reference_fullbody -m "extra smoke, fire rim light"
```

**Generic grimdark showcase** (`grimdark_character_showcase.toml`): preset `grimdark_character` — put the whole character in `-m` (or `--prompt-file`).

```bash
batavi-img generate --preset grimdark_character --template grimdark_character_showcase \
  -m "tall armored warrior, horned helm, holding bolter, facing camera"
```

## New characters

1. Copy `alaric_castra_lupus.toml` to `other_character.toml`.
2. Adjust `positive_prefix` to match the dossier (English usually works best in SD).
3. Add a block in `presets.toml` if you want a dedicated preset name (can point at the same `workflow`).

## ComfyUI workflows

**Graphs** (API `.json`) live in `forja/workflows/` — exported from ComfyUI. Templates do **not** replace the workflow; they only enrich the positive CLIP text.
