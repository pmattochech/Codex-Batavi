# Batavi waterslide transfers — Inkscape workspace

**Plan law:** [`../../planning/BATAVI-TRANSFER-DECALS-PLAN.md`](../../planning/BATAVI-TRANSFER-DECALS-PLAN.md)  
**Seal master (left pauldron wolf):** [`../chapter-seal.svg`](../chapter-seal.svg) · raster [`../chapter-seal.png`](../chapter-seal.png)

Inkscape is installed on this machine (`inkscape` 1.4.x).

---

## Files

| File | Content |
|------|---------|
| [`batavi-transfer-sheet-01-roles-A4.svg`](batavi-transfer-sheet-01-roles-A4.svg) | Wolf import slots · pure-line **arrow / crossed arrows / inverted V / command** × **I–X** |
| [`batavi-transfer-sheet-02-cohorts-knees-A4.svg`](batavi-transfer-sheet-02-cohorts-knees-A4.svg) | Cohort colour discs + **I–X** placeholders · knee **Line / Sgt / Lt / Capt** |
| `modules/` | Optional: export single glyphs here later |

Page size: **A4 (210×297 mm)**. Preview background is **dark** so **white** transfers read; glyphs are white for crimson pauldron print.

---

## Buy vs print

Roman **I–X** already exist as commercial waterslide decals — buy those; spend Inkscape time on **Batavi-only** art.

### Buy (recommended for numerals)

| Product | Notes | Where |
|---------|--------|--------|
| **Ginfritter’s Roman Numeral I–X** | I–X; **white** (also black / gold / blue / red) | [ginfritter.com](https://ginfritter.com/roman-numeral-i-x-decal/) · [Armorcast](https://armorcast.com/roman-numeral-i-x-decal-waterslide-decals/) |
| **Green Stuff World — Roman Numerals** | Opaque colour sheets; ~28–54 mm; 2× A5 | Search **GSW-SAD-2592** / [kutami listing](https://www.kutami.de/en/greenstuff-world/waterslide-decals-roman-numerals) |
| **The Mighty Brush — Legion Numerals** | Silk-screen Romans **I–XX**; A6 packs | [themightybrush.com](https://www.themightybrush.com/product/legion-numerals/) |

**GW option (heavier / not I–X-only):** Ultramarines Legion Transfer Sheet or HH *Legiones Astartes Infantry Markings* — numerals exist inside Ultramarine / Legion kits; awkward if you only want white Romans for a custom chapter.

**On the model:** white Roman **on** (or centred over) the printed role / cohort mark on the **right** pauldron. Greaves/knees still get **no** numerals.

### Print yourself (Inkscape sheets)

| Asset | Why print |
|-------|-----------|
| **Left** frontal wolf | Chapter seal — not on shelf as Batavi |
| **Right** role glyphs | ↑ / crossed arrows / ∨ / command |
| **Right** cohort charges | Silence / Shadows / Stasis / Nullity |
| **Knees** | Line / Sgt / Lt / Capt chevrons |

Sheet **01** still includes Roman *placeholders* for fused “number inside glyph” art if you want one-piece transfers later; **default path** = buy Romans + print shapes.

### Skip buying for

Fused **role+Roman inside one transfer**, Batavi wolf, cohort icons — rare / none as ready Batavi product.

---

## Open in Inkscape

```bash
cd /home/paulom/Codex-Batavi/codex-batavi/lore-images/transfers
inkscape batavi-transfer-sheet-01-roles-A4.svg &
inkscape batavi-transfer-sheet-02-cohorts-knees-A4.svg &
```

Also open the seal for cloning:

```bash
inkscape ../chapter-seal.svg &
```

---

## Session checklist (do in order)

### 1. Left wolf
1. In `chapter-seal.svg`, select the **wolf + eyes** (or flatten a clean seal).  
2. Copy → paste into sheet **01** circle slots (S/M/L).  
3. Scale to fit; keep **white** wolf / **orange** eyes if printing colour waterslide; for one-colour white sheets, flatten to white silhouette.  
4. Duplicate as many as you need for a squad crate.

### 2. Pure-line roles (sheet 01)
- Glyphs already match Codex/UM grammar: **↑** · **crossed arrows** · **∨** · **command**.  
- Romans are **text** — before final print: select all Roman objects → **Path → Object to Path**.  
- Optional assault alt: redraw as **crossed gladii** on a duplicated assault row (plan §10).

### 3. Cohorts (sheet 02)
- Replace **ICO** discs with drawn charges from [`specialty-cohorts.md`](../../arsenal-and-logistics/specialty-cohorts.md):  
  Silence eye-wolf · Shadows skull+gladii · Stasis fist+gladius · Nullity chains+hourglass.  
- Keep field colours; keep **white Roman**.

### 4. Knees
- Chevrons / captain bar ready — **no numerals**.  
- Duplicate across the sheet for print volume.

### 5. Export
| Target | Action |
|--------|--------|
| Home print / proof | **File → Export** → PNG · **300 dpi** · transparent background |
| Print shop | **Save a Copy** → PDF (or PNG 300 dpi) · say “waterslide / decal paper, white ink if available” |
| Single glyph | Select group → Export selection |

**Layers** (Objects panel): Guides · Wolf · Roles / Cohorts · Knees · Notes — hide Guides before export.

---

## Do not

- Put Romans on greaves/knees.  
- Put role arrows on cohort pads.  
- Commit huge PNG proofs unless useful — prefer SVG masters in git.

---

*Starter SVGs generated July 2026 — refine art in Inkscape; laws stay in the planning doc.*
