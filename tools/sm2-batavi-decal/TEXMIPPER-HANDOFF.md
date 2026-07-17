# TexMipper + install handoff (you run these)

Pipeline scripts are **Linux / WSL**. TexMipper is a **Windows/.NET** binary — pick one of the bridges below.

## Prerequisites

| Item | Where |
|------|--------|
| Pipeline | `./run` (Linux/WSL) or `run.cmd` (Windows → WSL) |
| TexMipper | https://github.com/vash2pid/texmipper |
| .NET Desktop Runtime 8+ | needed on the OS that runs TexMipper |
| Game `resources.pak` | `<SM2>/client_pc/root/paks/client/resources.pak` |
| Prepared TGAs | `tga/newslot/` (Path B) or `tga/replace/` (Path A) |

## Bridge options

### A) TexMipper on Windows, rest in WSL (recommended on a Windows box)

1. In WSL / via `run.cmd`:
   ```bat
   run.cmd prepare-tga newslot
   ```
2. On Windows, open the same repo folder under `\\wsl$\…` or the OneDrive/Windows path.
3. Run TexMipper against:
   ```
   tools\sm2-batavi-decal\tga\newslot\d_shldr_batavi_01.tga
   tools\sm2-batavi-decal\tga\newslot\d_shldr_batavi_02.tga
   ```
   with `resources.pak` beside `texmipper.exe`.
4. Copy all `*.pct_mip` into `tools/sm2-batavi-decal/stage/pct/` (visible to WSL).
5. Back in WSL:
   ```bash
   ./run pack batavi_heraldry
   ./run install-local "/mnt/c/Program Files (x86)/Steam/steamapps/common/Space Marine 2"
   ```

### B) Pure Linux install (Proton / native Linux Steam path)

1. Run all `./run` steps in Linux.
2. Run TexMipper under **Wine** (if it works on your build) **or** generate mips on any Windows machine and `scp`/`rsync` them into `stage/pct/`.
3. Install:
   ```bash
   ./run install-local "$HOME/.steam/steam/steamapps/common/Space Marine 2"
   # or
   ./run pack batavi_heraldry
   cp pack/batavi_heraldry.pak "<SM2>/client_pc/root/mods/"
   ```

## Exact TexMipper steps (Windows side)

1. Install [.NET Desktop Runtime 8+](https://dotnet.microsoft.com/download/dotnet/8.0) if needed.
2. Extract [TexMipper](https://github.com/vash2pid/texmipper).
3. Copy `resources.pak` into the **same folder** as `texmipper.exe`.
4. Run `texmipper.exe` → multi-select the two TGAs.
5. Copy **all** generated `.pct_mip` (+ `.tga` if you keep them) into `stage/pct/`.
6. If conversion fails for unknown Batavi basenames: clone Night Lords `.resource` entries to `d_shldr_batavi_01` / `02` (same `sx`/`sy` = 1024) and retry — workbook §B4.

## Install — local test

```bash
./run install-local "/path/to/Space Marine 2"
```

Manual mirror:

```
stage/ssl/  ->  <SM2>/client_pc/root/local/ssl/
stage/pct/  ->  <SM2>/client_pc/root/local/pct/
```

## Install — Mods pak

```bash
./run pack batavi_heraldry
cp pack/batavi_heraldry.pak "<SM2>/client_pc/root/mods/"
```

Pak is ZIP with **store** compression (`zip -0`), lowercase name.

## PakCacher

Only if you inject into vanilla `default_pct_#` / `default_other.pak`. Prefer `local/` or Mods `.pak`.

## In-game acceptance

| Check | Path A | Path B |
|-------|--------|--------|
| Batavi seal on shoulders | Yes | Yes |
| UI name is Cohors Batavorum / Batavi | No | Yes |
| Night Lords vanilla still available | No | Yes |
| No purple missing textures | Required | Required |

Full narrative: [`../SM2-BATAVI-DECAL-WORKBOOK.md`](../SM2-BATAVI-DECAL-WORKBOOK.md) · overview: [`README.md`](README.md)
