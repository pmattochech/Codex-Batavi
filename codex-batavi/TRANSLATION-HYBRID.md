# English-first lore policy (post-migration)

**Status:** Active. **Prose target:** US English. **Immutable lore** still follows `.cursorrules` (chapter identity, Wolf’s Curse, Castra Vetera geography, etc.).

This document defines **when and how** English is maintained across the Codex, in **priority tiers** and **folder batches** so review stays possible and links can be fixed per batch.

---

## Principles

1. **Prose vs paint names** — In English chronicles and reference prose, use **generic colour words** (*industrial grey*, *crimson*). Reserve Citadel paint names for [**visual-identity-paint-guide.md**](visual-identity-paint-guide.md) and modeling notes.

2. **Translate on purpose** — A file is updated when it is in the current tier, when you assign it, or when you **substantively edit** it for lore (then translate touched sections or the whole file).
3. **No silent mass rewrite** — Do not rewrite stable files “while passing through” unless this doc or the user puts them in scope.
4. **Glossary first** — Use and extend [`GLOSSARY-EN.md`](GLOSSARY-EN.md) before large batches so names and coinages stay consistent.
5. **Machine translation** — Allowed as **draft only**; always pass for voice (grimdark pragmatic, Triumvirate registers) and for 40k terminology.
6. **English path slugs** — Folder and file names under `chronicles/` and reference hubs use kebab-case English.

---

## Priority tiers (recommended order)

| Tier | Scope | Rationale |
|------|--------|-----------|
| **P0** | [`chronicles/INDEX.md`](chronicles/INDEX.md), [`codex-batavi/README.md`](README.md), hub `INDEX.md` files in each top-level folder | Navigation and discoverability |
| **P1** | Arcs you extend most often (e.g. `chronicles/07-iron-venus/`, `11-sigma-moon/`, `12-vigilax/`, `13-apotheosis/`) | High reader and author traffic |
| **P2** | `personae-command-index/` (dossiers, doctrine, master chronology) | Reference for all writing |
| **P3** | `atlas-and-topography/`, `arsenal-and-logistics/`, `political-relations/`, `lexicon-and-litanies/` | Supporting lore |
| **P4** | `biological-encyclopedia-bestiary/` | Large, stable blocks — revise when edited or in dedicated sprints |
| **P5** | Deferred `chronicles/` arcs (`00`–`06`, `08`–`10`) — see progress log | Body files in English; planned quarter-fics still unwritten |

---

## Batch workflow (per folder or tier)

1. **Snapshot** — Optional git tag `pre-en-migration-<folder>` before the first batch (e.g. `pre-en-migration-chronicles-07`).
2. **Edit** — Files in scope only; update internal links where link **text** must read naturally in English.
3. **Check** — Broken relative links; headings used as anchors; tables and code blocks unchanged unless prose.
4. **Glossary** — Add new coinages or chosen glosses to `GLOSSARY-EN.md`.
5. **Commit** — One logical batch per PR/commit message (e.g. `Translate chronicles/07-iron-venus to English`).

---

## What stays as-is or special-cased

- **High Gothic** tags, fixed battle cries, and established **English** quotes (e.g. *“We hold.”*, *“The Emperor dictates, we comply.”*).
- **Proper nouns** (person, ship, fortress names) unless you choose a deliberate change — record in the glossary.
- **Legacy Portuguese hub trees** — Removed from the repo (2026). Canonical English hubs only (`chronicles/`, `personae-command-index/`, etc.).

---

## Relation to `.cursorrules`

Section **0.1** states the default language for **new and edited** Markdown. This file keeps **bulk migration** and ongoing English policy aligned with those rules.

---

## Progress log

| Batch | Scope | Status |
|-------|--------|--------|
| **P0** | Root `README.md`, `codex-batavi/README.md`, all hub `INDEX.md` files (`chronicles/`, `personae-command-index/`, `atlas-and-topography/`, `arsenal-and-logistics/`, `biological-encyclopedia-bestiary/`, `lexicon-and-litanies/`, `political-relations/`) | **Done** |
| **P1** | `chronicles/07-iron-venus/`, `11-sigma-moon/`, `12-vigilax/`, `13-apotheosis/` (prose in place; English path slugs) | **Done** |
| **P2** | `personae-command-index/` — doctrine (`doctrine-and-organs/`), events (`events-and-chronologies/`), intro/heraldry (`intro-and-heraldry/`), all `character-dossiers/*.md` | **Done** |
| **P3** | `atlas-and-topography/` (incl. `systems/`), `arsenal-and-logistics/`, `political-relations/`, `lexicon-and-litanies/` (prose in English; English path slugs) | **Done** |
| **P4** | `biological-encyclopedia-bestiary/` (biology encyclopedia, matrices, Viggo dossier; English path slugs) | **Done** |
| **P5** | Deferred `chronicles/` narrative: `00`–`06`, `08`–`10` (all body `.md` listed in [`chronicles/INDEX.md`](chronicles/INDEX.md) for those arcs; English path slugs) | **Done** |

---

## Audit — post-migration notes

**`codex-batavi/` Markdown prose:** Reference tiers **P0–P5** are in **US English** where a body file exists. Terminology aligns with [`.cursorrules`](../.cursorrules) and [`GLOSSARY-EN.md`](GLOSSARY-EN.md) (**Wolf’s Curse**, **Versibar**, **Warp** / **Shadow in the Warp**, **Batav Wolf** / *Canis Batavorum*, **Thunderwolf**, **Axiom of Reason** / *Axioma Rationis*, no **DAoT** as main form in EN).

**Canonical paths only:** Legacy Portuguese hub trees and the `imagens-lore/` symlink were **removed** in a 2026 cleanup. Bookmarks must use the English hubs listed in [`codex-batavi/README.md`](README.md).

**Assets:** PNG files live under [`lore-images/`](lore-images/); the `batavi-img` CLI defaults there.

**Still not written (not a translation gap):** Planned quarter chronicles under `00-foundation-war/` (`second-quarter.md`, etc.) — summaries live in `foundation-war.md` until you author those files.

**`forja/`:** Code, defaults, and path conventions match `codex-batavi/`. Top-level guides **`forja/README.md`**, **`TUTORIAL.md`**, and **`CHEATSHEET.md`** are **US English** (aligned with this doc). Regenerate **`PKG-INFO`** with `pip install -e ./forja` if you need the installed metadata to match `README.md` verbatim.

### Terminology quick reference (English prose)

| Use in English prose | Notes |
|----------------------|--------|
| **Versibar** / **Versibars** | Execratio war-form; Latin-style morphology per glossary |
| **Wolf’s Curse** | Three stages: Furor, Exanimus, Execratio |
| **Warp** / **Immaterium**; **Shadow in the Warp** | Standard 40k English; no “Distortion” calque as main term |
| **Axiom of Reason**; *Axioma Rationis* | Latin gloss where styled |
| **Batav Wolf** (*Canis Batavorum*); **the Batav** (*Der Batav* in myth) | Not **Thunderwolf** for native predator |
