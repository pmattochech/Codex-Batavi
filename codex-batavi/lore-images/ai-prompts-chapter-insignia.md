# AI prompts — Chapter & shoulder insignia (Batavian Iron-Guard)

**Use:** Paste into Gemini, Imagen, Midjourney, site forms (“Chapter Insignia” / “Shoulder Insignia”), etc.  
**Goal:** **Original** emblem art for your lore — not a reproduction of official transfer sheets. Treat outputs as **drafts**; finalize in Inkscape / Illustrator as **SVG**.

**Canonical approved seal (raster):** [`chapter-seal-canonical.png`](chapter-seal-canonical.png) — **definitive** Batavian chapter roundel for commissions, decals, and **SVG trace**; use it as the visual lock when prompts or generators drift. New AI runs are **optional** variants unless you are refreshing geometry.

**Dropdown hack:** If the tool only offers “Space Wolves,” keep it as menu filler. The **text** must override: **loyalist forge-world Chapter**, **not** Fenris tribal, **not** blue-grey Space Wolves palette.

**Chapter seal vs shoulder pad — same chapter, same wolf:** The **pauldron badge is not a different emblem.** It is the **same primary charge** (rectilinear frontal wolf) as the full **chapter seal**, usually **reduced** for scale: drop or minimize the **horizontal gladius** and **zigzag water** on the shoulder so the wolf stays legible at ~10 mm. Geometry and angles should **match** the seal’s wolf — one vector family, two deployments (full achievement vs compact). Company, squad, or campaign marks are **additive** elsewhere on the plate, not replacements for the chapter wolf.

**Silhouette first (chapter seal):** AI output often over-draws **interior white hairlines** (brow, muzzle, every tooth, cheek hatching) — that reads busy and is hard to paint small. Prefer **solid fills** and a **clean outer contour**: **no** decorative strokes inside the black wolf. **Eyes** are **filled orange triangles** — **105°** between **legs** (**not 90°**), **long hypotenuse**; see **Eye geometry** below (not equilateral, not white almond slits). **Gladius:** **white** fill with **black outer contour** on **blade and hilt**; **at most one** straight interior fuller if needed; avoid decorative interior line clutter on the blade.

**One continuous wolf (no inner islands):** The head must be **one merged black shape** from ears through cheeks to snout. **Forbidden:** white **gaps** or “rivers” between **lower cheeks and muzzle** (snout must not float as a separate island); **forehead V / chevron** carved into the fill; **inner-ear** white outlines (ears are solid triangles, not hollow outlines); **any** interior stroke that **splits** the face into multiple black regions. **Eyes:** two **orange triangles** (geometry per **Eye geometry** below), placed symmetrically — **overlaid** on the black mask or **cut through** black with orange behind; **no** other holes through the wolf (prefer **fully closed** muzzle).

**Seal field (disc interior):** The area **inside** the double ring = **solid crimson / red** chapter field (**not** white). Wolf, gladius, and waves sit **on top** of that red. (Exporting a **transparent** PNG is fine **outside** the outer ring; the **roundel interior** stays red for the canonical seal look.)

**Wolf proportions (ears + muzzle):** Ears should read as **tall narrow triangles** (or tall isosceles wedges) with **sharp apices** — not short trapezoids or **blunt flat ear tips**. Muzzle / mouth zone: **elongated** — the snout projects **further forward and downward** toward the gladius (stack of straight-edged planes or a clear wedge), so the face is **less “wide stamp / flat block”** and more **long-snouted predator**, still 100% rectilinear.

**Triangular head, lean cheeks:** The **overall mask** should read **triangular / delta** — **broadest** at the **ear line** (or upper skull), then **narrows** toward the **muzzle**; the **jaw/cheek line must not** be the **widest** part of the head (avoid “fat cheeks” / diamond-hex silhouette). **Implied fur:** **minimal** — at most **1–2 short** outer notches per side, or **almost straight** cheeks with **tiny** kinks; **avoid** three or more **large** sawteeth that **flare** the face outward. Longer, **narrower** snout wedge preferred over a **wide** flat mouth line.

**Seal palette (refinement):** **Interior field** (inside double ring) = **solid red / crimson** (chapter red — e.g. **Mephiston Red** on the table). **Wolf head** = **solid black** (**#000**). **Eyes** = two **orange** triangles per **Eye geometry** (below). **Gladius** — **solid white** (blade + hilt body); **black contour / outline** on **both blade and hilt** (outer edge of whole sword). **Double ring** (two concentric circles) = **black** strokes. **Waves** (zigzags) = **black** main lines; **accent stripe** = **white** (high contrast on crimson — **do not** use crimson/red accent on red field) or **helm-lens orange** to match eyes. **Do not** recolor the wolf to grey. Cross-ref: [`../visual-identity-paint-guide.md`](../visual-identity-paint-guide.md) (seal subsection).

**Eye geometry (90° → 105°, longer hypotenuse):** Each eye is one **filled orange** triangle built like a **right-triangle lens**: the two **shorter sides** (the “legs”) meet at a corner that would be **90°** in a square-corner badge — here it is **105°** instead (**15° more open**). The side **opposite** that corner is the **hypotenuse** (long chord across the lens); opening **90° to 105°** with the same legs **lengthens** that hypotenuse. **Do not** draw **90°** right-angle eyes. Eye marks **moderately large** on the face, mirrored left/right, **helm-lens orange**. **Exclude:** **90°** corner, **equilateral** 60° eyes, needle slits, almond / rhombus lenses.

---

## Master instruction (always include)

Every prompt below assumes this rule — you can paste it **once** at the top of any generation:

```text
MASTER GEOMETRY — NON-NEGOTIABLE:
The wolf’s head is drawn ONLY with straight line segments meeting at sharp angles. Polygonal / faceted / low-poly / plasma-cut steel stencil. ZERO curves on the wolf: no circular muzzle, no smooth Bezier snout, no rounded ear tips, no oval or round eyes. **Eyes = two ORANGE triangles:** corner where **two legs** meet = **105°** (not **90°** — that opening **lengthens** the **hypotenuse** opposite). **Larger** than tiny dots — symmetrical. **Not** white, **not** almond slits, **not** equilateral, **not** 90° right-angle lenses. Ears = **two tall sharp triangles** (clear apex each side), not blunt trapezoid caps. Muzzle = **elongated narrow wedge** (forward/down projection), rectilinear only — avoid a **wide** flat muzzle with no length. **Head silhouette = triangular taper:** widest near **ears**, **narrows** toward snout — **not** widest at fluffy cheeks. Cheek “fur” = **minimal** — **0–2 very short** outer notches per side OR near-straight cheek edges; **no** heavy multi-tooth sawtooth ruffs. Optional perfect circles allowed ONLY as the outer seal border (concentric rings); everything inside the border stays rectilinear. “Water” = zigzag or stepped horizontal lines (angular), never smooth sine waves.

SEAL FIELD: Inside the double ring, background = **solid crimson / red** (not white).

INTERIOR DETAIL — SPARSE + CONTIGUOUS: wolf = **one single connected solid black** region — **topologically one piece** except eye zones resolved as **orange triangles (105° between legs, longer hypotenuse — not 90°)** (overlay or punch + orange behind). **No** internal white **lines** and **no** internal white **gaps** in the black fur mass. Specifically **forbid:** forehead V or brow chevron; lines separating snout from cheeks; **inner-ear** white tracing; gaps between cheek spikes and muzzle so the snout looks detached. Prefer **closed solid muzzle** (no mouth hole). Gladius: **white** blade and hilt fill; **black contour** around **entire** sword (blade + hilt). Optional **one** thin interior fuller on blade (dark line). **Double ring: black.** **Waves: black** + **white** or **orange** accent (not crimson on red).
```

---

## Negative prompt (append after master instruction)

```text
EXCLUDE: moon, crescent, lunar disk, half-black half-white roundel, night sky, stars, Eye of Horus, Chaos symbols, skull as main charge, bones, pelts, snow, ice, Fenris runes, knotwork, Space Wolves feral style, cartoon, photoreal fur, glossy 3D render, text, watermark. On the wolf specifically: any arc, curve, or ellipse — forbid all curved edges on the animal silhouette. Also exclude: busy interior line art, hairline “technical drawing” strokes inside the wolf, multiple nested outlines on snout or brow, individual drawn teeth as white linework, cross-hatching inside the main charges. **Continuity:** forehead V/chevron on the wolf, **inner-ear** white outlines, **white gaps** between cheeks and muzzle (floating snout), stray interior holes **other than** the two **orange eye triangles (105° not 90°)**. **Seal:** **white** roundel interior when a **red field** is required; **white** or almond **eyes** when **orange 105°-leg-corner (not 90°) hypotenuse-long** eyes are required. Proportions: **blunt / flat-topped ears**, **squashed wide muzzle** with almost no snout projection. Silhouette: **puffy / fat cheeks**, **jaw wider than ear span**, **three or more large cheek spikes** per side, **hex or diamond** head shape (widest at jowls).
```

---

## Chapter insignia — short (small text boxes)

```text
[MASTER GEOMETRY — NON-NEGOTIABLE: wolf head = only straight lines + sharp angles, polygonal faceted silhouette, no curves on wolf; angular zigzag water; circles only as outer border if any.]

Loyalist Adeptus Astartes chapter seal, flat 2D. **Inside double ring: solid CRIMSON / RED field** (not white). Frontal symmetrical wolf: machine-cut stencil — **one continuous solid BLACK fill** (merged ears–cheeks–snout); **eyes = two ORANGE triangles:** **105°** where the **two legs** meet (**not 90°**) so the **hypotenuse** opposite is **long**; **bigger** on the mask; symmetrical — **not** white slits, **not** equilateral. **No** inner white lines on wolf, **no** forehead V, **no** inner-ear outlines, **no** gaps between cheeks and muzzle. **Sharp tall triangular ears**; **triangular overall head** (lean cheeks, **minimal** fur notches). **Elongated narrow rectilinear snout** toward the blade. No moon. Horizontal Roman gladius: **white** (blade + hilt), **black outline on blade and hilt**. Below: angular zigzag water **black** + **white** or **orange** accent stripe (not crimson on red). **Black** double ring. **Wolf black, field red, eyes orange, white gladius with black edge, black rings and black waves.** Forge-world grimdark, not tribal.
```

---

## Chapter insignia — long (Gemini / detailed generators)

```text
[MASTER GEOMETRY — NON-NEGOTIABLE: wolf head = only straight lines + sharp angles, polygonal faceted silhouette, no curves on wolf; angular zigzag water; circles only as outer border if any.]

Create an original minimalist military emblem for a loyalist Space Marine successor chapter (Batavian Iron-Guard tone: cold, industrial, mathematical).

COMPOSITION:
0) FIELD — Area inside the **double circular border** = **solid crimson / red** (chapter red field). **Not** white.

1) PRIMARY — Wolf head, strict front view, perfectly symmetrical. Build the **outer** silhouette from straight segments only: **ears = tall narrow triangles or isosceles wedges with sharp apices** (legible points at the top — **not** short trapezoids with blunt flat ear tips). **Brow / cranium:** trapezoid or faceted block. **Muzzle / snout:** **elongated** — the lower face extends **noticeably forward and down** toward the gladius (wedge or stacked trapezoids), so the mask reads **long-snouted**; avoid a **wide shallow** muzzle that ends in one flat horizontal edge with no projection. Faceted muzzle = **few large flat planes** (low-poly) forming a **longer, narrower** wedge toward the gladius — avoid a **broad** snout that ends in one **wide** horizontal edge. **HEAD SHAPE:** outer contour reads **triangular / delta** — **maximum width** at **ear tips** or upper skull, then **inward slant** to muzzle; **cheeks must not** bulge wider than that upper width. **Cheek “fur” = minimal:** **at most 1–2 short** straight outer notches per side, **or** subtly angled **nearly straight** cheek lines — **not** a dense row of **large** sawteeth (no “fat fluffy” jowl). **EYES:** two triangles, mirrored left/right, **moderately large** on the face — **filled warm ORANGE** (helm lens / visor orange). **Geometry (90° → 105°):** the two **legs** meet at **105°** — **not** **90°** (square corner). That opening **lengthens** the **hypotenuse** (the side **opposite** that corner) vs a right-angle lens. **Not** equilateral (60°), **not** thin almond slits, **not** literal **90°** right-angle eyes. **CONTINUITY — CRITICAL:** ears, brow, cheeks, and muzzle form **one single merged black polygon** (or union with **zero** bogus gaps between them). **No** forehead V or chevron; **no** white line separating snout from cheeks; **no** inner-ear white tracing; **no** channel between lower cheek and muzzle that detaches the snout. **Avoid** a “diagram” look: no web of white lines inside the black. Mouth: **closed** solid muzzle preferred. Every outer boundary of the wolf must be piecewise-linear — if you see a curve, redraw it as 3–6 short straight cuts.

2) SECONDARY — One gladius: laid exactly horizontal, crossing behind the wolf’s lower face or under the chin. **Colors:** **white** fill on blade and entire hilt; **black contour / stroke** around the **full** sword silhouette (blade perimeter + hilt). Optional **one** thin dark center fuller on blade.

3) TERTIARY — Water: two or three horizontal bands of connected zigzags (┌┐┌┐ pattern) or stepped square waves — **black** main zigzag lines; **accent** = **thin white** stripe (default — reads on crimson) **or** **orange** (match eyes). **No crimson/red** accent on the red field. No smooth waves.

4) FRAME — Two concentric **black** circular strokes forming the seal edge (inner + outer ring). No disks, moons, or half-circles behind the wolf’s head.

STYLE: Flat vector heraldry, high contrast, **large solid fills**, no gradients (or minimal). **COLOR:** **roundel interior = crimson / red**; wolf = **pure black**; eyes = **orange triangles (105° leg corner, longer hypotenuse — not 90°)**; gladius = **white + black contour (blade + hilt)**; **double ring = black**; waves = **black** + **white or orange** accent (not crimson). Wolf = **one black stencil** + **orange triangle eyes** (not white voids). No lettering. No organic illustration. Mood: Noviomagus forge logic, not Fenris myth, not traitor Legion.

OUTPUT: Flat 2D chapter seal; **red field inside rings**; outside outer ring may be transparent for PNG export if needed.
```

---

## Shoulder insignia — short (pauldron only)

```text
[MASTER GEOMETRY — NON-NEGOTIABLE: wolf = straight lines + sharp angles only, polygonal faceted head, zero curves on the wolf.]

Tiny shoulder-pad decal, 2D flat, **transparent background** (no red field on pauldron unless artist wants full colour). Same chapter identity as the full seal: PRIMARY frontal wolf only — same geometry, scaled down, NO gladius, NO water. **One contiguous solid BLACK wolf**; **eyes = two ORANGE triangles** — **105°** where legs meet (**not 90°**), **long hypotenuse**; match seal / helm lens orange — **not** white, **not** equilateral. No inner lines or cheek–snout gaps. **Triangular taper, lean cheeks, minimal fur notches.** No moon, no crescent. Loyalist industrial Space Marine; not Space Wolves tribal; not photoreal.
```

---

## Shoulder insignia — long

```text
[MASTER GEOMETRY — NON-NEGOTIABLE: wolf = straight lines + sharp angles only, polygonal faceted head, zero curves on the wolf.]

Design the COMPACT pauldron version of the same chapter badge: one frontal wolf mask only — NOT a different symbol. Use the SAME rectilinear wolf design language as the full chapter seal (same facet angles, same ear and muzzle logic), only omit secondary charges (no gladius, no water) so it reads at small size.

The wolf must be a **single connected** closed polygonal silhouette — **solid black** on transparent — **one contiguous black fill**; **eyes** = **two orange triangles** — **105°** leg junction (**not 90°**), **long hypotenuse** — same as chapter seal, **helm lens orange**, symmetrical. **No** inner white lines, **no** gaps between cheeks and snout, **no** inner-ear outlines. Construct exclusively from straight edges meeting at vertices. Ears: **two tall sharp triangles**. Muzzle: **elongated** — projects **forward/down**. **Match chapter seal: black wolf, orange eyes (90→105 geometry), not grey, not white eyes.**

Cheek detail: **minimal only** — **0–2 tiny** outer notches per side **or** almost straight cheeks; **same triangular taper** as the seal (ears widest, muzzle narrower). **No** heavy multi-spike fluffy ruff.

Forbidden: crescent, moon, disk behind head, runes, skulls, fur texture, curves, splines, airbrush, 3D bevel, interior white strokes, floating snout separated by background gaps.

Output: bold, print-safe, original geometry — must pair visually with the full seal’s wolf if shown side by side.
```

---

## “Enhance prompt” add-on (if the site has a button)

Paste after the tool rewrites your text:

```text
Re-insert this constraint verbatim: Wolf silhouette must remain 100% rectilinear — only straight line segments and sharp angles, polygonal facets, no curved edges anywhere on the wolf. Water must be zigzag only. No moon. **Seal interior = solid RED field** inside rings. Wolf = **one connected solid BLACK shape**; **eyes = two ORANGE triangles** — **105°** between **legs** (**not 90°**) so **hypotenuse** is **long**, **not** white slits; **no** inner white lines on wolf, **no** forehead V, **no** inner-ear outlines, **no** white gaps between cheeks and muzzle. Gladius **white** with **black contour on blade and hilt**; **rings black**; waves **black** + **white or orange** accent. Ears = **sharp triangular points**; overall head = **triangular taper**; muzzle = **elongated narrow** snout.
```

---

## One-line locks (quick retry)

**Chapter (full seal):**

```text
Chapter seal: RED field inside double ring; rectilinear black wolf; ORANGE eye triangles (105° not 90°, visor orange); **white gladius** + **black contour blade+hilt**; **black** double ring; **black** zigzag waves + **white or orange** accent (not crimson on red); no moon; flat 2D loyalist forge-world emblem.
```

**Shoulder (compact — same wolf as seal):**

```text
Same rectilinear polygonal frontal wolf as chapter seal, compact pauldron crop: wolf only, no gladius no waves, straight edges sharp corners, **orange eye triangles** (105° not 90° leg corner, match seal), no moon, black wolf on transparent, 10mm legible.
```

---

## Web form: “Space Wolves successor” (dropdown hack)

**In the tool:** Set **Chapter** = **Space Wolves** (or “successor / successor chapter” if available).  
**In the text boxes:** Paste the blocks below so the art is **not** Fenris — **loyalist forge-world successor**, rectilinear wolf, **no moon**, Batavian heraldry (gladius + angular water).

### Field — “Chapter Insignia” (paste entire block)

```text
CONTEXT: Loyalist Adeptus Astartes chapter presented in records as a Space Wolves successor (shared gene-line symbolism), but culture and heraldry are NOVIOMAGUS FORGE-WORLD — cold industrial, mathematical, not Fenris tribal. No wolf pelts, no runes, no snow, no sky-blue feral palette. **Chapter seal palette:** **interior of double ring = solid crimson / red field**; **wolf = solid black**; **eyes = two ORANGE triangles** — **105°** leg corner (**not 90°**), **long hypotenuse**, helm lens / visor orange; **gladius = white** (blade + hilt) with **black contour on entire sword** (blade + hilt); **double ring = black**; **waves = black** with **white** (default) or **orange** accent stripe — **not** crimson on red field. (Battleplate elsewhere stays gunmetal — this field is the **emblem** only.)

MASTER GEOMETRY — NON-NEGOTIABLE: The wolf’s head uses ONLY straight line segments meeting at sharp angles — polygonal / faceted / plasma-cut steel stencil. ZERO curves on the wolf (no round muzzle, no smooth snout, no rounded ears). **Eyes = two orange triangles:** **105°** where **two legs** meet (**not 90°**) → **longer hypotenuse**; larger than tiny chips (not white, not almond slits). Cheek detail = **minimal** — **0–2 short** outer notches per side or **near-straight** cheeks; **not** a row of **large** fluffy sawteeth. “Water” = zigzag or stepped lines only, never smooth waves. Perfect circles allowed ONLY as the outer double-ring border of the seal, not behind the wolf’s head.

SILHOUETTE: Wolf is **one continuous solid BLACK fill** (ears + cheeks + muzzle **merged** — **no** white gaps between cheek and snout, **no** floating snout island). **No** interior white strokes on the black mass. **Orange triangle eyes** (**105°** leg corner **not 90°**, long hypotenuse) placed symmetrically. Gladius: **white** blade and hilt; **black outline** around **whole** sword (blade + hilt); optional thin darker blade fuller.

PROPORTIONS: **Ears — tall sharp triangles** (clear pointed tips), not blunt trapezoid ear tops. **Head silhouette — triangular:** widest at **ears / upper skull**, **tapers inward** to a **narrower** muzzle; **avoid fat cheeks** (jaw **not** the widest part). **Muzzle — longer, narrower** snout projecting forward/down toward the blade (wedge / stacked planes), not a short **wide** “stamp” face.

DESIGN THE CHAPTER SEAL: Flat 2D vector-style emblem, **high contrast**. **Inside the double ring: solid RED / crimson roundel field** — **not** white. Front-facing symmetrical wolf head (primary charge). No moon, no crescent, no half-black-half-white disk, no lunar phase roundel — those are explicitly forbidden. Horizontal Roman gladius — **white** fill, **black contour** on **blade and hilt**. Below: angular zigzag water **black** + **white** or **orange** accent. Concentric **black** double ring. Style: military stencil, armory insignia, grimdark industrial loyalist — NOT Sons of Horus, NOT Chaos, NOT cartoon.

EXCLUDE: Eye of Horus, Chaos marks, skull as main icon, bones, totems, photoreal fur, 3D glossy render, text, watermark, any curved edge on the wolf silhouette, busy interior line art / technical-diagram hatching inside the wolf or blade, blunt flat ear tips, squat wide muzzle with no snout length, inner-ear white tracing, forehead chevron on wolf, internal white gaps / disconnected snout, puffy cheek ruffs / many large sawteeth, jaw wider than ear span, hex-or-diamond wolf head (widest at jowls), **grey or charcoal wolf head**, **white interior inside rings** (must be **red field**), **white or almond eyes**, **equilateral 60° eyes**, **90° right-angle** eye corners (must be **orange: 105° between legs, long hypotenuse**), **crimson or grey gladius** (must be **white** + **black contour blade+hilt**), **white double ring** (rings must be **black**), **crimson wave accent on red field** (use **white or orange** accent).
```

### Field — “Shoulder Insignia” (paste entire block)

```text
CONTEXT: Same loyalist chapter as above — Space Wolves successor on paper, Noviomagus industrial forge-world in heraldry. NOT Fenris: no runes, no tribal knots, no pelt, no blue-grey Space Wolves style wolf.

MASTER GEOMETRY — NON-NEGOTIABLE: Wolf head = ONLY straight lines and sharp corners — polygonal faceted frontal mask, zero curves on the animal. **Eyes = orange triangles** (**105°** leg corner **not 90°**, long hypotenuse — match seal). **Lean cheeks** — **minimal** outer notches only (same triangular taper as seal); **no** heavy sawtooth fluff.

SHOULDER DECAL: This is the SAME chapter badge as the full seal, REDUCED — the identical rectilinear frontal wolf (same silhouette logic as “Chapter Insignia”), only without gladius and without water so it fits a small pauldron. NOT a different emblem or alternate wolf design. **Solid black** wolf on **transparent** background; **orange triangle eyes** (**105°** between legs, **not 90°**, long hypotenuse) — **not** white. Legible when tiny. Flat 2D heraldry, print-sharp edges, original geometry (not a copy of official transfers).

EXCLUDE: Curves on the wolf, moon, crescent, runes, snow, cartoon style, photoreal fur, text, watermark, interior white lines on wolf, gaps between cheeks and muzzle (non-contiguous snout), **white eyes**, **90°** right-angle eye corners, equilateral 60° eyes, skinny acute-only eye slits.
```

**After “Enhance Prompt” (if the tool rewrites you):** paste the **Enhance prompt add-on** from the section above so rectilinear + no-moon stay locked.

---

## Gemini — full paste (image generation)

Use in **Google Gemini** when you have **image output** enabled (Imagen / Nano Banana / whatever image model your account shows). Send **one** user message; if the app allows **image attachments**, read **Reference images** below first.

**Canonical seal palette (lock this in Prompt A):** crimson/red **field** inside the rings · **black** wolf (one piece) · **orange** triangle eyes (**105°** leg corner, **not** 90°) · **white** gladius with **black outline on blade and hilt** · **black** double ring (both circles) · **black** zigzag waves + **white** (default) or **orange** accent stripe — **never** crimson/red accent on the red field.

### Should you attach Luna Wolves reference PNGs?

| Attach? | When it helps | Risk |
|--------|----------------|------|
| **Optional** | You want “frontal wolf attitude” (snout width, ear height, symmetry) | Those sheets are **curved** and **moon-backed** — the model may **copy curves** or **bring the moon back** unless you override hard in text. |
| **Skip** | You want the **strict rectilinear** look with zero debate | Text-only is often **cleaner** for polygon wolves. |

**If you attach 1–3 refs:** Add this line **above** the main prompt in the same message:

```text
REFERENCE IMAGES: Official-style Legion decals for MOOD AND POSE ONLY — frontal wolf facing camera. You must NOT copy them. REDRAW from scratch: (1) remove every moon, crescent, and split black/white disk; (2) replace ALL curved edges on the wolf with STRAIGHT LINE SEGMENTS and SHARP ANGLES only (polygonal / faceted). Output must be original geometry suitable for a homebrew chapter, not a duplicate of the reference artwork.
```

**Repo copies of those refs (optional upload):** [`reference-gw-luna-wolves-source/`](reference-gw-luna-wolves-source/README.md)

---

### Prompt A — Chapter seal (paste into Gemini)

```text
Generate a flat 2D chapter emblem image (original design, not copying any existing decal). **Square composition**, emblem **centered**, **flat vector-style fills**, **no** photoreal texture, **no** strong gradients.

SETTING: Loyalist Adeptus Astartes successor chapter with Space Wolves gene-line symbolism on paper, but culture is a cold INDUSTRIAL FORGE-WORLD (Noviomagus tone) — not Fenris, no runes, no pelts, no snow, no sky-blue feral wolf palette.

FIELD: Everything **inside** the inner circular border = **solid crimson / red** roundel background (**not** white). Wolf, gladius, and waves sit **on** that red. The **two concentric circular borders** framing the seal = **BLACK** strokes only (**not** white rings — white is for the gladius fill and optional wave accent only).

MASTER GEOMETRY — NON-NEGOTIABLE: The wolf’s head is built ONLY from straight line segments meeting at sharp angles — polygonal / low-poly / plasma-cut steel stencil. ZERO curved edges on the wolf (no round muzzle, no smooth jaw, no rounded ears). **Eyes = two triangles**, mirrored left/right, **filled warm ORANGE** — **helm lens / visor orange**. **Geometry:** like a **right-triangle lens**, but the corner where **two legs** meet is **105°**, **not 90°** — that **widens** the corner **15° past square** and **lengthens** the **hypotenuse** (side opposite that corner). Triangles **larger** on the face than tiny chips. **Not** **90°** right-angle eyes, **not** equilateral (60°), **not** white, **not** almond slits, **not** crimson **eye fill**. Cheeks = **minimal** — **0–2 short** straight outer notches per side **or** nearly straight cheek lines; **forbid** a **wide** multi-spike “fluffy” ruff. **Frame:** two perfect concentric circles as **thin BLACK line** rings (inner + outer) — **no** moon, **no** crescent, **no** disk or halo behind the wolf’s head.

SILHOUETTE PRIORITY: The wolf must be **one contiguous solid BLACK region** — the entire head (ears through snout) is **a single merged fill** (**#000**). **Strictly forbid:** any white **line** inside the black (forehead V, cheek–snout dividers, inner-ear outlines); any **gap** that **separates** the muzzle from the cheeks (no “floating” snout). No cross-hatching. Mouth: **closed** solid muzzle **strongly preferred**. Gladius: **white** (blade + hilt); **black contour** around **entire** sword; optional **one** thin dark center fuller on blade.

WOLF PROPORTIONS: **Ears** = **tall narrow triangles** with **sharp apices** (clear points), not short trapezoids with flat tops. **Snout / muzzle** = **elongated and comparatively narrow** — projects further **forward and downward** toward the gladius (straight-edged wedge or low-poly stack); **not** a **broad** snout ending in a **wide** flat mouth line.

HEAD SILHOUETTE: **Triangular / delta read** — **widest** at **ear span** (or just below), then **tapers inward** toward the muzzle. **Do not** make **cheeks / jaw** the **broadest** part of the head (no “fat fluffy” jowls). **Reduce implied fur:** fewer, **smaller** cheek spikes — **prefer** **1–2 tiny** notches per side over **three+ large** teeth.

COMPOSITION: (1) **Field:** red roundel inside the **black** rings. (2) Primary: frontal symmetrical wolf head — **solid black** fill + **orange triangle eyes** (**105°** between **legs**, **not 90°**, **long hypotenuse**). (3) Secondary: one horizontal Roman **gladius** behind or under the lower jaw — **white** blade and hilt with **continuous black outline** around the **entire** sword (blade edge + hilt); optional **one** thin dark center fuller on the blade. (4) Tertiary: two or three parallel **ANGULAR** zigzag / stepped lines under the gladius (water) — **BLACK** main strokes + **one** thin **WHITE** (preferred for contrast on red) **or** **ORANGE** accent stripe parallel to the zigzags — **do NOT** use crimson or red for the wave accent (invisible on red). **No** smooth sine waves. (5) Frame: **black** double ring (both circles).

STYLE: Military insignia, stencil / transfer art, **large flat fills**, **maximum contrast** on crimson. **Palette recap:** **Mephiston-style red** field · **pure black** wolf · **orange** eyes · **white** gladius + **black** perimeter on whole sword · **black** rings and **black** wave lines · wave accent **white or orange** only. No text, no skulls, no Chaos, no Eye of Horus, no cartoon, no photoreal fur, no 3D gloss.

EXCLUDE: moon, crescent, lunar disk, half-black-half-white roundel, curved wolf outline, Bezier snout, oval or almond eyes, **white eyes**, **equilateral 60° eye triangles**, **90° right-angle eye corners**, Fenris tribal decoration, watermark, technical-drawing interior strokes inside the wolf, multiple nested white outlines on snout, individual tooth linework, blunt ear tips, squat muzzle / no snout projection, forehead V on wolf, inner-ear white outlines, white gaps between cheeks and muzzle / disconnected snout, wide fluffy cheek sawteeth, jaw wider than ears, hex/diamond wolf head widest at jowls, **grey wolf head**, **white interior inside the rings** (must be **red field** — **ring strokes are black**), **crimson or grey gladius**, **white ring border**, **crimson wave accent on red field** (use **black rings**, **black waves**, **white or orange** accent, **white gladius** with **black edge** whole sword).
```

**Follow-up** (if the first image is wrong): *“Regenerate: wolf must be 100% straight-line polygon facets, zero curves on the animal; still no moon.”*  
**Follow-up** (if it’s too busy): *“Same composition, but simplify: wolf is **solid black** with almost **no** interior white lines. Remove brow lines, nose-bridge hatching, and individual tooth outlines. **Eyes stay orange: 105° between legs (not 90°), long hypotenuse.** Gladius solid or one center line only.”*  
**Follow-up** (ears + muzzle): *“Keep everything else the same palette and layout. Redraw the wolf: **ears taller and more triangular** with **sharp points**; **lengthen the muzzle / mouth zone** so the snout projects further down toward the gladius — still rectilinear, still solid black, **orange eyes (105° not 90°)**.”*  
**Follow-up** (continuity / inner noise): *“Same overall wolf shape, palette, gladius, waves, and ring. **Merge the wolf into one solid black mass:** remove **all** interior white lines (forehead V, inner-ear outlines, snout–cheek dividers). **Close every gap** between cheeks and muzzle. **Eyes = orange triangles, 105° leg corner** (not white voids). Muzzle fully **closed** — no mouth gap.”*  
**Follow-up** (colors): *“**Exact same geometry.** **Inside rings: solid red field** (not white). Wolf **solid black**. **Eyes:** **105°** leg corner (**not 90°**), visor orange. **Gladius: white** with **black outline on blade AND hilt**. **Double ring: black.** **Waves: black** zigzags with **white** or **orange** accent stripe (**not** crimson on red).”*  
**Follow-up** (triangular head / lean cheeks): *“Keep one solid black wolf, **red field**, **orange eyes (105° not 90°)**. **Reshape the head more triangular:** **widest at the ears**, then **taper inward** to a **narrower** muzzle. **Reduce cheek fur** — **smaller** spikes, **fewer** of them. **Lengthen the snout** as a **narrower** wedge toward the gladius.”*  
**Follow-up** (eyes only): *“Same image. **Eyes only:** each eye = orange triangle where the **two shorter sides** meet at **105°** (**not 90°**) — that makes the **hypotenuse** (opposite that corner) **longer**. **Bigger** on the mask. **Not** equilateral (60°); **not** thin slanted slits.”*  
**Follow-up** (gladius + rings + waves): *“Same composition. **Gladius:** **white** fill; **black contour** around **entire** sword (blade + hilt). **Double ring:** **black** (both circles). **Waves:** **black** lines; accent stripe **white** or **orange** (visible on red — **not** crimson). Keep **red field**, **black wolf**, **orange eyes**.”*

---

### Prompt B — Shoulder icon only (second message or new chat)

```text
Generate a flat 2D shoulder-pad decal: COMPACT version of the same chapter emblem as before — the SAME rectilinear frontal wolf head (same polygonal geometry / facet style as the full seal you generated), only cropped to the wolf alone for small pauldron use. Do NOT invent a different wolf design.

Same loyalist forge-world successor tone — not Fenris tribal.

MASTER GEOMETRY — NON-NEGOTIABLE: Wolf silhouette uses ONLY straight edges and sharp vertices — polygonal faceted mask. No curves on the wolf. **Eyes = orange triangles** — **105°** between **legs** (**not 90°**), **long hypotenuse** — match seal / helm lenses. Omit gladius and water on this asset (they stay on the full seal only). Border circle optional only if it helps print; no moon.

**Solid black** wolf on **transparent** background if possible (match seal geometry — **not** grey); must stay legible when very small. No moon, no crescent, no runes, no text, no photoreal fur.
```

**Same-chat tip:** Generate **Prompt A** first, then send Prompt B adding: *“Use the exact same wolf shape as in the previous image, simplified to wolf-only for shoulder.”*

---

## Tools (brief)

| Tool | Tip |
|------|-----|
| **Gemini** | Use **Prompt A** / **Prompt B** in the section above; add reference-image disclaimer only if you upload refs. |
| **Imagen** (via Gemini) | Same prompts; ask for “square image, centered emblem, flat colors.” |
| **Midjourney** | Append: `no curves, no rounded shapes, straight line polygon wolf --no circle, moon, crescent` (tune as needed). |
| **Firefly / Ideogram / Leonardo** | Add “technical stencil, origami polygon logo, straight-edge only.” |

**After:** Trace the best frame in **Inkscape** → true SVG; AI output is reference only.

---

**Cross-ref:** Heraldry canon — [`../personae-command-index/intro-and-heraldry/intro-and-heraldry.md`](../personae-command-index/intro-and-heraldry/intro-and-heraldry.md) · **Legatus vexillum panels** (four-field register, *Prima* obligation §2.2, *Decima* justice charge) — [`../personae-command-index/intro-and-heraldry/vexilla-by-vexillatio-design.md`](../personae-command-index/intro-and-heraldry/vexilla-by-vexillatio-design.md) · colours — [`../visual-identity-paint-guide.md`](../visual-identity-paint-guide.md) · GW ref captures (moon stripped in final art) — [`reference-gw-luna-wolves-source/README.md`](reference-gw-luna-wolves-source/README.md).
