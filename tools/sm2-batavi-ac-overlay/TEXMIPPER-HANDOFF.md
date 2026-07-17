# TexMipper handoff — Batavi SH User 01 shoulders

## Nobara / Linux (preferred)

**Do not double-click `texmipper.exe`.** Under Wine it opens a file dialog and then hits `Console.ReadKey`, which crashes with *Erro do Programa*.

Use the automated path (needs **Wine** + **socat** + .NET Desktop Runtime 8 in `~/.wine-texmipper`):

```bash
cd tools/sm2-batavi-ac-overlay
./run convert
# -> pack/sh0110_batavi_shoulders.pak
```

`convert` builds a tiny fake `resources.pak` from our `.pct.resource` templates (vanilla game `resources.pak` does **not** contain `user_texture` entries).

If you only need to re-pack existing mips: `./run pack`.

## Manual Windows TexMipper (optional)

1. Put a `resources.pak` that contains the four `pct/d_shldr_user_texture_01*.pct.resource` files next to `texmipper.exe` (or use the one `./run convert` builds under `vendor/convert_work/`).
2. Run TexMipper from a real console and pass the four TGAs as arguments (avoid relying on the GUI picker under Wine).
3. Copy every `*_1.pct_mip` … `*_9.pct_mip` into `stage/pct/`.
4. `./run pack`
5. Install `pack/sh0110_batavi_shoulders.pak` into `mods/` **after** `sh0100_additional_chapters.pak`.

## Inputs (`./run prepare-tga`)

```
tga/d_shldr_user_texture_01.tga
tga/d_shldr_user_texture_01_cc.tga
tga/d_shldr_user_texture_01_r.tga
tga/d_shldr_user_texture_01_r_cc.tga
```

## Validate (after AO load-order fix)

- SH User 01 shows Batavi seal on both pauldrons.
- Silver Templars / other AC chapters unchanged.
- No purple missing textures.
