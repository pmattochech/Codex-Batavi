# Instructions — Vexilla homeworld cultural identity framework

**Status:** Binding process document for agents and co-writers.  
**Audience:** Human authors **and** automated bots applying this framework to a named Vexillatio seat world.  
**Worked example (mortal pack):** [`../atlas-and-topography/cultures/ethnography-noviomagus-prime.md`](../atlas-and-topography/cultures/ethnography-noviomagus-prime.md) · bleed [`../atlas-and-topography/cultures/prima-noviomagus-culture-bleed.md`](../atlas-and-topography/cultures/prima-noviomagus-culture-bleed.md) · wing pattern [`../atlas-and-topography/cultures/worlds-central-bastion.md`](../atlas-and-topography/cultures/worlds-central-bastion.md) § **I *Prima* wing**.  
**Author mood (optional input):** [`HYMN-OF-THE-LOST-MOOD-LOCK.md`](HYMN-OF-THE-LOST-MOOD-LOCK.md).

---

## 0. Binding rules (MUST)

These rules are **not** optional. A bot that cannot satisfy them must **stop** and report blockers — it must **not** emit a thin or half-filled ethnography.

### 0.1 Nature of this document

1. This file is both **rules** and **required output format**.  
2. When the framework is applied to a world, the bot **MUST** produce Markdown that follows the **Template output** section structure **in order**, with **no deleted sections**.  
3. Empty content is forbidden except the literal token `TBD` on a line that truly cannot be filled without violating higher canon — and each `TBD` **MUST** name the missing fact and why. Prefer inventing seat-local mortal culture that respects locks over leaving `TBD`.

### 0.2 Depth mandate (maximum information)

1. Every applied Phase A ethnography **MUST** be **deep**: maximum usable information for fiction, wiki, and later bleed — not a stub, not a fork blurb, not a bullet list pretending to be a culture.  
2. **Minimum depth bar** (all required):  
   - Each of the six categories (§1–§6) has **substantive prose** (multiple paragraphs and/or dense tables), not one-liners.  
   - Every category is answered **through Rabble / Common / Upper** (or the locked rename) with distinct material per band.  
   - Sorting border has **worked tables** (exposure / rights / meaning), not a two-word label.  
   - Shards include **atlas shards** and a **full slang / rite / taboo** table.  
   - Imperial organizations matrix (§7A) scores **every** listed org (and any seat-relevant extras) with status + cultural effect.  
   - Fiction tells include **Wrong / Right** and a **mortal → scene signal**.  
3. **Target richness:** meet or exceed the information density of the Noviomagus ethnography **plus** Education, Military, Economy, and Imperial-orgs layers this framework adds. Longer is correct when it stays on-subject.  
4. Do **not** pad with OOC essays, real-world analogies as canon, or sealed Chapter doctrine dumped into mortal mouths.

### 0.3 Canon hygiene (hard stops)

1. Populi = Ecclesiarchy / Administratum–facing language unless a sealed POV is explicitly ordered.  
2. Batavi = Ancestor-Sovereign / Throne-weight — **not** Ministorum God-Emperor worship. Shared words ≠ shared creed.  
3. Do **not** invent Founding number or progenitor Chapter on the open record.  
4. Do **not** use opaque friend–foe abbreviations — spell the concept in full.  
5. Chronological blindness: mortals and early POVs only know what their date and access allow. Rumor ≠ *Strategium* seal.  
6. English US prose in `codex-batavi/`. Book dialogue elsewhere still follows project em-dash rules when writing fiction; this framework’s ethnography tables may use documentary register.  
7. Grimdark: scarcity, humiliation, tithe fear, useful faith — not modern welfare completeness.

### 0.4 Layer separation (hard stops)

| Layer | Owns | Does not own |
|-------|------|--------------|
| **Phase A — populi ethnography** | Mortal culture, class, orgs-as-civilians-meet-them, local sin, sorting borders | Full Vexilla doctrine, *Axiom*, Furor clinical law, gene-seed |
| **Phase B — bleed** | Bidirectional Vexilla ↔ populi habits, hard edges, misreads | Replacing Phase A; Founding claims |
| **Phase C — wing** | Seat periphery bodies as seat-standard + delta | Other Legatus seats’ worlds |

Chapter contact in Phase A is **surface only** (Shared Sweat, parallel keys, fear/pride, public Legatus nickname). Full bleed mechanics = Phase B.

### 0.5 Output paths (bot contract)

| Phase | Required path pattern |
|-------|------------------------|
| **A draft (optional)** | `codex-batavi/planning/in-progress/[slug]-population-culture.md` |
| **A ratified** | `codex-batavi/atlas-and-topography/cultures/ethnography-[slug].md` |
| **B** | `codex-batavi/atlas-and-topography/cultures/[vex-latin]-[slug]-culture-bleed.md` (e.g. `secunda-castra-vetera-culture-bleed.md`) |
| **C** | Section under the correct `worlds-*.md` (or new wing §), stubs that still state fork + delta clearly |

Also update: atlas `INDEX.md` links, seat fork file cross-links, and planning backlog checkboxes when ratifying.

**Bot MUST NOT** write under `codex-batavi/` unless the invoking user message is a **straight bounded order** or explicit write order naming paths — except when the run instructions already authorize applying this framework to a named world. If authorization is ambiguous, ask once, then stop.

### 0.6 Category ownership (no double essays)

| Topic | Primary section | Secondary |
|-------|-----------------|-----------|
| Tax as humiliation / who is exempt | Society | Economy (flow only) |
| Tithe payment mechanics / failure smell | Economy | Society (wound only) |
| Mass, heresy, Ecclesiarchy holidays | Religion | Culture (non-Mass rites only) |
| PDF / Arbites / Guard as force | Military | Imperial orgs matrix |
| Ministorum as institution | Religion + Imperial orgs | Culture |
| Mechanicus / forge-priests | Imperial orgs + institutional slices | Economy |

---

## 1. How to use (mandatory order)

1. Confirm **target**: world name, Vexillatio ordinal + Latin, Legatus (or TBD), macro-system.  
2. Load canon: system atlas, `worlds-*.md` fork, basal Porta Nihili, any existing ethnography, Legatus dossier, Hymn mood if used.  
3. Fill **Phase A** using Template output §§0–9 **in order**, at **maximum depth**.  
4. Self-validate against § **Acceptance checklist**.  
5. Only after Phase A is stable: Phase B, then Phase C.

**One category rule:** Answer Military · Culture · Society · Religion · Economy · Education **each** through all three fiction strata.  
**Institutional robes** (§7) are not a fourth class.  
**Imperial organizations** (§7A) are mandatory assessment, including absences.

---

## 2. Category instructions (Phase A body)

For each category below the bot **MUST** supply: overview prose, class-banded detail, at least one worked example (named district, guild, rite, or incident type), and friction with Batavi presence where relevant (surface only).

### 2.1 Military (mortal)

How mortal force and security institutions are organized and used. Include: PDF / Guard draft / militia; Arbites posture; riot / corridor / hive geometry as civilians experience it; who dies first when the Wall is late; Shared Sweat contact surfaces (not Chapter doctrine).

### 2.2 Culture

Amenities, speech, aesthetic, public shame/success display, everyday rites that are **not** Mass. Include leisure that is scarce, bought, fake, or forbidden. Include **Sound** per class (sentence length, humor, cant).

### 2.3 Society

Fiction strata (not necessarily Administratum legal castes), rank, humiliation, street law, local governance/representation, rationing, tax-as-wound. Include marriage/contract norms if they define class. Include optional death/name civic geography (memorial vs Wall rumor) without stealing *Reclusiam* crypt law.

### 2.4 Religion

Official creed vs local accent; priests vs laity; holidays that stop work; texts in practice; religious punishment; stamp booth vs chapel (or local equivalent). Contrast line: Batavi Ancestor-Sovereign ≠ God-Emperor worship.

### 2.5 Economy

World function/export; how work runs; tithe payment and **failure smell**; exemptions; real markets vs ledger fiction; what “wealth” means under this sky.

### 2.6 Education

Who learns and who is kept dark; tracks (guild / house / chapel / Administratum / other); curriculum-as-virtue; cost in bodies, years, patronage; what literacy *does* on this world.

---

## 3. Mandatory preamble locks (before the six)

| Lock | Requirement |
|------|-------------|
| **Physical frame** | Gravity, climate, scale, slow death, **budget metaphor** (rust / breath / paper / …), what citizens think in, provincial feel. |
| **Fork** | One clear contrast: not Noviomagus / not neighbor; Porta Nihili accent line. |
| **Sorting border** | Primary + secondary class police; “felt before a clerk speaks”; **tables** by stratum. |
| **Fiction strata** | Lock labels (default Rabble · Common · Upper); bridge band = **named lower-upper** or explicit `none this pass`. |
| **Local mortal sin** | One locked name (e.g. unlogged scrap / misfile / diversion) used consistently in Religion, Economy, and later Phase B. |
| **Legatus public read** | One mortal-facing nickname/role line (surface only). |
| **Author mood** | State whether Hymn four premises are applied; if yes, map them per class. |

---

## 4. Phase B / C instructions

### Phase B — bleed (separate file)

**MUST** include: ownership table; hard edges (faith, keys, shame≠local sin, bridge≠billet, xenos hate≠Chapter geometry); side-by-side; bleed both ways; class contact; institutions at the seam; Wrong/Right tells.  
**MUST NOT** dump gene-seed / Founding / sealed clinical curse taxonomy into populi rumor as fact.

### Phase C — wing periphery

**MUST** only use bodies under **this** Legatus wing. Seat standard + **one** local delta each. Inherit Phase B; no separate wing bleed wiki unless ordered. Depth: stub is allowed **only** in Phase C — and even stubs need scale, fork, minor adds, shard delta.

---

## 5. Acceptance checklist (bot gate)

### Phase A — reject output if any fail

- [ ] §§0–9 present in order; no deleted sections  
- [ ] Physical frame + fork + sorting border **tables** filled deep  
- [ ] Local mortal sin locked and used  
- [ ] Legatus public read line present  
- [ ] All six categories deep **and** class-banded  
- [ ] **Sound** per class present  
- [ ] Institutional slices table filled  
- [ ] **Imperial organizations matrix** complete (every row scored)  
- [ ] Shards: atlas + slang/rite/taboo table  
- [ ] Fiction tells: signal + Wrong/Right  
- [ ] Education not blank / not one sentence  
- [ ] Batavi creed not collapsed into Ministorum  
- [ ] No Founding/progenitor invention; no opaque friend–foe abbreviations  
- [ ] Chronological blindness respected  
- [ ] Phase B/C linked or explicitly deferred without mixing doctrine into populi body  

### Phase B / C

- [ ] Phase B only after Phase A stable; hard edges present  
- [ ] Phase C does not steal other seats; deltas stated  

---

# Template output

*Copy per seat world into the Phase A path. Replace bracketed fields. Do **not** delete sections. Fill at maximum depth. `TBD` only with named blocker.*

---

```markdown
# Ethnography — [WORLD] ([epithet])

**Status:** Draft / In progress / Ratified — [date]  
**Framework:** [`../../planning/vexilla-homeworld-culture-framework.md`](../../planning/vexilla-homeworld-culture-framework.md) (binding)  
**Seat:** Vexillatio [I–IX] (*[Latin]*) · Legatus: [name or TBD]  
**Scope:** Mortal populi only — not full Vexilla doctrine. Chapter footprint via civilian habit until Phase B.  
**Atlas / fork:** [links]  
**Basal / Ecclesiarchy:** [links]  
**Author mood:** [Hymn map applied — yes/no · link]  
**Local mortal sin (lock):** [name]  
**Legatus public read (mortal):** [one line]

---

## 0. Preamble

### 0.1 Physical frame — [budget metaphor]

[Deep prose: gravity, climate, scale, slow death, sensory world, what citizens think in, provincial feel.]

### 0.2 Fork

[Deep prose: not Noviomagus / not neighbor; Porta Nihili accent; what outsiders misread.]

### 0.3 Sorting border (class police)

- Primary sorter:
- Secondary sorter:
- Felt before a clerk speaks:

[Tables by stratum — exposure / rights / meaning. Worked intersections / fiction tells for the border.]

### 0.4 Fiction strata lock

**Labels:** Rabble · Common · Upper *(or rename + why)*  
**Bridge band:** [named lower-upper house/band · or `none this pass`]

[Per-class: Who · Mood premises map if used · Sound · Holy object · How “forgotten” works]

### 0.5 Local mortal sin & Legatus read

- **Local mortal sin:** [definition, who enforces, class-colored versions]
- **Legatus public read:** [mortal nickname/role — surface only]

---

## 1. Military (mortal)

[Deep overview]

**By class**
- **Rabble:**
- **Common:**
- **Upper:**

[Worked examples: draft, riot, Arbites contact, Shared Sweat surfaces]

---

## 2. Culture

[Deep overview: amenities, aesthetic, leisure, non-Mass rites, public shame/success]

**By class — include Sound**
- **Rabble:**
- **Common:**
- **Upper:**

---

## 3. Society

[Deep overview: rank, humiliation, street law, governance, representation, rationing, tax-as-wound]

**By class**
- **Rabble:**
- **Common:**
- **Upper:**

**Friction matrix**

| Pressure | Rabble | Common | Upper |
|----------|--------|--------|-------|
| Who is “forgotten” | | | |
| Holy object | | | |
| Ministorum | | | |
| Batavi presence | | | |

---

## 4. Religion

[Deep overview: creed vs accent; priests/laity; holidays; texts; punishment; booth vs chapel]

**By class**
- **Rabble:**
- **Common:**
- **Upper:**

**Contrast only:** Batavi Ancestor-Sovereign / Throne-weight ≠ God-Emperor worship.

---

## 5. Economy

[Deep overview: export/function; work; tithe mechanics; failure smell; exemptions; markets vs fiction]

**By class**
- **Rabble:**
- **Common:**
- **Upper:**

---

## 6. Education

[Deep overview: access; tracks; curriculum-as-virtue; cost in bodies/years/patronage]

**By class**
- **Rabble:**
- **Common:**
- **Upper:**

---

## 7. Institutional slices (robes inside classes)

Not a fourth class — same strata, different boss / holy object.

| Institution | Rabble | Common | Upper | Friction |
|-------------|--------|--------|-------|----------|
| [local tech-priests / forge / vault] | | | | |
| Ministorum | | | | |
| Administratum | | | | |
| Guard / PDF / Arbites | | | | |
| [other seat-critical] | | | | |

---

## 7A. Imperial organizations assessment (mandatory)

Score **every** row. Status values (pick one): **Core** · **Present** · **Thin** · **Absent** · **Sealed/rumor only** · **Hostile/excluded**.

For each **Core / Present / Thin** row: deep notes on how mortals meet them, class access, local accent, friction with Batavi shadow, and what “sin” looks like in that robe.  
For **Absent / Sealed / Hostile**: state *why* (one tight paragraph) — absence is information.

| Organization | Status | Cultural effect on this world (deep notes or reasoned absence) |
|--------------|--------|------------------------------------------------------------------|
| **Adeptus Administratum** | | |
| **Adeptus Ministorum / Ecclesiarchy** | | |
| **Adeptus Arbites** | | |
| **Adeptus Mechanicus** (incl. local forge-priests) | | |
| **Imperial Guard / Astra Militarum** (draft, billet, regiment links) | | |
| **Planetary Defense Force / local militia** | | |
| **Imperial Navy** | | |
| **Navis Nobilite / Navigator houses** | | |
| **Adeptus Astra Telepathica / Astropaths** | | |
| **Inquisition** (any Ordo footprint mortals feel) | | |
| **Officio Assassinorum** | | |
| **Adepta Sororitas** | | |
| **Adeptus Custodes** | | |
| **Other Astartes Chapters** (guests, rivals, myths) | | |
| **Rogue Trader dynasties** | | |
| **Chartist captains / void guilds** | | |
| **Local noble houses / tithe dynasties** | | |
| **Criminal / underhive powers** (as civic fact) | | |
| **[Seat-specific extras]** | | |

*Add rows as needed (collegia, void stations, unique mesh covenants). Do not delete the standard rows.*

---

## 8. Shards & fiction tells

**Atlas shards (2–3+):**

| Class | Slang | Rite | Taboo |
|-------|-------|------|-------|
| Rabble | | | |
| Common | | | |
| Upper | | | |

**Bridge band color (if any):**  
**Mortal → scene signal:**  
**Wrong:**  
**Right:**

---

## 9. Related / deferred

- Phase B bleed file: [path or `deferred`]  
- Wing periphery: [path/section or `deferred`]  
- Sibling seats: [do not absorb]

---

# Phase B — [Vexilla Latin] ↔ [World] culture bleed
*(separate file after Phase A is stable — same depth mandate for bleed mechanics)*

## B1. Ownership

| Layer | Owns | Does not own |
|-------|------|--------------|
| Populi ethnography | | |
| Vexilla | | |
| This bleed file | | |

## B2. Hard edges (do not merge)
1. Faith:
2. Verticals / keys:
3. Shame ≠ [local mortal sin]:
4. Bridge ≠ billet:
5. Xenos / civic hate ≠ Chapter geometry:

## B3. Side-by-side

| Topic | Populi | Vexilla |
|-------|--------|---------|
| Wall | | |
| Holy | | |
| Failure | | |
| Seat fortress / crypt | | |
| Legatus public read | | |
| Bridge / kitchen | | |

## B4. Bleed both ways

| Surface | → Vexilla | → populi |
|---------|-----------|----------|
| | | |

**Populi → Vexilla (short + deep examples):**  
**Vexilla → populi (short + deep examples):**

## B5. Class contact

| Class | Contact | Misread |
|-------|---------|---------|
| Rabble | | |
| Common | | |
| Upper (peak) | | |
| Bridge / lower upper | | |

## B6. Institutions at the seam

[Include Imperial orgs from Phase A §7A that actually touch the Chapter]

## B7. Fiction tells
- Mortal → Vexilla signal:
- Brother → populi signal:
- **Wrong:**
- **Right:**

## B8. Closed / deferred
- [ ]

---

# Phase C — Wing periphery
*(seat standard + one local delta; this Legatus wing only; stub depth allowed here only)*

**Rule:** Same civilization as seat world. Not other Legatus seats. Inherit Phase B; no separate wing bleed wiki unless ordered.

### [Body name]
- Scale & role:
- Fork (one line):
- Minor adds:
- Shard delta:
- Org footprint delta (if §7A status changes on this body):
```

---

**Use order per seat:** Phase A §0 → §§1–7A → §§8–9 → acceptance gate → Phase B → Phase C.
