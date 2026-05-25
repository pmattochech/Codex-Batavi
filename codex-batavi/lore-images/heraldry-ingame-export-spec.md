# Heraldry in-game export spec (SM2 / Anubian template)

*Tooling — not in-universe canon. Companion to [`HERALDRY-INGAME-PLAN.md`](../HERALDRY-INGAME-PLAN.md) and [`SM2-ASTARTES-MOD-PLAN.md`](../SM2-ASTARTES-MOD-PLAN.md).*

**Master raster:** [`chapter-seal-official.png`](chapter-seal-official.png) (primary approved roundel). Legacy alias in some plans: `chapter-seal-canonical.png` — use **official** if only one file is present.

**Template extract (local):** [`../../tools/Anubian Decal/`](../../tools/Anubian Decal/) — Night Lords shoulder slots from Nexus mod pattern (see HERALDRY plan §6, mod 205).

**Colour law:** [`../visual-identity-paint-guide.md`](../visual-identity-paint-guide.md)

---

## 1. Source → TGA (Session B)

| Step | Action |
|------|--------|
| **1a** | Open **chapter-seal-official.png**; fit artwork to **1024×1024** RGBA (power-of-two; leave clean alpha outside roundel if pauldron metal shows through). |
| **1b** | Export **`d_shldr_night_lords_01.tga`** → copy into **`LSHLDR/`** (left shoulder). |
| **1c** | Export **`d_shldr_night_lords_02.tga`** → copy into **`RSHLDR/`** (right shoulder). |
| **1d** | Mirror or duplicate **`_cc`** colour companion files if you replace palette-driven mips (`d_shldr_night_lords_01_cc.tga`, `02_cc.tga`). On first pass, **keep stock `_cc` + `.pct_mip` mips** until in-game read is validated — then regenerate mips if your pipeline supports it. |

**Geometry lock:** frontal black wolf, crimson roundel field, **105°** lens triangles, white horizontal gladius + contour, wave charge — per [`../personae-command-index/intro-and-heraldry/chapter-identity.md`](../personae-command-index/intro-and-heraldry/chapter-identity.md).

---

## 2. Thumbnail validation

- View export at **64×64** and **128×128** — wolf silhouette and roundel must remain legible (Armouring Hall distance).
- Compare under **neutral** and **warm** lighting in-game after inject — albedo can lie under forge orange.

---

## 3. Inject into game

### 3.1 Pak layout (Anubian / Night Lords shoulder template)

**Prerequisite:** [PakCacher](https://www.nexusmods.com/warhammer40000spacemarine2/mods/65) (verify compatibility with **your** SM2 build — see HERALDRY plan §0).

1. Path: `…/Space Marine 2/client_pc/root/paks/client/default/default_pct_0` (open with 7-Zip).
2. Open inner **`pct/`** folder.
3. From template, drag **all files inside** `LSHLDR/` and `RSHLDR/` (not the folder names alone) into `pct/` — **Add and replace** when prompted.
4. Close archive; run **PakCacher** on `default_pct_0`; launch game.

**Files per side (template):**

- `d_shldr_night_lords_01.tga` / `02.tga` — albedo/decal source you replace
- `d_shldr_night_lords_01_cc.tga` / `02_cc.tga` — colour companion (optional first pass)
- `d_shldr_night_lords_01_*.pct_mip` / `02_*.pct_mip` — mip chain (keep from template until you regenerate)

**Install note (mod author):** see [`../../tools/Anubian Decal/README.txt`](../../tools/Anubian Decal/README.txt).

---

## 4. Done criteria

- [ ] Both shoulders show **Batavi** roundel in Armouring Hall on target armor set
- [ ] No purple/missing texture (mip or `_cc` mismatch)
- [ ] Progress logged in [`HERALDRY-INGAME-PLAN.md`](../HERALDRY-INGAME-PLAN.md) bottom table
