<<<<<<< HEAD
# Space Marine 2 — Batavi via Additional Chapters (active path)

**Preferred path (Astartes + AC):** [`sm2-batavi-ac-overlay/`](sm2-batavi-ac-overlay/) — fills blank **SH User 01** pauldrons (`d_shldr_user_texture_01*`). Shoulders only.

**Stack:** Astartes Overhaul → `sh0030_bridge…` → `sh0100_additional_chapters` → `sh0110_batavi_shoulders`.

**Your next step:** TexMipper on `sm2-batavi-ac-overlay/tga/*.tga` → copy mips to `stage/pct/` → `./run pack`.

Author recipe lives in the AC download: `Your Own Pauldrons and Greaves.txt`.
=======
# Space Marine 2 — Batavi Decal Workbook

*Tooling — not in-universe canon. Companion to [`sm2-batavi-decal/README.md`](sm2-batavi-decal/README.md), [`../codex-batavi/lore-images/heraldry-ingame-export-spec.md`](../codex-batavi/lore-images/heraldry-ingame-export-spec.md), [`../codex-batavi/planning/HERALDRY-INGAME-PLAN.md`](../codex-batavi/planning/HERALDRY-INGAME-PLAN.md).*

**Master raster:** [`../codex-batavi/lore-images/chapter-seal.png`](../codex-batavi/lore-images/chapter-seal.png) (1024×1024).  
**Working tree:** [`sm2-batavi-decal/`](sm2-batavi-decal/)  
**TexMipper handoff:** [`sm2-batavi-decal/TEXMIPPER-HANDOFF.md`](sm2-batavi-decal/TEXMIPPER-HANDOFF.md)  
**Night Lords size / mip template:** [`Anubian Decal/`](Anubian%20Decal/)

---

## 0. Runtime — Linux first, Windows via WSL

| Host | How you run the pipeline |
|------|--------------------------|
| **Linux** | `cd tools/sm2-batavi-decal && ./run <cmd>` |
| **Windows** | `cd tools\sm2-batavi-decal` then **`run.cmd <cmd>`** (always enters WSL). `.ps1` files only wrap WSL — do not expect native PowerShell logic. |

```bat
REM Windows (cmd / PowerShell) — WSL only:
run.cmd prepare-tga newslot
run.cmd clone-sso
run.cmd pack batavi_heraldry
```

```bash
# Linux or already inside WSL:
./run prepare-tga newslot
./run clone-sso
./run pack batavi_heraldry
```

**Deps:** `python3` only (stdlib PNG→TGA + ZIP store). Optional: `python3-pil` or ImageMagick for higher-quality resize.

---

## 0.1 How SM2 loads your files

| Concept | Meaning |
|---------|---------|
| **VFS** | Mods override vanilla by supplying **whole files** at the same relative paths. No delta patches. |
| **Textures** | Albedo/decal **`.tga`** + mip chain **`.pct_mip`** (under `pct/`). |
| **Selectable slots** | SSO libraries under `ssl/body/customization/` — especially `customization_decal_library.sso`. |
| **Test** | `<SM2>/client_pc/root/local/` (mirror game paths). |
| **Ship** | `client_pc/root/mods/*.pak` — ZIP archive, compression **Store** (`zip -0`), **lowercase** name. |
| **Obsolete** | Pre-7.0 hex-edit of vanilla paks + CRC matching for new work. |

**External tools:**

| Tool | Use |
|------|-----|
| [TexMipper](https://github.com/vash2pid/texmipper) | `.tga` ↔ `.pct_mip` (Windows/.NET; see handoff for Wine / hybrid) |
| [PakCacher](https://www.nexusmods.com/warhammer40000spacemarine2/mods/65) | Only if you still inject into vanilla `default_pct_#` / `default_other.pak` |
| `zip` / 7-Zip | Pack script uses Linux `zip -0` |

---

## Path A — Replace an existing decal

**Result:** Night Lords (or any chosen slot) shows Batavi art. UI still says the vanilla chapter name.

### A1. Prep art

```bash
cd tools/sm2-batavi-decal
./run prepare-tga replace
# Windows: run.cmd prepare-tga replace
```

Writes Night Lords filenames into `tga/replace/`:

- `d_shldr_night_lords_01.tga` (left)
- `d_shldr_night_lords_02.tga` (right)

Optional first pass: leave Anubian `_cc` + existing `.pct_mip` until albedo reads correctly in-game.

### A2. TexMipper

See [`sm2-batavi-decal/TEXMIPPER-HANDOFF.md`](sm2-batavi-decal/TEXMIPPER-HANDOFF.md). Copy `*_#.pct_mip` into `stage/pct/`.

### A3. Install (pick one)

**Preferred — local test:**

```bash
./run install-local "/path/to/Space Marine 2"
# WSL -> Windows Steam example:
# ./run install-local "/mnt/c/Program Files (x86)/Steam/steamapps/common/Space Marine 2"
```

**Ship:**

```bash
./run pack batavi_nightlords_replace
# copy pack/batavi_nightlords_replace.pak -> client_pc/root/mods/
```

### A4. Validate

- Armouring Hall → Night Lords shoulder slot → Batavi roundel on L/R.
- Thumbnail at distance; neutral + warm lighting.
- No purple/missing texture (mip / `_cc` mismatch).

---

## Path B — True new Armouring Hall slot

**Result:** A selectable entry that is **not** Night Lords (own IDs / display name), textures named `d_shldr_batavi_01` / `02`.

**Hard rule:** Texture replace alone never creates a new UI slot. You must ship modified SSO libraries (+ textures).

### B1. Drop SSO template (blocking input)

Extract **one** of:

1. Vanilla from `default_other.pak` → `ssl/body/customization/`
2. Or the same files from a current **Additional Chapters**-class pack

Place them here:

```
tools/sm2-batavi-decal/ssl-template/
  customization_decal_library.sso
  armor_color_library.sso                    (optional but recommended)
  global_armor_color_pattern_library.sso     (optional but recommended)
```

### B2. Clone Batavi entries

```bash
./run clone-sso
# smoke test: ./run clone-sso "$PWD/fixtures/ssl-template"
```

Writes patched libraries to `stage/ssl/body/customization/` and `ssl-clone-report.md`.

- Clones a Night Lords (or first matching) shoulder-decal block.
- Rewrites IDs / display strings toward **Batavi** / **Cohors Batavorum**.
- Points texture refs at `d_shldr_batavi_01` / `d_shldr_batavi_02`.

**If the clone heuristic misses:** open the report, manually finish the SSO edit, then re-run pack.

### B3. Prep art (new basenames)

```bash
./run prepare-tga newslot
```

Writes into `tga/newslot/`:

- `d_shldr_batavi_01.tga`
- `d_shldr_batavi_02.tga`

### B4. TexMipper + resource sizing

1. Size law: **1024×1024** (Night Lords / Anubian).
2. New basenames may need matching `.resource` entries — see handoff §B4 / workbook notes in handoff.
3. Copy all `.pct_mip` (+ TGA) into `stage/pct/`.

### B5. Install

```bash
./run install-local "/path/to/Space Marine 2"
# or
./run pack batavi_heraldry
cp pack/batavi_heraldry.pak "<SM2>/client_pc/root/mods/"
```

### B6. Validate (true-add acceptance)

- [ ] Armouring Hall shows a **new** entry (Batavi / Cohors Batavorum — not Night Lords).
- [ ] Selecting it applies Batavi shoulders L/R.
- [ ] Vanilla Night Lords (if still present) unchanged.
- [ ] No crash / missing purple textures.

### B7. Conflict with Astartes / Additional Chapters

Merge **only** the three customization SSO files — do not blindly overwrite entire `ssl/` trees. Alphabetical mod load order: first mod wins on conflicts.

---

## Fallback — Named faux-add

If SSO/resource registration fails on your patch:

1. Keep Path A texture pipeline (or overwrite a spare vanilla slot).
2. Edit SSO to **rename the display string** of that spare slot to Batavi.
3. Document which vanilla ID you consumed in `ssl-clone-report.md`.

---

## Operator checklist (full Path B)

| Step | Who | Done |
|------|-----|------|
| Drop SSO into `ssl-template/` | You | ☐ |
| `./run clone-sso` (or `run.cmd`) | Script / you if manual fix | ☐ |
| `./run prepare-tga newslot` | Script | ☐ |
| TexMipper + copy mips to `stage/pct/` | You | ☐ |
| `./run install-local` or copy to `local/` | You | ☐ |
| `./run pack batavi_heraldry` → `mods/` | Script + you | ☐ |
| In-game validation §B6 | You | ☐ |

---

## Progress log

| Date | Game patch | Path | Notes |
|------|------------|------|-------|
| 2026-07-16 | — | Pipeline scaffolded | Workbook + scripts; fixture SSO clone verified |
| 2026-07-16 | — | Linux / WSL port | `./run` + `run.cmd`; `.ps1` are WSL wrappers only |

---

*Last updated: 2026-07-16.*
>>>>>>> c11ba74 (Add SM2 Batavi shoulder-decal toolkit and workbook.)
