# Hand-made visuals — plan (backlog / not canon)

**Goal:** Produce **Batavi** imagery **without generative-AI as the first step**: minis, flat seal / transfer art, or traditional/digital drawing/painting that you **author** line-by-line. (Repo still keeps [`lore-images/ai-prompts-chapter-insignia.md`](lore-images/ai-prompts-chapter-insignia.md) for **optional** tooling later — this plan does **not** depend on it.)

**Colour / geometry law:** [`visual-identity-paint-guide.md`](visual-identity-paint-guide.md) · **canonical seal raster:** [`lore-images/chapter-seal-canonical.png`](lore-images/chapter-seal-canonical.png) · infantry read: [`arsenal-and-logistics/infantry-visual-identity.md`](arsenal-and-logistics/infantry-visual-identity.md). **Legatus vexilla (nine + justice):** [`personae-command-index/intro-and-heraldry/vexilla-by-vexillatio-design.md`](personae-command-index/intro-and-heraldry/vexilla-by-vexillatio-design.md).

**Downstream:** Finished **flat** masters feed [`HERALDRY-INGAME-PLAN.md`](HERALDRY-INGAME-PLAN.md) (texture export) and documentation screenshots.

---

## 1. Pick a lane (one at a time)

| Lane | Output | Best for |
|------|--------|----------|
| **A. Miniature painting** | 28–32 mm **grey + crimson** battle-brother (+ optional seal freehand on pauldron) | Table identity, photography for wiki / social |
| **B. Flat seal / decal art** | **Vector or high-res raster** matching `chapter-seal-canonical.png` | Transfers, T-shirts, in-game texture source |
| **C. Sketch / illustration** | Scene or character study (ink, pencil, digital brush) | Chronicles mood boards, commissions |

- [ ] Choose **A**, **B**, or **C** for your **first** finished artifact.

---

## 2. Lane A — mini painting (outline)

- [ ] **Models:** any **Primaris-scaled** marine you already own; convert bits sparingly — grey armour + red shoulder is the read.
- [ ] **Palette:** **Mechanicus Standard Grey** + **Mephiston Red** (+ black/orange for seal details per paint guide table).
- [ ] **Technique:** base → shade → edge highlight; **matte** finish reads more “industrial” than glossy parade.
- [ ] **Photo:** diffuse daylight or softbox; **neutral grey** backdrop; capture **front ¾** and **pauldron close-up**.
- [ ] **Doc:** drop exports under `lore-images/` only when you want them versioned — otherwise keep local until happy.

---

## 3. Lane B — flat seal / transfer (outline)

- [ ] **Trace don’t guess:** lock **proportions** to `chapter-seal-canonical.png` (wolf frontal, **105°** lens triangles, double ring, gladius, zigzag water).
- [ ] **Vector (SVG / PDF):** Inkscape / Illustrator — scalable for print and game power-of-two exports.
- [ ] **Raster (PNG):** Krita / GIMP — work at **≥ 2048×2048** for headroom; export **transparent** pauldron-only variant (wolf + eyes, no red field) per paint guide.
- [ ] **Print test:** home printer on paper before **decal sheet** spend — line weight must survive reduction.

---

## 4. Lane C — drawing / illustration (outline)

- [ ] **Brief:** one concrete frame (e.g. “Castellan silhouette + forge haze,” “seal as banner”).
- [ ] **Medium:** pencil → ink, or **digital** with pressure-sensitive brush (still **hand** strokes).
- [ ] **Canon hygiene:** cross-check silhouettes against [`intro-and-heraldry.md`](personae-command-index/intro-and-heraldry/intro-and-heraldry.md) — **frontal wolf**, no accidental Luna Wolves moon cues unless intentional pastiche.

---

## 5. Hygiene (all lanes)

- **No “AI first”:** if you later use prompts, treat output as **reference**, not shipping art — hand revision required for canonical geometry.
- **Version:** file name with date or `v2` when geometry changes (`chapter-seal-hand-YYYYMMDD.png`).
- **Backlog link:** when Lane **B** is clean, open [`HERALDRY-INGAME-PLAN.md`](HERALDRY-INGAME-PLAN.md) §2–§3 for DDS.

---

## 6. Done for this backlog slice

- [ ] **One** finished artifact in the lane you chose (photo, exported PNG/SVG, or scan), **or**
- [ ] Dated note: blocked on supplies / commission queue — next action named.

---

*Last reviewed: 2026-03-28.*
