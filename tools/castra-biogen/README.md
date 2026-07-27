# Castra Biogen

Reusable *Warhammer 40,000* **mesh workshop** — system + biosphere generator now; culture/atlas briefs and bidirectional `codex-batavi/` later.

- **Interactive:** cogitator TUI — `./run wizard` (generate **and** browse sealed results)
- **Scriptable CLI:** `generate-system` / `generate` / `show` / …
- **Packs:** scenarios under `data/packs/` (Castra Vetera is an **optional example**, not the core)

Hardlocks / pack pins can be **overridden** in the wizard (warnings recorded). **Sealed** Magos + literary + `state.json` land under `cogitator-results/`. Scratch/working copies may use `out/`. Greenfield demo **templates** live under `templates/greenfield/`. `propose-codex` is dry-run only (explicit apply is end-state, not yet).

**Term lexicon:** [`REFERENCE.md`](REFERENCE.md) — layers, enums, origins, biomes, provenance, paths.

**End-state north star:** biosphere → culture/atlas layers → ingest + confirmed write-back to codex. **Now:** Archive reads sealed packs under `cogitator-results/` only.

## Quick start

```bash
cd tools/castra-biogen
python3 -m pip install -r requirements.txt
chmod +x run bin/cli.py

# Cogitator wizard (guided L-1 → body → seal)
./run wizard
./run wizard --pack castra-vetera --seed 42

# CLI greenfield
./run generate-system demo-system --seed 42 --spark

# CLI with Castra Vetera pack
./run packs
./run generate-system system-ii-crucible --existing --pack castra-vetera
./run generate aethelgard-prime --existing-system system-ii-crucible --pack castra-vetera
./run propose-codex aethelgard-prime
```

On Windows use `run.cmd` (forces WSL).

## Output layout

| Path | Role |
|------|------|
| `cogitator-results/` | **Sealed finals** — Archive + L7 seal target |
| `out/` | Scratch / working only |
| `templates/greenfield/` | Demo / greenfield template stubs (not mesh finals) |
| `data/packs/` | Scenario locks (e.g. `castra-vetera`) |

## Wizard

Amber-phosphor full-screen TUI:

1. **Boot** — New system | Biosphere only | Load pack | **Edit body** | **Browse results** | Abort (`q` quits)  
2. **System (L-1)** — mode; star **Roll / Pick / Skip** (overrides warn) — skipped on Biosphere only  
3. **Body** — init from slug/pack; pick planet type & immaterium; reroll  
4. **Biomes (L4)** — add/remove class+richness; **Roll / Skip**; trophic rebuilds from the list  
5. **Review** — **Seal to results**, **Open in Archive**, Save as pack, propose-codex; **Return to menu** (does not exit)

**Edit body:** load from pack or sealed results → edit classification / geology / climate / biomes / specimens / Magos & literary prose / custom tags → **Save pack** + **Seal results**.

**Archive (Browse results):** bodies and systems under `cogitator-results/` — view `magos.md` / `literary.md` / `state.json` (systems: `system.json` / `system.md`). Read-only; does not load into the active rite yet.

Biosphere only: pick a system from `cogitator-results/systems/` or a pack, then continue at body → biomes → review.

## Packs

```text
data/packs/<id>/
  pack.yaml
  systems/*.yaml
  bodies/*.yaml
```

| Pack | Role |
|------|------|
| `castra-vetera` | Optional Nine Phalanx / mesh example |
| *(your export)* | Created via wizard **Save as pack** |

Core enums/matrices stay generic under `data/enums/` and `data/matrices/`.

## Pipeline

| Layer | Role |
|-------|------|
| **L-1** | Star, orbit bands, formations, body slots |
| **L0** | Pack/YAML pins |
| **L1–L6** | Planet type → geology → climate (+ immaterium grade) → biomes → trophic → bauplan |
| **L7** | Magos + literary Markdown + `state.json` |

Species are **biome-born**: `biome → trophic slot → bauplan`.

## CLI

```text
./run wizard [--seed N] [--pack NAME]
./run packs
./run generate-system <slug> [--seed N] [--spark] [--mode natural|engineered_mesh] [--existing] [--pack NAME]
./run generate <body> [--seed N] [--spark] [--from-lock path] [--system slug] [--existing-system slug] [--pack NAME]
./run show <slug> [--json] [--as-system]
./run propose-codex <body>
./run layers
```
