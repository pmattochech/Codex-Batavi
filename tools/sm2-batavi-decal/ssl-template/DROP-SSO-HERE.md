# Drop SSO libraries here

Path B (true new Armouring Hall slot) **cannot** proceed without these files.

## Required

| File | Source |
|------|--------|
| `customization_decal_library.sso` | `default_other.pak` → `ssl/body/customization/` **or** Additional Chapters pack |

## Recommended (full chapter / colour wiring)

| File | Source |
|------|--------|
| `armor_color_library.sso` | same folder |
| `global_armor_color_pattern_library.sso` | same folder |

## How to extract (vanilla)

1. Open  
   `…\Space Marine 2\client_pc\root\paks\client\default\default_other.pak`  
   with 7-Zip / WinRAR.
2. Navigate to `ssl/body/customization/`.
3. Extract the three files into **this folder** (`ssl-template/`).

## How to extract (Additional Chapters)

1. Open the mod’s loose `ssl` tree or its pak.
2. Copy the same three filenames into **this folder**.
3. Prefer a pack version that matches your current game patch.

## Then run (Linux / WSL)

```bash
cd tools/sm2-batavi-decal
./run clone-sso
# Windows host: run.cmd clone-sso
```

Output: `stage/ssl/body/customization/` + `ssl-clone-report.md`.

Do **not** commit copyrighted game SSO dumps to a public remote unless you know your license stance — keep them local if unsure.
