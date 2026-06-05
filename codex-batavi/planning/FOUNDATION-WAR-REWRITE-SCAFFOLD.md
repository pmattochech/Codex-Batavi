# Foundation War — rewrite scaffold (phases + repo structure)

**Status:** workflow + structure spec. **Phases 3–5 complete** — canonical prose in [`../chronicles/foundation-war/`](../chronicles/foundation-war/); doctrine ripple + repo audit logged §Phase 5. Legacy serial archived under [`../chronicles/00-foundation-war/`](../chronicles/00-foundation-war/). **Does not** replace [`FOUNDATION-WAR-RETCON-PLANNING.md`](FOUNDATION-WAR-RETCON-PLANNING.md) (design lattice).

**Principles (owner locks):**

- **Chat spine** = primary scaffolding (nine-pole theater map, implicit contradiction pressure, beacon lure, origin-hunt death curve, baptism → adoption, **Batavi + Mechanicus joint inference** of hostile automation, **face-to-face MoI only in Pole 9**).
- **Published 38-chapter serial** = guideline for titles, CV bands, and set-piece inventory unless a deliberate retcon row says otherwise.
- **Pole 1 visible foe:** unclassified xenos mercenary enclaves (author scaffold: **Kroot kindreds**); Imperium brief stays taxonomy-blind until earned.
- **MoI “five tests”:** implicit in prose — never labeled as designer taxonomy; no MoI POV omniscience.
- **Geography (Mar 2026):** **Insula Tenebrarum** / **Castra Vetera** / **Nine Phalanx** — [`../atlas-and-topography/castra-vetera-galactic-lock.md`](../atlas-and-topography/castra-vetera-galactic-lock.md). **Witness Ford**; marsh-channel triangle; **unknown** progenitor on open record. **Retired in new prose:** *Porta Nihili*, *Loken Passage*. Every `chapter.md` carries a **Geography lock** header; legacy `00-foundation-war/` is **archive only**.
- **CV y0 arrival:** **Crash landing** on **Aethelgard Prime** after bad warp ingress (ribbon / missing chart-house data) — **Mud Gospel** opens on wreckage, not beachhead (planning **§1**, **§11.3**).

---

## Where the rewrite lives (new structure)

**Canonical prose tree:** `codex-batavi/chronicles/foundation-war/` *(scaffold created: `README.md`, saga `INDEX.md`, quarter `INDEX.md` files, `legacy-map.md`, 38 `*/chapter.md` stubs with `Next:` chain).*

**Legacy reference (archive):** `codex-batavi/chronicles/00-foundation-war/*.md` — do not patch for canon fixes; use `foundation-war/<quarter>/<slug>/chapter.md`.

**Design lattice:** `codex-batavi/planning/FOUNDATION-WAR-RETCON-PLANNING.md`

**Staff annals (to repoint after Phase 1):** `codex-batavi/personae-command-index/events-and-chronologies/foundation-war.md`

### Folder pattern

```text
chronicles/foundation-war/
├── README.md                 # saga entry: locks, CV span, pointer to INDEX
├── INDEX.md                  # master read order (source of truth for sequence)
├── legacy-map.md             # optional: old chapter-NN → slug folder
├── Q1-moon-hunt/
│   ├── INDEX.md              # quarter-only table + expansions
│   ├── <slug>/
│   │   ├── chapter.md        # main prose (fixed name)
│   │   ├── notes.md          # optional: beats, POV, Phase 0 one-liners
│   │   └── …                 # vox logs, charters, side-canons
├── Q2-inverted-war/
├── Q3-gulf-and-beast/
└── Q4-der-batav/
```

**Rules:**

- **No numbered filenames** (`chapter-17-…`) in the new tree — order = **`INDEX.md` rows** + optional **footer `Next:`** links on `chapter.md` only.
- **Inserts:** add a new `<slug>/` folder; update **one row** in saga `INDEX.md`, quarter `INDEX.md`, and **two** `Next:` footers (previous → new, new → following).
- **Side files** link **back** to `chapter.md`; only the main chain advances forward navigation.

**Footer pattern (end of each `chapter.md`):**

```markdown
---
**Next:** [Title](../<next-slug>/chapter.md) · Q# · CV band
```

### Slug map (guideline order — matches published serial)

| Order | Quarter folder | Slug folder | Published title (guideline) |
|------:|----------------|-------------|-------------------------------|
| 1 | `Q1-moon-hunt` | `mud-gospel` | *Mud Gospel* |
| 2 | `Q1-moon-hunt` | `the-arrangement` | *The Arrangement* |
| 3 | `Q1-moon-hunt` | `dog-logic` | *Dog Logic* |
| 4 | `Q1-moon-hunt` | `seventy-two` | *Seventy-Two* |
| 5 | `Q1-moon-hunt` | `bait-doctrine` | *Bait Doctrine* |
| 6 | `Q1-moon-hunt` | `mirror-routes` | *Mirror Routes* |
| 7 | `Q1-moon-hunt` | `living-specimen` | *Living Specimen* |
| 8 | `Q1-moon-hunt` | `cord-weight` | *Cord Weight* |
| 9 | `Q1-moon-hunt` | `second-quarter-brief` | *Second Quarter Brief* |
| 10 | `Q2-inverted-war` | `inverted-hive` | *Inverted Hive* |
| 11 | `Q2-inverted-war` | `output-quota` | *Output Quota* |
| 12 | `Q2-inverted-war` | `ring-of-teeth` | *Ring of Teeth* |
| 13 | `Q2-inverted-war` | `flare-geometries` | *Flare Geometries* |
| 14 | `Q2-inverted-war` | `brood-signature` | *Brood Signature* |
| 15 | `Q2-inverted-war` | `exanimus-choir` | *Exanimus Choir* |
| 16 | `Q2-inverted-war` | `glass-overture` | *Glass Overture* |
| 17 | `Q2-inverted-war` | `tertius-anvil` | *Tertius Anvil* |
| 18 | `Q2-inverted-war` | `years-eight-to-fifteen` | *Years Eight to Fifteen* |
| 19 | `Q3-gulf-and-beast` | `gulf-deployment` | *Gulf Deployment* |
| 20 | `Q3-gulf-and-beast` | `skin-debt` | *Skin Debt* |
| 21 | `Q3-gulf-and-beast` | `bridge-saints` | *Bridge Saints* |
| 22 | `Q3-gulf-and-beast` | `maw-exercise` | *Maw Exercise* |
| 23 | `Q3-gulf-and-beast` | `dynasty-last-command` | *Dynasty’s Last Command* |
| 24 | `Q3-gulf-and-beast` | `incus-still-burns` | *Incus Still Burns* |
| 25 | `Q3-gulf-and-beast` | `the-beast-chapter` | *The Beast Chapter* |
| 26 | `Q3-gulf-and-beast` | `vitreus-bleed` | *Vitreus Bleed* |
| 27 | `Q3-gulf-and-beast` | `half-chapter-still-standing` | *Half Chapter Still Standing* |
| 28 | `Q3-gulf-and-beast` | `forward-to-the-crown` | *Forward to the Crown* |
| 29 | `Q4-der-batav` | `estuary-doctrine` | *Estuary Doctrine* |
| 30 | `Q4-der-batav` | `tide-names` | *Tide Names* |
| 31 | `Q4-der-batav` | `mirror-brood` | *Mirror Brood* |
| 32 | `Q4-der-batav` | `prism-war` | *Prism War* |
| 33 | `Q4-der-batav` | `halo-mouth` | *Halo Mouth* |
| 34 | `Q4-der-batav` | `lecture-in-vacuum` | *Lecture in Vacuum* |
| 35 | `Q4-der-batav` | `we-hold-anyway` | *We Hold Anyway* |
| 36 | `Q4-der-batav` | `the-core-refuses` | *The Core Refuses* |
| 37 | `Q4-der-batav` | `der-batav-council` | *Der Batav Council* |
| 38 | `Q4-der-batav` | `instrumentum-solum` | *Instrumentum Solum* |

**Optional prelude (Phase 2 — insert before `mud-gospel` in `INDEX.md` only):** e.g. `Q1-moon-hunt/distress-vector/` or `beacon-compliance/` for beacon + escort + origin-hunt motive cold open.

---

## Phase 0 — Author overlay (no required repo prose)

**Goal:** One beat spine before touching `chapter.md` files.

**Deliverables (chat or `notes.md` per slug):**

1. Nine-pole × quarter map + **implicit** pressure per pole (no test labels in-universe).
2. Three curves on one timeline: **origin hunt**, **name** (foreshadow → *Tide Names* → Council), **MoI truth** (joint inference → encounter late).
3. Pole 1 **Kroot-shaped** tactical bible (two kindred temperatures; Administratum language stays unclassified).
4. **Crosswalk:** theater pole ↔ atlas body ↔ slug folder ↔ CV band.
5. **CV pins:** single ledger for *Tide Names*, Council, Execratio (~y19), reveal cluster — resolve any y24 vs y29 drift here.

**Exit gate:** Every slug has a **one-line intent** before Phase 3 prose begins.

**Repo:** optional — paste Phase 0 into each `notes.md` when folders exist.

---

## Phase 1 — Staff / lattice (structure before narrative)

**Goal:** Index layer matches chat scaffold; no prose required in `foundation-war/` yet.

| Step | Target | Action |
|------|--------|--------|
| **1.1** | [`FOUNDATION-WAR-RETCON-PLANNING.md`](FOUNDATION-WAR-RETCON-PLANNING.md) | Kroot pole-1 bible; remove Yautja-only dependency; add **joint Batavi–Mechanicus discovery** notes; keep pole/enemy roster, MoI last, spoken line lock, population math. |
| **1.2** | [`../personae-command-index/events-and-chronologies/foundation-war.md`](../personae-command-index/events-and-chronologies/foundation-war.md) | Full staff rewrite: theater nine-pole scaffold; **no** subsetor-wide time dilation backbone; joint-truth rail; pointer to **`chronicles/foundation-war/INDEX.md`** as canonical narrative path. |
| **1.3** | [`../personae-command-index/events-and-chronologies/master-chronology.md`](../personae-command-index/events-and-chronologies/master-chronology.md) §I | Align CV phases / naming pins with 1.2. |
| **1.4** | [`../atlas-and-topography/systems/system-ii-crucible.md`](../atlas-and-topography/systems/system-ii-crucible.md) | Light touch if Aethelgard pole-1 wording must match Kroot merc texture. |

**Exit gate:** Reader can trust **`foundation-war.md`** without reading legacy numbered files.

**New structure:** not mandatory in Phase 1 — only **links** in staff files should aim at the future `foundation-war/INDEX.md`.

---

## Phase 2 — Pre-campaign & bridge (causal front-load)

**Goal:** Beacon, Mechanicus escort, origin-hunt motive, first joint pattern — **before** or **woven into** early Q1 mud.

**Repo (new structure):**

- Create `chronicles/foundation-war/` skeleton: `README.md`, saga **`INDEX.md`**, quarter folders + quarter **`INDEX.md`** files.
- Add optional prelude slug under `Q1-moon-hunt/`; set saga **`INDEX.md`** so read order is: **prelude (if any) → `mud-gospel` → …**
- Legacy `00-foundation-war/` remains untouched or gets a one-line “superseded by …” banner when you cut over.

**Exit gate:** By end of Q1 (`second-quarter-brief`), reader knows **why they came**, **with whom**, and that **accidents cluster** — not yet **what** the hand is.

---

## Phase 3 — Quarter prose rewrites (canonical tree)

**Goal:** Replace or draft prose under **`chronicles/foundation-war/<quarter>/<slug>/chapter.md`**.

**Order:** **Quarter by quarter** (Q1 → Q4), not strict slug alpha — each quarter closes a thematic invoice.

**Per slug workflow:**

1. Copy or stub from legacy `chapter-NN-*.md` if useful.
2. Rewrite to chat spine + Phase 0 one-liner.
3. Append **`Next:`** footer to `chapter.md`.
4. Register expansions in quarter `INDEX.md`.

**Joint-truth milestones (reminder):**

- **M1** ~ early arrangement; **M2** ~ mirror routes; **M3** ~ quotas / charters; **M4** ~ gulf tombs; **M5** ~ post-beast tally / forward to crown; **M6–M7** ~ halo mouth through core refuses.

**MoI encounter:** **only** `halo-mouth` → `lecture-in-vacuum` → `we-hold-anyway` → `the-core-refuses` (with canonical spoken line in **`lecture-in-vacuum`**).

**Exit gate:** Full read chain from saga `INDEX.md` works without legacy files.

---

## Phase 4 — Doctrine & identity ripple (after serial stable)

**Goal:** Myth and dossiers match what the new folders prove.

| Target | Notes |
|--------|--------|
| [`../lexicon-and-litanies/der-batav-myth-foundation.md`](../lexicon-and-litanies/der-batav-myth-foundation.md) | Dual receipt: witness name + council ratification. |
| [`../personae-command-index/doctrine-and-organs/progenitor-classification.md`](../personae-command-index/doctrine-and-organs/progenitor-classification.md) | Origin-hunt buried; resemblance / unknown-to-Chapter language. |
| [`../personae-command-index/intro-and-heraldry/chapter-identity.md`](../personae-command-index/intro-and-heraldry/chapter-identity.md) | Allied “almost / not quite”; post-crucible self. |
| Triumvirate + Valerius + Mechanicus NPC dossiers | Wound tags only where prose earns them. |
| [`../chronicles/INDEX.md`](../chronicles/INDEX.md) | Point Foundation saga to `foundation-war/INDEX.md`; keep legacy row as archive if desired. |
| [`../GLOSSARY-EN.md`](../GLOSSARY-EN.md) | Terms touched by rewrites. |

---

## Phase 5 — Consistency audit (single pass)

Grep / read checklist — **May 2026 pass (repo-wide):**

- [x] No subsetor-wide **dome aging** as default backbone (per `.cursorrules` + retcon §6).
- [x] Staff “nine poles” = **theater roster** (planning §11.1), not the old Roman I–IX mesh unless explicitly labeled **atlas only**.
- [x] No Yautja / Predator as required author spine (Kroot-shaped or successor choice).
- [x] MoI **five tests** never appear as in-world labels in slug prose.
- [x] MoI **classification** earned **with Mechanicus** before finale; **envoy / canonical line / terminal clash** in Q4 terminal cluster.
- [x] Pole 1 remains **unclassified merc xenos** on open record until taxonomy catches up.
- [x] Population locks: crucible ~**500** rational line → **Valerian** math → **Primaris** uplift **after** (per planning §1).
- [x] All `Next:` footers and saga `INDEX.md` agree (no inserts since Phase 3 close).

---

## Quick reference — quarter thesis

| Quarter | CV span (draft) | Thesis |
|---------|-----------------|--------|
| **Q1** | y0–y7 | Prey before name; mud + merc hunt; first joint “too neat” pattern. |
| **Q2** | y8–y14 | Trust eaten; hive + ring + flare + glass; origin-hunt cracks. |
| **Q3** | y15–y21 | Tombs and beast; flayer + maw + Execratio; policy kills the hunt. |
| **Q4** | y22–y29 | Name, mirror, iron; *Tide Names*; MoI encounter; Council + coda. |

---

## Maintainer note

When this scaffold and the new tree supersede the legacy serial, add a short banner at the top of [`../chronicles/00-foundation-war/`](../chronicles/00-foundation-war/) `README` or first chapter file pointing to **`chronicles/foundation-war/INDEX.md`** — do not delete legacy prose until owner confirms.
