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

ALBEDO=(
  "$ROOT/tga/d_shldr_user_texture_01.tga"
  "$ROOT/tga/d_shldr_user_texture_01_r.tga"
)
CC=(
  "$ROOT/tga/d_shldr_user_texture_01_cc.tga"
  "$ROOT/tga/d_shldr_user_texture_01_r_cc.tga"
)

echo "Seal: $SEAL"
# Match Blood Revenants Chapter Markings (Additional Chapters blank-slot style):
# albedo = mid-gray emblem + true (0,0,0,0) transparency; _cc = R/G tint + same alpha.
python3 "$ROOT/lib/png_to_tga.py" "$SEAL" "${ALBEDO[@]}" --size 1024 --user-albedo
python3 "$ROOT/lib/png_to_tga.py" "$SEAL" "${CC[@]}" --size 1024 --cc-mask

cat <<EOF

Wrote Material One shoulder TGAs (Blood Revenants-style blank-slot art).
Next: ./run convert

In Armouring Hall: Custom Pauldron Marking 01 (Self Supplied).
EOF
