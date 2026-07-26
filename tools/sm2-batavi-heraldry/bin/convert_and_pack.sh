#!/usr/bin/env bash
# SVG → layered TGA → TexMipper mips → Luna .pct → Batavi heraldry pak
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export WINEPREFIX="${WINEPREFIX:-$HOME/.wine-texmipper}"
export WINEDEBUG=-all

SVG="${1:-$ROOT/../../codex-batavi/lore-images/chapter-seal.svg}"
LUNA_PAK="${LUNA_PAK:-/tmp/luna-wolves-ac/000LunaWolves13.2.2.pak}"
if [[ ! -f "$LUNA_PAK" ]]; then
  ZIP=$(ls -1 "$HOME/Downloads/Space Marine 2 Mods/"000LunaWolves*.zip 2>/dev/null | head -1 || true)
  [[ -n "${ZIP:-}" ]] || { echo "error: Luna Wolves pak/zip not found" >&2; exit 1; }
  mkdir -p /tmp/luna-wolves-ac
  unzip -o -q "$ZIP" -d /tmp/luna-wolves-ac
  LUNA_PAK=/tmp/luna-wolves-ac/000LunaWolves13.2.2.pak
fi

TEXMIPPER="$ROOT/../sm2-batavi-ac-overlay/vendor/texmipper/texmipper.exe"
[[ -f "$TEXMIPPER" ]] || { echo "error: missing TexMipper at $TEXMIPPER" >&2; exit 1; }
command -v socat >/dev/null || { echo "error: socat required" >&2; exit 1; }
command -v inkscape >/dev/null || { echo "error: inkscape required" >&2; exit 1; }

TGA="$ROOT/tga"
CONV="$ROOT/vendor/convert_work"
STAGE_PCT="$ROOT/stage_pct"
STAGE="$ROOT/stage"
# SM2 overlapping SSO/TD appear to be first-wins for this stack: earliest pak
# keeps the heraldry libraries. 000Batavi must load *before* 000LunaWolves /
# AO / Bridge overwrite, with Bridge-sized tables + Batavi (+ Luna) injects.
PACK_NAME="000Batavi13.2.2.pak"
PACK="$ROOT/pack/$PACK_NAME"
BRIDGE_PAK="${BRIDGE_PAK:-$HOME/.local/share/Steam/steamapps/common/Space Marine 2/client_pc/root/mods/sh0030_bridge_to_astartes_overhaul.pak}"
[[ -f "$BRIDGE_PAK" ]] || { echo "error: Bridge pak not found: $BRIDGE_PAK" >&2; exit 1; }

# Reuse existing .pct if SKIP_TEXTURES=1 (inject/pack only)
SKIP_TEXTURES="${SKIP_TEXTURES:-0}"

rm -rf "$TGA" "$CONV" "$STAGE"
if [[ "$SKIP_TEXTURES" != "1" ]]; then
  rm -rf "$STAGE_PCT"
fi
mkdir -p "$TGA" "$CONV/pct" "$STAGE_PCT" "$ROOT/pack" "$ROOT/vendor"

if [[ "$SKIP_TEXTURES" == "1" ]]; then
  echo "== 1–3) SKIP_TEXTURES=1 — reusing stage_pct/*.pct =="
  for f in d_shldr_batavi_01.pct d_shldr_batavi_01_cc.pct d_shldr_batavi_02.pct d_shldr_batavi_02_cc.pct; do
    [[ -f "$STAGE_PCT/$f" ]] || { echo "error: missing $STAGE_PCT/$f" >&2; exit 1; }
  done
else

echo "== 1) SVG → layered TGAs (+ menu icon TGA) =="
# Luna UI icon header (72) + trailer (6) for BC7 100×100 wrap
ICON_HDR="$ROOT/vendor/lpd_luna_wolves_icon.pct"
if [[ ! -f "$ICON_HDR" ]]; then
  mkdir -p "$ROOT/vendor"
  unzip -p "$LUNA_PAK" \
    "textures/ui/decals_icons/lpd_luna_wolves.asset/lpd_luna_wolves.pct" \
    >"$ICON_HDR"
fi
python3 "$ROOT/lib/svg_to_layer_tgas.py" --svg "$SVG" --out-dir "$TGA" \
  --scale "${SEAL_SCALE:-1.72}" --offset-y "${SEAL_OFFSET_Y:-56}" \
  --supersample "${SEAL_SUPERSAMPLE:-2}"

echo "== 2) TexMipper (Wine + socat PTY) =="
# Old-style resources for TexMipper mip emission
for base in d_shldr_batavi_01 d_shldr_batavi_01_cc d_shldr_batavi_02 d_shldr_batavi_02_cc; do
  fmt=52
  [[ "$base" == *_cc ]] && fmt=51
  cat > "$CONV/pct/${base}.pct.resource" <<EOF
__type: res_desc_pct
downsampled: true
header:
  faceSize: 1398096
  format: ${fmt}
  mipLevel:
  - offset: 0
    size: 1048576
  - offset: 1048576
    size: 262144
  - offset: 1310720
    size: 65536
  - offset: 1376256
    size: 16384
  - offset: 1392640
    size: 4096
  - offset: 1396736
    size: 1024
  - offset: 1397760
    size: 256
  - offset: 1398016
    size: 64
  - offset: 1398080
    size: 16
  nFaces: 1
  nMipMap: 9
  sign: 1346978644
  size: 1398096
  sx: 1024
  sy: 1024
  sz: 1
imageOffset: 0
isCopyDst: false
isImposter: false
isLightmap: false
linkTd: res://td/${base}.td.resource
mipMaps:
- ${base}_1.pct_mip
- ${base}_2.pct_mip
- ${base}_3.pct_mip
- ${base}_4.pct_mip
- ${base}_5.pct_mip
- ${base}_6.pct_mip
- ${base}_7.pct_mip
- ${base}_8.pct_mip
- ${base}_9.pct_mip
pct: ''
predownsampleMipsCount: 10
source: ''
texName: ${base}
texType: ''
tileLayout: 0
tiles: []
useHeaderFromResource: true
EOF
done
# Menu icon: single-mip BC7 100×100 (format 52) — raw L8 into this slot = colorful static
cat > "$CONV/pct/lpd_batavi_menu.pct.resource" <<'EOF'
__type: res_desc_pct
downsampled: true
header:
  faceSize: 10000
  format: 52
  mipLevel:
  - offset: 0
    size: 10000
  nFaces: 1
  nMipMap: 1
  sign: 1346978644
  size: 10000
  sx: 100
  sy: 100
  sz: 1
imageOffset: 0
isCopyDst: false
isImposter: false
isLightmap: false
linkTd: res://td/lpd_batavi.td.resource
mipMaps:
- lpd_batavi_menu_1.pct_mip
pct: ''
predownsampleMipsCount: 1
source: ''
texName: lpd_batavi_menu
texType: ''
tileLayout: 0
tiles: []
useHeaderFromResource: true
EOF
cp -f "$TGA"/*.tga "$CONV/"
(cd "$CONV" && zip -0 -r resources.pak pct/*.pct.resource >/dev/null)

RUNNER="$CONV/run_texmipper.sh"
{
  echo '#!/usr/bin/env bash'
  echo "export WINEPREFIX=$(printf '%q' "$WINEPREFIX")"
  echo 'export WINEDEBUG=-all'
  echo "cd $(printf '%q' "$CONV")"
  printf 'exec wine %q' "$TEXMIPPER"
  for t in "$CONV"/*.tga; do printf ' %q' "$t"; done
  echo
} >"$RUNNER"
chmod +x "$RUNNER"
(
  for _ in $(seq 1 150); do sleep 1; printf '\n'; done
) | socat - "EXEC:$RUNNER,pty,stderr,setsid" || true

shopt -s nullglob
MIPS=("$CONV"/d_shldr_batavi_*.pct_mip)
[[ ${#MIPS[@]} -ge 36 ]] || { echo "error: expected ≥36 shoulder mips, got ${#MIPS[@]}" >&2; exit 1; }
[[ -f "$CONV/lpd_batavi_menu_1.pct_mip" ]] || { echo "error: missing menu icon mip" >&2; exit 1; }
cp -f "$CONV"/d_shldr_batavi_*.pct_mip "$STAGE_PCT/"
cp -f "$CONV/lpd_batavi_menu_1.pct_mip" "$STAGE_PCT/"

echo "== 3) Assemble Luna-style .pct =="
for base in d_shldr_batavi_01 d_shldr_batavi_02; do
  python3 "$ROOT/lib/mips_to_pct.py" \
    --header "$ROOT/templates/pct_header_format52.bin" \
    --mip-prefix "$STAGE_PCT/${base}" \
    --out "$STAGE_PCT/${base}.pct"
  python3 "$ROOT/lib/mips_to_pct.py" \
    --header "$ROOT/templates/pct_header_format51.bin" \
    --mip-prefix "$STAGE_PCT/${base}_cc" \
    --out "$STAGE_PCT/${base}_cc.pct"
done
# Menu icon: Luna 72-byte header + BC7 body + 6-byte size trailer
python3 - "$ICON_HDR" "$STAGE_PCT/lpd_batavi_menu_1.pct_mip" "$TGA/lpd_batavi_menu.pct" <<'PY'
import sys
from pathlib import Path
hdr_path, mip_path, out_path = map(Path, sys.argv[1:4])
hdr = hdr_path.read_bytes()
body = mip_path.read_bytes()
if len(body) != 10000:
    raise SystemExit(f"menu mip size {len(body)} != 10000")
out = hdr[:72] + body + hdr[-6:]
if len(out) != 10078:
    raise SystemExit(f"menu pct size {len(out)} != 10078")
out_path.write_bytes(out)
print(f"wrote {out_path} ({len(out)} bytes, trailer={out[-6:].hex()})")
PY
cp -f "$TGA/lpd_batavi_menu.pct" "$STAGE_PCT/lpd_batavi_menu.pct"

# Final .pct.resource (Luna fields)
for side in 01 02; do
  for kind in "" "_cc"; do
    base="d_shldr_batavi_${side}${kind}"
    fmt=52
    [[ "$kind" == "_cc" ]] && fmt=51
    cat > "$STAGE_PCT/${base}.pct.resource" <<EOF
__type: res_desc_pct
downsampled: false
header:
  faceSize: 1398096
  format: ${fmt}
  mipLevel:
  - offset: 0
    size: 1048576
  - offset: 1048576
    size: 262144
  - offset: 1310720
    size: 65536
  - offset: 1376256
    size: 16384
  - offset: 1392640
    size: 4096
  - offset: 1396736
    size: 1024
  - offset: 1397760
    size: 256
  - offset: 1398016
    size: 64
  - offset: 1398080
    size: 16
  nFaces: 1
  nMipMap: 9
  sign: 1346978644
  size: 1398096
  sx: 1024
  sy: 1024
  sz: 1
imageOffset: 136
isCopyDst: false
isImposter: false
isLightmap: false
linkTd: res://td/${base}.td.resource
mipMaps: []
pct: ${base}.pct
predownsampleMipsCount: 0
source: ''
texName: ${base}
texType: ''
tileLayout: 0
tiles: []
useHeaderFromResource: true
EOF
  done
done

fi  # SKIP_TEXTURES

echo "== 4) Inject Batavi (+ Luna entries) into Bridge libraries =="
MENU_ICON_ARGS=()
MENU_PCT="$TGA/lpd_batavi_menu.pct"
if [[ ! -f "$MENU_PCT" ]]; then
  MENU_PCT="$STAGE_PCT/lpd_batavi_menu.pct"
fi
if [[ -f "$MENU_PCT" ]]; then
  MENU_ICON_ARGS=(--menu-icon-pct "$MENU_PCT")
fi
python3 "$ROOT/bin/build_inject_bridge.py" \
  --bridge-pak "$BRIDGE_PAK" \
  --luna-pak "$LUNA_PAK" \
  --stage "$STAGE" \
  --pct-dir "$STAGE_PCT" \
  "${MENU_ICON_ARGS[@]}"

echo "== 5) Pack =="
rm -f "$PACK"
(cd "$STAGE" && zip -0 -r "$PACK" . >/dev/null)
echo "Built: $PACK ($(stat -c%s "$PACK") bytes)"

MODS="${SM2_MODS:-$HOME/.local/share/Steam/steamapps/common/Space Marine 2/client_pc/root/mods}"
if [[ -d "$MODS" ]]; then
  # Luna Wolves optional pack (official naming)
  if [[ ! -f "$MODS/000LunaWolves13.2.2.pak" ]]; then
    cp -f "$LUNA_PAK" "$MODS/000LunaWolves13.2.2.pak"
    echo "Installed → $MODS/000LunaWolves13.2.2.pak"
  else
    echo "Luna already present → $MODS/000LunaWolves13.2.2.pak"
  fi

  cp -f "$PACK" "$MODS/"
  # Retire late packs / blank-slot overlays (late load loses under first-wins)
  for old in zzz000Batavi13.2.2.pak zzzBatavi13.2.2.pak sh0110_batavi_shoulders.pak zz_sh0120_batavi_user_materials.pak sh0105_bloodrevenantmarkings.pak; do
    if [[ -f "$MODS/$old" ]]; then
      mv -f "$MODS/$old" "$MODS/${old}.off"
      echo "disabled $old → ${old}.off"
    fi
  done
  echo "Installed → $MODS/$PACK_NAME"
fi
