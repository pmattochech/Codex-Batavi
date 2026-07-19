# Visual identity & paint guide — Batavian Iron-Guard

**Purpose:** Canonical **Citadel Colour** references for models, art commissions, and heraldry sheets.  

**Prose rule:** In chronicles and wiki narrative, prefer **generic descriptions** (*industrial grey* plate, *crimson* oath-tracery, *crimson* lenses) so text stays immersive. This file holds the **exact** paint names.

**Related:** [infantry-visual-identity.md](arsenal-and-logistics/infantry-visual-identity.md) — infantry breakdown; [dossier-alaric.md](personae-command-index/character-dossiers/triumvirate/dossier-alaric.md) — Castellan chassis; [dossier-drusus.md](personae-command-index/character-dossiers/triumvirate/dossier-drusus.md) · [dossier-varro.md](personae-command-index/character-dossiers/triumvirate/dossier-varro.md) — Triumvirate *Medicinae* / *Reclusiam*; [dossier-otho.md](personae-command-index/character-dossiers/council-orders/dossier-otho.md) · [dossier-kadmos.md](personae-command-index/character-dossiers/council-orders/dossier-kadmos.md) — Extended Council (*Librarium* / *Armourium*); § **Reference art** below for working PNGs; [intro-and-heraldry.md](personae-command-index/intro-and-heraldry/chapter-identity.md) — frontal wolf charge (**no lunar field**); [vexilla-by-vexillatio-design.md](personae-command-index/intro-and-heraldry/vexilla-by-vexillatio-design.md) — *Alabarda* / *justice* vexillum layout; GW silhouette refs in [`lore-images/reference-gw-luna-wolves-source/`](lore-images/reference-gw-luna-wolves-source/README.md).

---

## Base & accent (chapter battle plate)

| Role in scheme | Generic prose (use in fiction) | Citadel paint (models) |
|----------------|--------------------------------|-------------------------|
| Primary plate (~90% chassis) | **Industrial grey** ceramite | **Mechanicus Standard Grey** (often shortened *Mechanicus Grey* in hobby shorthand) |
| Accents — pauldrons, forearms, lenses, oath-tracery | **Crimson** / **blood-crimson** | **Mephiston Red** |

*Adjust shades with washes, edge highlights, and weathering per forge-world soot (Noviomagus industrial haze).*

---

## Chapter seal (roundel / transfer art)

Use for **2D seal**, **decal design**, and **AI prompt** alignment — distinct from “grey plate + crimson trim” on models.

**Approved rasters:** [`lore-images/chapter-seal-official.png`](lore-images/chapter-seal-official.png) — **primary chapter roundel** (author-approved framing from the IV *Quarta* vexillum art; **349×349** RGBA, **transparent outside the outer black ring** — tight square bound to the detected circle; re-run circle detect if you replace the source art). **Frame on this file:** **black** ring at the outer edge of the roundel (no separate outer crimson hairline — removed from source **2026-05-25**). **Do not** replace with an automated re-crop from [`vexillum-vexillatio-iv-quarta.png`](lore-images/vexillum-vexillatio-iv-quarta.png) unless you re-match this framing. Legacy / flat trace target (if present in your tree): [`lore-images/chapter-seal-canonical.png`](lore-images/chapter-seal-canonical.png). **Colour law** remains the table below — do not drift palette from this raster alone.

| Element | Generic prose | Citadel paint (reference) |
|---------|----------------|---------------------------|
| Roundel field (inside black frame ring) | **Crimson** / chapter red | **Mephiston Red** |
| Wolf silhouette | **White** | **White Scar** |
| Eyes (triangle lens: **105°** between **legs**, **not 90°** — **longer hypotenuse**; not equilateral) | **Helm-lens orange** / visor orange | **Troll Slayer Orange** (highlight **Fire Dragon Bright** if needed) |
| Frame ring (outer edge of roundel on approved raster) | **Black** stroke — crimson field inside, transparent outside | **Abaddon Black** (thick ring weight) |
| Double ring (ideal / AI prompt target) | Two **black** concentric strokes | **Abaddon Black** (both rings) |
| Gladius (blade + hilt body) | **White** fill | **White Scar** |
| Gladius contour (full sword) | **Black** outline on **blade and hilt** | **Abaddon Black** (thin outline) |
| Zigzag water lines | **Black** main zigzags + **white** (default) or **helm-lens orange** accent stripe — **not** crimson-on-red | **Abaddon Black** lines + **White Scar** or **Troll Slayer Orange** accent |

Pauldron **wolf-only** decal: **same white** wolf and **orange** lens triangles (**105°** leg corner) as the seal charge; field **crimson** on the pauldron or **transparent** transfer over crimson plate — not the full achievement roundel.

**Legatus *Alabarda Vexillum* panel:** Use **this seal palette** on the **vertical / pennant** banner. **Layout:** **four** registered fields per [vexilla-by-vexillatio-design.md](personae-command-index/intro-and-heraldry/vexilla-by-vexillatio-design.md) — chapter achievement, **Roman** numeral, theater icon, success (*Prima*: **obligation field** only — symbolic geometry, **no** traitor slogans; **§2.2** induction/debt framing). *Decima* **justice** panel (wolf slain by sword) is a **different** brief — same file §4. Abbreviated wolf composition allowed where scale demands; **no** alternate chapter colours or charges. Mount and furl: *Armourium* field spec; base law [`intro-and-heraldry.md`](personae-command-index/intro-and-heraldry/chapter-identity.md).

**Prompts / generation:** [`lore-images/ai-prompts-chapter-insignia.md`](lore-images/ai-prompts-chapter-insignia.md).

---

## Reference art (working)

AI-generated **starting points** for commissions, paint tests, and SM2/mod facsimiles — dossier and encyclopedia prose stay authoritative where they specify mechanics or heraldry law.

| Subject | File | Notes |
|---------|------|--------|
| **Chapter seal — B&W (Illustrator)** | [`lore-images/chapter-seal-official-bw-8192.png`](lore-images/chapter-seal-official-bw-8192.png) · [`chapter-seal-official-bw-8192-pure.png`](lore-images/chapter-seal-official-bw-8192-pure.png) · [`chapter-seal-official-bw-8192-on-white.png`](lore-images/chapter-seal-official-bw-8192-on-white.png) · [`chapter-seal-official-bw-8192.svg`](lore-images/chapter-seal-official-bw-8192.svg) | **8192×8192** Lanczos upscale from [`chapter-seal-official.png`](lore-images/chapter-seal-official.png), then B&W: **white** = wolf + gladius fill; **black** = rings, waves, contour strokes. **8192.png** = smooth gray anti-alias (best **Image Trace**). **pure** = hard B&W without blocky pixels. **SVG** = potrace starter. Avoid **4096-crisp** (nearest-neighbor — pixelated at zoom). |
| **Varro** (Master Chaplain / Judex) | [`lore-images/varro-chaplain-judex.png`](lore-images/varro-chaplain-judex.png) | Absolute black plate, crimson pauldrons + gauntlets, rib-grille chest, cowled **Executor** wolf-skull; jaw **incense** exhaustors; **fire-orb** eyes (no red lenses); pack **thurible** at halo position + flanking **candles**; Furor stripe on skull. **All full Chaplains:** shared wolf-skull + red lenses. **Mortivigils:** human death-skull + orange lenses. Full spec: [`dossier-varro.md`](personae-command-index/character-dossiers/triumvirate/dossier-varro.md) §2–§3 · [`mortivigil-and-reclusiam-helm-law.md`](personae-command-index/doctrine-and-organs/mortivigil-and-reclusiam-helm-law.md). |
| **Drusus** (Chief Apothecary) | [`lore-images/drusus-chief-apothecary.png`](lore-images/drusus-chief-apothecary.png) | Grey base, surgical white right arm / helm / pack, crimson pauldrons (white edge right), multi-lens helm, Furor stripe, red left gauntlet. [`dossier-drusus.md`](personae-command-index/character-dossiers/triumvirate/dossier-drusus.md) §2–§3. |
| **Otho** (Chief Librarian / Blood Augur) | [`lore-images/otho-chief-librarian.png`](lore-images/otho-chief-librarian.png) | Grey–crimson *Librarius*, third-eye cluster, stave. [`dossier-otho.md`](personae-command-index/character-dossiers/council-orders/dossier-otho.md) §2–§3. |
| **Kadmos** (Master of the Forge) | [`lore-images/kadmos-master-of-the-forge.png`](lore-images/kadmos-master-of-the-forge.png) | Mark III iron bulk, bronze cyber-arm, sapphire lens, mecadendrites, bronze trim. [`dossier-kadmos.md`](personae-command-index/character-dossiers/council-orders/dossier-kadmos.md) §1. |

---

## Notes

- **Batavi / Batavian** on the table: grey is the “iron” and civic burden; crimson is “blood of the root” — the civilian line the wall exists to shield (see infantry identity doc).
- Non–Firstborn / specialist units may add approved tertiary marks; record deviations here when they become standard.

---

*Last aligned with narrative glossary: generic colour wording in [GLOSSARY-EN.md](GLOSSARY-EN.md).*
