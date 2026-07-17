# SM2 Batavi Decal Pipeline (Linux / WSL)

Local tooling to ship **Cohors Batavorum** shoulder heraldry into *Warhammer 40,000: Space Marine 2*.

**Runtime:** Linux-native (`bash` + `python3`). On Windows, **always use WSL** via `run.cmd` (or the `.ps1` wrappers, which only call WSL).

| Doc | Role |
|-----|------|
| [`../SM2-BATAVI-DECAL-WORKBOOK.md`](../SM2-BATAVI-DECAL-WORKBOOK.md) | Path A / Path B operator guide |
| [`TEXMIPPER-HANDOFF.md`](TEXMIPPER-HANDOFF.md) | TexMipper + install (you run) |

| Path | Goal |
|------|------|
| **A — Replace** | Overwrite Night Lords textures; UI still says Night Lords |
| **B — New slot** | Clone SSO + `d_shldr_batavi_*` textures; true Armouring Hall entry |

---

## Environment rule

| Host | How to run |
|------|------------|
| **Linux** | `./run <command> …` from this directory |
| **Windows** | `run.cmd <command> …` (forces WSL) — do **not** run bash logic in native PowerShell |

```bat
REM Windows (PowerShell or cmd) — always WSL:
cd tools\sm2-batavi-decal
run.cmd prepare-tga newslot
run.cmd clone-sso
run.cmd pack batavi_heraldry
```

```bash
# Linux or already inside WSL:
cd tools/sm2-batavi-decal
chmod +x run bin/*.sh lib/*.py
./run prepare-tga newslot
./run clone-sso
./run pack batavi_heraldry
```

---

## Dependencies (Linux / WSL)

```bash
sudo apt update
sudo apt install -y python3
# optional higher-quality TGA resize:
# sudo apt install -y python3-pil
# or: sudo apt install -y imagemagick
```

Core pipeline needs only **python3**. TGA export uses Pillow / ImageMagick when present, otherwise a **stdlib PNG decoder** (nearest-neighbor resize).

TexMipper itself is a Windows/.NET tool — on pure Linux you may need Wine, a Windows VM, or run TexMipper once on Windows and copy `.pct_mip` into `stage/pct/` (paths stay Linux-friendly). See [`TEXMIPPER-HANDOFF.md`](TEXMIPPER-HANDOFF.md).

---

## Layout

```
sm2-batavi-decal/
  run                 # Linux / WSL entrypoint
  run.cmd             # Windows -> always WSL
  bin/*.sh            # Linux scripts
  lib/*.py            # Python helpers (TGA, SSO clone)
  source/             # seal copy
  tga/replace|newslot/
  ssl-template/       # YOU drop extracted .sso here
  stage/{pct,ssl}/
  pack/               # output .pak (zip -0)
  *.ps1               # thin WSL wrappers only
```

---

## Quick start — Path B (true new slot)

### 1. Drop SSO templates

See [`ssl-template/DROP-SSO-HERE.md`](ssl-template/DROP-SSO-HERE.md).

Smoke-test cloner (synthetic):

```bash
./run clone-sso "$PWD/fixtures/ssl-template"
# Windows: run.cmd clone-sso fixtures/ssl-template
```

### 2. Clone Batavi SSO

```bash
./run clone-sso
```

Read `ssl-clone-report.md`.

### 3. Export TGA

```bash
./run prepare-tga newslot
```

### 4. TexMipper → `stage/pct/`

Follow [`TEXMIPPER-HANDOFF.md`](TEXMIPPER-HANDOFF.md).

### 5. Local test

```bash
./run install-local "/path/to/Space Marine 2"
# From WSL to a Windows Steam install, often:
# ./run install-local "/mnt/c/Program Files (x86)/Steam/steamapps/common/Space Marine 2"
```

### 6. Pack for Mods

```bash
./run pack batavi_heraldry
# -> pack/batavi_heraldry.pak  (ZIP store) -> client_pc/root/mods/
```

---

## Path A (replace Night Lords)

```bash
./run prepare-tga replace
# TexMipper on tga/replace/*.tga -> stage/pct/
./run pack batavi_nightlords_replace
```

---

## Related

- [`../Anubian Decal/`](../Anubian%20Decal/) — Night Lords size / mip template  
- [`../../codex-batavi/lore-images/heraldry-ingame-export-spec.md`](../../codex-batavi/lore-images/heraldry-ingame-export-spec.md)
