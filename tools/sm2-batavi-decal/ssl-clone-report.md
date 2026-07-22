# SSO clone report

Generated: 2026-07-16 16:15 (local)
Source token: `night_lords`
Display: `Night Lords` -> `Cohors Batavorum`
Texture basenames: `d_shldr_batavi_01` / `d_shldr_batavi_02`

## `customization_decal_library.sso`

- Cloned block #0 (706 chars) -> Batavi texture IDs.
- Appended **1** clone block(s).

## `armor_color_library.sso`

- Not present in ssl-template/ - skipped.

## `global_armor_color_pattern_library.sso`

- Not present in ssl-template/ - skipped.

## Next steps

1. Open staged SSO under stage/ssl/body/customization/ and confirm Batavi entries look valid.
2. ./run prepare-tga newslot then TexMipper; copy mips to stage/pct/.
3. Local test: ./run install-local (or copy stage into client_pc/root/local/).
4. ./run pack batavi_heraldry ; install to mods/.
5. If the new UI entry does not appear, use Fallback (Named faux-add) in the workbook.
