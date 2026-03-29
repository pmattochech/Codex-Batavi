# AI prompts — Chapter & shoulder insignia (Batavian Iron-Guard)

**Use:** Paste into Gemini (or any image tool), or into web forms with “Chapter Insignia” / “Shoulder Insignia” fields.  
**Goal:** **Original** emblem art inspired by your lore — not a trace of Games Workshop decals. Iterate until you like it, then treat output as **draft** for manual cleanup in a vector editor.

**If the site forces “Space Wolves”:** Keep that selection only as a **menu hack**. Your text must **override** the style: explicitly say **not** Fenris, **not** furs and runes, **not** sky-blue wolf — **industrial forge-world** Imperial Chapter.

**Geometry rule (Batavi seal):** The **wolf’s head is built only from straight line segments and sharp angles** — polygonal / low-poly / “plasma-cut plate” look. **No curves** on the wolf (no circular muzzle, no smooth Bezier snout, no round ear tips). Optional: the **outer roundel border** alone may use circles as pure drafting geometry; everything **inside** stays rectilinear. **Waves** read as **angled zigzags or stepped lines**, not sine curves.

---

## Shared negatives (append to any prompt)

Use as a second paragraph or “negative prompt” field if the tool has one:

```text
Do NOT include: any moon, crescent moon, lunar disk, half-black-half-white circle, night sky, stars, Eye of Horus, serpents, Chaos stars, skulls as primary focus, totemic bones, wolf pelts hanging, snow, ice, Fenris runes, tribal knotwork, Space Wolves blue-grey wolf palette, cartoon style, photorealistic fur, 3D render look, text labels, watermark. On the WOLF only: no curves, no rounded muzzle, no smooth arcs, no circular eyes — only straight edges and sharp corners.
```

---

## Block A — Chapter insignia (master seal / roundel)

**Short version (fits small text boxes):**

```text
Imperial Space Marine chapter heraldry, flat 2D vector-style emblem, transparent background. Front-facing symmetrical wolf head made ONLY of straight line segments and sharp angles — polygonal faceted silhouette like machine-cut steel plate, low-poly military stencil; zero curved edges on the wolf (no round snout, no soft cheeks). Small eye slits as narrow angled cutouts or triangles. NO moon, NO crescent. Behind or beneath the wolf: one horizontal Roman gladius (already straight-edged) crossing the field. Bottom: water suggested by two or three ANGULAR zigzag or stepped horizontal lines — not smooth waves. Optional double circular BORDER only as thin rings; interior charges stay non-circular. Gunmetal grey + crimson accents optional. Forge-world industrial, not organic or tribal.
```

**Long version (Gemini / detailed tools):**

```text
Design a minimalist chapter seal for a loyalist Adeptus Astartes successor chapter. Central charge: a wolf’s head in strict front view, constructed EXCLUSIVELY from straight line segments meeting at sharp angles — a faceted polygonal silhouette (origami-fold or plasma-cut plate aesthetic). The entire wolf outline must have NO curved edges: no circular muzzle, no smooth jawline arcs, no rounded ear tips, no oval eyes. Use triangular or trapezoidal facets for cheeks and brow; ears as two sharp isosceles peaks. Readable at small shoulder-pad scale. Silhouette: black on transparent, or dark industrial grey.

Absolutely exclude any moon: no crescent, no white disk, no half-circle frame around the face.

Secondary charge: a single Roman gladius, perfectly horizontal, straight-edged rectangle or taper for the blade — passing behind the lower muzzle or under the jaw.

Tertiary charge: “water” as two or three parallel ZIGZAG or stepped broken lines under the gladius — angular only, no sine curves, no soft wave shapes.

Framing: optional concentric circles as the OUTERMOST border only (technical drafting rings). No circular shapes inside the field except that border.

Style: military insignia, NATO / armory stencil clarity, high contrast, flat fill (no gradients or very subtle). No text, no skulls, no totems, no snow, no runes. Mood: grim, machined, disciplined — Noviomagus forge world, not Fenris tribe, not organic wildlife art.
```

---

## Block B — Shoulder insignia (pauldron / simplified)

**Short version:**

```text
Simple shoulder-pad icon, transparent background, 2D flat heraldry. Frontal wolf head ONLY — silhouette built from straight lines and sharp angles only (polygonal / faceted), no curves on the wolf, no rounded snout. Small eyes as narrow angled slits or triangles. No moon, no crescent. Extremely legible at 10mm scale; chunky facets, not hair strands. Wolf only, no extra symbols. Loyalist industrial Space Marine, not Space Wolves tribal style.
```

**Slightly more detail (if the field is larger):**

```text
Adeptus Astartes right pauldron decal design. Single frontal wolf head emblem, symmetrical. Geometry: 100% rectilinear — only straight edges and sharp vertices forming a faceted wolf mask (think folded steel or vector polygons). No arcs, no Bezier curves, no circular features on the wolf. Cheek “fur” as a serrated row of short straight spikes. No crescent, no moon. Flat black fill, transparent background, print-sharp. Original geometry, not a copy of any official transfer.
```

---

## Tool notes (non-exhaustive)

| Tool | Notes |
|------|--------|
| **Gemini** (image in app / workspace) | Good for many quick variations; use the long prompt + negatives; ask for “flat vector style, transparent PNG”. |
| **Google AI Studio / Gemini API** | If you have access, same prompts; check regional image availability. |
| **Adobe Firefly** | Often conservative; good for “clean emblem” passes; commercial TOS may matter if you sell merch. |
| **Ideogram / Leonardo** | Strong for logo-like marks; add “minimal, corporate military insignia”. |
| **Midjourney** | Strong style control; use `--no moon, crescent, ...` style negatives in prompt. |

**After generation:** Trace winner in **Inkscape** (free) or Illustrator → **SVG** master. That becomes your real chapter asset; AI output is a sketch.

---

## One-line “style lock” for any tool

```text
Flat 2D military heraldry, frontal wolf head built only from straight lines and sharp angles (polygonal faceted silhouette, no curves on wolf), no moon no crescent, horizontal straight gladius optional, angular zigzag water lines only, transparent background, loyalist industrial forge-world chapter — not Space Wolves, not Sons of Horus.
```

---

**Cross-ref:** Canonical rules — [`../personae-command-index/intro-and-heraldry/intro-and-heraldry.md`](../personae-command-index/intro-and-heraldry/intro-and-heraldry.md) · paints — [`../visual-identity-paint-guide.md`](../visual-identity-paint-guide.md) · GW geometry refs (moon to strip) — [`reference-gw-luna-wolves-source/README.md`](reference-gw-luna-wolves-source/README.md).
