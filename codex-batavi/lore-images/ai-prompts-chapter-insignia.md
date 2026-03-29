# AI prompts — Chapter & shoulder insignia (Batavian Iron-Guard)

**Use:** Paste into Gemini (or any image tool), or into web forms with “Chapter Insignia” / “Shoulder Insignia” fields.  
**Goal:** **Original** emblem art inspired by your lore — not a trace of Games Workshop decals. Iterate until you like it, then treat output as **draft** for manual cleanup in a vector editor.

**If the site forces “Space Wolves”:** Keep that selection only as a **menu hack**. Your text must **override** the style: explicitly say **not** Fenris, **not** furs and runes, **not** sky-blue wolf — **industrial forge-world** Imperial Chapter.

---

## Shared negatives (append to any prompt)

Use as a second paragraph or “negative prompt” field if the tool has one:

```text
Do NOT include: any moon, crescent moon, lunar disk, half-black-half-white circle, night sky, stars, Eye of Horus, serpents, Chaos stars, skulls as primary focus, totemic bones, wolf pelts hanging, snow, ice, Fenris runes, tribal knotwork, Space Wolves blue-grey wolf palette, cartoon style, photorealistic fur, 3D render look, text labels, watermark.
```

---

## Block A — Chapter insignia (master seal / roundel)

**Short version (fits small text boxes):**

```text
Imperial Space Marine chapter heraldry, flat 2D vector-style emblem, transparent background. Front-facing symmetrical wolf head, angular geometric military stencil design (inspired by formal legion heraldry, not fantasy illustration). Solid black wolf silhouette with small white or negative-space slit eyes. NO moon, NO crescent, NO circular lunar phase split behind the head. Behind or beneath the wolf: one horizontal Roman gladius blade crossing the field edge-to-edge. Bottom of emblem: two or three simple horizontal wave lines suggesting water. Optional thin double circular border in black line art only. Color version alternate: industrial gunmetal grey wolf and crimson red accent on gladius hilt or wave crests only — plate reads cold and austere. Forge-world industrial aesthetic, not barbarian or shamanic.
```

**Long version (Gemini / detailed tools):**

```text
Design a minimalist chapter seal for a loyalist Adeptus Astartes successor chapter. Central charge: a wolf’s head in strict front view, built from sharp straight segments and tight curves — readable at small size on a shoulder pad. The wolf is a clean silhouette (black on transparent, or dark grey), with narrow aggressive eye slits. Absolutely exclude any moon shape: no crescent behind the ears, no white disk, no yin-yang style half circles framing the face.

Secondary charge: a single gladius sword laid perfectly horizontal, passing behind the lower part of the wolf’s muzzle or under the jaw — blade parallel to the bottom of the image.

Tertiary charge: a narrow band of stylized waves under the gladius — two parallel wavy lines, not ornate.

Framing: optional concentric circle outline (technical drafting style), no decoration inside the rings except the charges listed.

Style: military insignia, NATO-style clarity, high contrast, no shading gradients (or very subtle). No text, no skulls, no totems, no snow, no runes. Mood: grim, disciplined, industrial — Noviomagus forge world, not Fenris tribe.
```

---

## Block B — Shoulder insignia (pauldron / simplified)

**Short version:**

```text
Simple shoulder-pad icon, transparent background, 2D flat heraldry. Frontal wolf head only, angular geometric stencil, black silhouette, small white eye slits. No moon, no crescent, no halo. Extremely legible at 10mm scale. No extra symbols — wolf only. Loyalist Space Marine, industrial grimdark, not Space Wolves tribal style.
```

**Slightly more detail (if the field is larger):**

```text
Adeptus Astartes right pauldron decal design. Single frontal wolf head emblem, symmetrical, constructed from bold black shapes and cut negative space — same design language as formal legion transfers but original geometry. No crescent, no moon, no planetary disk, no starfield. No runes, no bones, no pelts. Flat color, transparent background, crisp edges for print. Scale-aware: keep cheek fur jags chunky, not fine hairs.
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
Flat 2D military heraldry, black silhouette frontal wolf head, no moon no crescent, horizontal gladius optional, minimal waves, transparent background, loyalist industrial Space Marine chapter — not Space Wolves, not Sons of Horus.
```

---

**Cross-ref:** Canonical rules — [`../personae-command-index/intro-and-heraldry/intro-and-heraldry.md`](../personae-command-index/intro-and-heraldry/intro-and-heraldry.md) · paints — [`../visual-identity-paint-guide.md`](../visual-identity-paint-guide.md) · GW geometry refs (moon to strip) — [`reference-gw-luna-wolves-source/README.md`](reference-gw-luna-wolves-source/README.md).
