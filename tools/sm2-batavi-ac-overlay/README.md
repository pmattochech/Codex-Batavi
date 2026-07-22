# Batavi shoulders — Additional Chapters blank slots

Fills **SH User 01** (Material One) blank pauldrons from [Additional Chapters](https://www.nexusmods.com/warhammer40000spacemarine2/mods/223) with the Cohors Batavorum seal. **Does not** overwrite Silver Templars / Night Lords / etc.

**Scope:** shoulders only (`d_shldr_user_texture_01*`). Knees left stock blank.

## Stack (required)

Keep **Astartes Overhaul** named so it sorts **before** the `zz_` materials pak (default `wa_astartes_*.pak` is fine). **Do not** rename AO to `0_…` on 13.2 — that lets the 13.1 bridge overwrite AO tables and breaks skins/chapters.

1. Astartes Overhaul (`wa_astartes_…`)
2. `sh0030_bridge_to_astartes_overhaul.pak`
3. `sh0100_additional_chapters.pak`
4. `sh0110_batavi_shoulders.pak` (textures)
5. `zz_sh0120_batavi_user_materials.pak` (AO `ch_lpd`/`ch_rpd` + `sh_user_01/02` — must load **last**)

Rebuild materials pak after AO updates: `./bin/build_user_materials_pak.sh` then copy into `mods/`.

## Build (Nobara / Linux — fully automated)

Needs **Wine** + **socat**. First run installs .NET Desktop Runtime 8 into `~/.wine-texmipper`.

**Do not double-click `vendor/texmipper/texmipper.exe`** — Wine crashes on its “Press any key” (`Console.ReadKey`). Always use:

```bash
cd tools/sm2-batavi-ac-overlay
chmod +x run bin/*.sh
./run convert
# -> pack/sh0110_batavi_shoulders.pak
```

Manual split (optional): `./run prepare-tga` then TexMipper by hand — see [`TEXMIPPER-HANDOFF.md`](TEXMIPPER-HANDOFF.md) — then `./run pack`.

## In-game

Armouring Hall → left/right pauldron decal → **Custom Pauldron Marking 01 (Self Supplied)**.

Textures follow **Blood Revenants Chapter Markings** (Nexus mod that fills AC blank slots):
- albedo = mid-gray emblem + true `(0,0,0,0)` transparency (not white-with-alpha-0)
- `*_cc` = R/G/B tint channels with the **same alpha** (format 52), not opaque black
- pack is textures (+ optional late `zz_…` materials for AO stacks)

## Files written by prepare-tga

| TGA | Role |
|-----|------|
| `d_shldr_user_texture_01.tga` | Left albedo |
| `d_shldr_user_texture_01_cc.tga` | Left colour companion |
| `d_shldr_user_texture_01_r.tga` | Right albedo (same art; no flip) |
| `d_shldr_user_texture_01_r_cc.tga` | Right colour companion |

Author recipe: `Your Own Pauldrons and Greaves.txt` inside the Additional Chapters download.

## Windows host

Use `run.cmd` (always WSL), same commands: `run.cmd prepare-tga` / `run.cmd pack`.
