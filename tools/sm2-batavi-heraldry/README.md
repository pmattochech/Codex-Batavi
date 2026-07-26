# Batavi heraldry — Bridge-injected Armouring Hall slot

Builds a Space Marine 2 pauldron pack by **injecting** Cohors Batavorum (and Luna Wolves entries) into **Bridge / AC+AO** libraries — not by shipping a full Luna pak clone that wipes those tables.

## Tint layers (from `chapter-seal.svg`)

| Channel | Layer | Default color |
|---------|--------|----------------|
| R (primary) | Wolf head | White_Scar |
| G (secondary) | Field inside Outer_rim (minus wolf & sword) | Mephiston_Red |
| B (tertiary) | Gladius / sword | Liberator_Gold |

## Build (Nobara)

Needs: **Inkscape**, **Wine**, **socat**, TexMipper under `../sm2-batavi-ac-overlay/vendor/texmipper/`, Luna Wolves zip under Downloads, and Bridge pak in Steam `mods/`.

```bash
cd tools/sm2-batavi-heraldry
chmod +x run bin/*.sh
./run build
# → pack/000Batavi13.2.2.pak  (also copies Luna + Batavi into Steam mods/)

# Reuse existing shoulder .pct files (skip TexMipper):
SKIP_TEXTURES=1 ./run build
```

Pak name: `000Batavi13.2.2.pak` — same **000** convention as Luna, and it must sort **before** `000LunaWolves` / AO. Overlapping heraldry SSO/TD in this stack behave like **first-wins**; a late Batavi pack does not stick.

## In-game

Armouring Hall → pauldron decals → **Cohors Batavorum** (and **Luna Wolves** if that pack is installed).

Old late full-clone (`zzzBatavi13.2.2.pak`) and blank-slot overlays are renamed to `*.off` on install.
