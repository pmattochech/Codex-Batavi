# Hybrid translation strategy (Portuguese → English)

**Status:** Active. **Target prose:** US English. **Immutable lore** still follows `.cursorrules` (chapter identity, Wolf’s Curse, Castra Vetera geography, etc.).

This document defines **what to translate when**, not a single giant commit. Work moves in **priority tiers** and **folder batches** so review stays possible and links can be fixed per batch.

---

## Principles

1. **Prose vs paint names** — In English chronicles and reference prose, use **generic colour words** (*industrial grey*, *crimson*). Reserve Citadel paint names for [**visual-identity-paint-guide.md**](visual-identity-paint-guide.md) and modeling notes.

2. **Translate on purpose** — A file moves to English when it is in the current tier, when you explicitly assign it, or when you **substantively edit** it for lore (then translate touched sections or the whole file).
3. **No silent mass rewrite** — Do not convert stable Portuguese files “while passing through” unless this doc or the user puts them in scope.
4. **Glossary first** — Use and extend [`GLOSSARY-EN.md`](GLOSSARY-EN.md) before large batches so names and coinages stay consistent.
5. **Machine translation** — Allowed as **draft only**; always pass for voice (grimdark pragmatic, Triumvirate registers) and for 40k terminology.
6. **English path slugs** — Folder and file names under `chronicles/` use kebab-case English; legacy `cronicas/` paths remain as **redirect stubs** (and one symlink) for bookmarks and external links.

---

## Priority tiers (recommended order)

| Tier | Scope | Rationale |
|------|--------|-----------|
| **P0** | [`chronicles/INDEX.md`](chronicles/INDEX.md), [`codex-batavi/README.md`](README.md), hub `INDEX.md` files in each top-level folder | Navigation and discoverability |
| **P1** | Arcs you extend most often (e.g. `chronicles/07-iron-venus/`, `11-sigma-moon/`, `12-vigilax/`, `13-apotheosis/`) | High reader and author traffic |
| **P2** | `personae-command-index/` (dossiers, doctrine, master chronology) | Reference for all writing |
| **P3** | `atlas-and-topography/`, `arsenal-and-logistics/`, `political-relations/`, `lexicon-and-litanies/` | Supporting lore |
| **P4** | `biological-encyclopedia-bestiary/` | Large, stable blocks — translate when edited or in dedicated sprints |
| **P5** | Deferred `chronicles/` arcs (`00`–`06`, `08`–`10`) — see progress log | Migrated (body files); planned quarter-fics still unwritten |

---

## Batch workflow (per folder or tier)

1. **Snapshot** — Optional git tag `pre-en-migration-<folder>` before the first batch (e.g. `pre-en-migration-chronicles-07`).
2. **Translate** — Files in scope only; update internal links where link **text** must read naturally in English.
3. **Check** — Broken relative links; headings used as anchors; tables and code blocks unchanged unless prose.
4. **Glossary** — Add new coinages or chosen English glosses to `GLOSSARY-EN.md`.
5. **Commit** — One logical batch per PR/commit message (e.g. `Translate chronicles/07-iron-venus to English`).

---

## What stays as-is or special-cased

- **High Gothic** tags, fixed battle cries, and established **English** quotes (e.g. *“We hold.”*, *“The Emperor dictates, we comply.”*).
- **Proper nouns** (person, ship, fortress names) unless you choose a deliberate Anglicization — record in the glossary.
- **Legacy `cronicas/` paths** — Stub `.md` files and `06-era-das-chuvas` symlink under `cronicas/` point to `chronicles/` (see `chronicles/INDEX.md`).

---

## Relation to `.cursorrules`

Section **0.1** states the default language for **new and edited** Markdown. This file defines **phased bulk migration** of legacy Portuguese so those rules and this strategy stay aligned.

---

## Progress log

| Batch | Scope | Status |
|-------|--------|--------|
| **P0** | Root `README.md`, `codex-batavi/README.md`, all hub `INDEX.md` files (`chronicles/`, `personae-command-index/`, `atlas-and-topography/`, `arsenal-and-logistics/`, `biological-encyclopedia-bestiary/`, `lexicon-and-litanies/`, `political-relations/`) | **Done** |
| **P1** | `chronicles/07-iron-venus/`, `11-sigma-moon/`, `12-vigilax/`, `13-apotheosis/` (prose in place; English path slugs) | **Done** |
| **P2** | `personae-command-index/` — doctrine (`doctrine-and-organs/`), events (`events-and-chronologies/`), intro/heraldry (`intro-and-heraldry/`), all `character-dossiers/*.md` | **Done** (hub `INDEX.md` was P0; body files English; English path slugs; legacy stubs under `index-personae-e-comando/`) |
| **P3** | `atlas-and-topography/` (incl. `systems/`), `arsenal-and-logistics/`, `political-relations/`, `lexicon-and-litanies/` (prose in English; English path slugs; legacy stubs under `lexicon-e-litanias/`, `relacoes-politicas/`) | **Done** |
| **P4** | `biological-encyclopedia-bestiary/` (biology encyclopedia, matrices, Viggo dossier; English path slugs) | **Done** |
| **P5** | Deferred `chronicles/` narrative: `00`–`06`, `08`–`10` (all body `.md` listed in [`chronicles/INDEX.md`](chronicles/INDEX.md) for those arcs; English path slugs) | **Done** |

---

## Audit — post-migration notes

**`codex-batavi/` Markdown prose:** Tiers **P0–P5** are migrated to **US English** where a body file existed. Terminology aligns with [`.cursorrules`](../.cursorrules) and [`GLOSSARY-EN.md`](GLOSSARY-EN.md) (**Wolf’s Curse**, **Versibar**, **Warp** / **Shadow in the Warp**, **Batav Wolf** / *Canis Batavorum*, **Thunderwolf**, **Axiom of Reason** / *Axioma Rationis*, no **DAoT** as main form in EN).

**Compatibility:** `chronicles/06-era-das-chuvas` symlinks to `06-silent-vigil`. Legacy `cronicas/06-vigilia-silenciosa/silencio-era-das-chuvas.md` is a **redirect stub** to `strategium-silence.md` (see [`chronicles/INDEX.md`](chronicles/INDEX.md)). Legacy `index-personae-e-comando/` paths are **redirect stubs** to [`personae-command-index/`](personae-command-index/INDEX.md). Legacy `lexicon-e-litanias/` paths are **redirect stubs** to [`lexicon-and-litanies/`](lexicon-and-litanies/INDEX.md). Legacy `relacoes-politicas/` paths are **redirect stubs** to [`political-relations/`](political-relations/INDEX.md).

**Still not written (not a translation gap):** Planned quarter chronicles under `00-foundation-war/` (`segundo-quarto.md`, etc.) — summaries live in `foundation-war.md` until you author those files.

**`forja/`:** Markdown docs, CLI help strings, and package metadata are **US English** (same repo convention as `codex-batavi/`).

### Legacy PT → EN cheatsheet (for quotes, forks, or `forja`)

| PT (legacy) | English target |
|-------------|----------------|
| *Versigodo* / *Versigodos* | **Versibar** / **Versibars** |
| *Maldição do Lobo* | **Wolf’s Curse** |
| *Distorção* (Immaterium) / *Sombra na Distorção* | **Warp** / **Immaterium**; **Shadow in the Warp** |
| *Axioma da Razão* | **Axiom of Reason**; *Axioma Rationis* where styled |
| *Lobo Batavi* | **Batav Wolf** (*Canis Batavorum*); not **Thunderwolf** |
