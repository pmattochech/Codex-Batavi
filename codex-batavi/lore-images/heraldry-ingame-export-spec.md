# Heraldry in-game — Batavi export spec (tooling / not in-universe canon)

**Parent plan:** [`../HERALDRY-INGAME-PLAN.md`](../HERALDRY-INGAME-PLAN.md)  
**Colour / geometry law:** [`visual-identity-paint-guide.md`](../visual-identity-paint-guide.md)

### Source raster — **only** chapter icon in repo

The **only** image asset for this pipeline is **[`chapter-seal-canonical.png`](chapter-seal-canonical.png)**. That file **is** the **chapter seal** and the **chapter icon** (roundel, frontal wolf, gladius, waves — per the paint guide). There is **no** separate “game icon” file: you **resize / letterbox** (if needed) into the **1024×1024** square the **Anubian** template expects, then export **TGA** into `LSHLDR` / `RSHLDR`.

*Prompts for future variants (optional, not a second canonical source):* [`ai-prompts-chapter-insignia.md`](ai-prompts-chapter-insignia.md).

This file is a **checklist** for turning that **one** PNG into game-ready files. **Mip / `.pct_mip`** rules come from the **Anubian** template (§3.1).

---

## 1. Deliverables (from `chapter-seal-canonical.png` only)

| Step | Output | Notes |
|------|--------|--------|
| **1a** | Working **1024×1024** master (PNG or straight in editor) | **Scale** canonical seal to fit **square** canvas (template TGA size). If aspect differs, use **letterboxing** (transparent or neutral) or **slight scale-to-fit** — check **thumbnail** at 128². |
| **1b** | **`d_shldr_night_lords_01.tga`** + **`d_shldr_night_lords_02.tga`** | Export **RGBA TGA**, **1024×1024**, matching the Anubian filenames in **`LSHLDR`** / **`RSHLDR`**. **Left vs right:** you may use the **same** bitmap for both at first; mirror one side later if the UV looks wrong. |
| **1c** | **`_cc` pair** | First pass: **duplicate** your colour TGA to `*_cc.tga` **or** keep the mod’s original `_cc` files until in-game tests show you need a custom mask — behaviour is material-dependent. |

**Optional later:** a **wolf-only** transparent PNG derived from the same canonical art (for other UVs or prints) — **not** required for the current shoulder swap.

**Optional resolution:** `2048×2048` only if you adopt a template that demands it; Anubian sample is **1024²**.

---

## 2. Art checks (block TGA export until passed)

- [ ] **Thumbnail test:** scale to **128×128** — wolf still reads **frontal**, not “blob.”  
- [ ] **No lunar crescent** — already excluded in canonical seal; do not reintroduce when resizing.  
- [ ] **Alpha:** if you use **letterbox**, keep **clean** edges (no grey fringe on transparent bands). Full **opaque** crimson roundel on a square is valid.  
- [ ] **sRGB:** treat **`chapter-seal-canonical.png`** as **sRGB** unless you intentionally linearise for a specific tool chain.

---

## 3. Engine / packaging (fill from your template mod)

### 3.1 Captured template — **Anubian Decal** (Night Lords shoulder swap)

*Matched to extracted folder layout (Nexus **Ordo Necromantium** / Night Lords–slot decals; same author pattern as mod **205**).*

| Item | Detail |
|------|--------|
| **Base colour** | **TGA**, **1024×1024**, **RGBA** (verified on-disk), RLE TGA on sample |
| **Companion channel / mask** | Parallel `*_cc.tga` per shoulder (same resolution) |
| **Mip payloads** | Nine files per stream: `*_1.pct_mip` … `*_9.pct_mip` (and `*_cc_1` … `*_cc_9`) — **do not omit** when repacking; sizes follow a 1024² BC-style mip ladder (~1 MiB → 16 B) |
| **Left shoulder files** | `d_shldr_night_lords_01.tga`, `d_shldr_night_lords_01_cc.tga`, + mips `d_shldr_night_lords_01_[1-9].pct_mip`, `d_shldr_night_lords_01_cc_[1-9].pct_mip` |
| **Right shoulder files** | `d_shldr_night_lords_02.tga`, `d_shldr_night_lords_02_cc.tga`, + matching `_02` mip set |
| **In-archive path** | Open game **`default_pct_0`** with 7-Zip → inside, the **`pct/`** folder — drop **all** listed files into `pct/` (**add + replace**). Then run archive through **[PakCacher](https://www.nexusmods.com/warhammer40000spacemarine2/mods/65)** per mod README. |
| **Game path (Windows / Steam)** | `…/Space Marine 2/client_pc/root/paks/client/default/` |
| **Linux / Proton** | Same layout under the game’s install prefix (e.g. Steam library `Space Marine 2/client_pc/root/paks/client/default/`). Use **7z** on `default_pct_0` as on Windows. |

**Batavi workflow:** Raster source = **[`chapter-seal-canonical.png`](chapter-seal-canonical.png)** only → scale to **1024×1024 RGBA TGA** → replace `d_shldr_night_lords_01.tga` / `02.tga` (and **`_cc`** per §1c). **Mip regeneration:** if the game glitches after a TGA-only swap, the **`.pct_mip`** blobs may need **SM2-community tooling** (author Discord / modding hub). Test after each change.

| Field | Your value (project) |
|-------|----------------------|
| Compression (engine-facing) | **`.pct_mip`** (proprietary mip payload; TGA = author-facing source) |
| Mip generation | Regenerate with community tool if TGA-only swap fails — **TBD** |
| Target filenames | **Keep** `d_shldr_night_lords_01*` / `02*` unless you learn a rename map |
| Art tool | Krita / GIMP → **TGA RGBA 1024²** |

**Typical UE note:** In-game may still read as **Night Lords** in the Armouring Hall picker — only the **bitmap** changes.

---

## 4. Version log

| Date | Game patch | Template mod used | Notes |
|------|------------|-------------------|--------|
| 2026-03-29 | (user) hotfix 12.2 | Anubian Night Lords shoulder pack (local extract) | Folder `LSHLDR` / `RSHLDR` + README → `default_pct_0` / `pct/` |

---

*Last reviewed: 2026-03-29. **Single source:** `chapter-seal-canonical.png` = chapter icon.*
