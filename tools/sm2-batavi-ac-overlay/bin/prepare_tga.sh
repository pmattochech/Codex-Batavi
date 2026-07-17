#!/usr/bin/env bash
# Export chapter seal into Additional Chapters blank shoulder slots (Material One only).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SEAL="${1:-$ROOT/../../codex-batavi/lore-images/chapter-seal.png}"

if [[ ! -f "$SEAL" ]]; then
  echo "error: seal not found: $SEAL" >&2
  exit 1
fi

mkdir -p "$ROOT/tga" "$ROOT/stage/pct"
cp -f "$ROOT/templates/pct/"*.pct.resource "$ROOT/stage/pct/"

OUTS=(
  "$ROOT/tga/d_shldr_user_texture_01.tga"
  "$ROOT/tga/d_shldr_user_texture_01_cc.tga"
  "$ROOT/tga/d_shldr_user_texture_01_r.tga"
  "$ROOT/tga/d_shldr_user_texture_01_r_cc.tga"
)

echo "Seal: $SEAL"
python3 "$ROOT/lib/png_to_tga.py" "$SEAL" "${OUTS[@]}" --size 1024

cat <<EOF

Wrote Material One shoulder TGAs (left + right; right = same art, no flip).
Next — TexMipper (Windows/.NET, resources.pak beside exe):
  1. Convert the four TGAs under tga/
  2. Copy all generated *.pct_mip into stage/pct/ (keep the .pct.resource files already there)
  3. ./run pack
  4. Install pack/sh0110_batavi_shoulders.pak into client_pc/root/mods/
     (after sh0030 bridge + sh0100 additional_chapters)

In Armouring Hall pick left/right pauldron decal: SH User 01
If tint looks wrong, set decal colors toward White_Scar / keep secondary-tertiary transparent.
EOF
