#!/usr/bin/env bash
# Export chapter-seal.png to 1024x1024 RGBA TGA (Path A replace or Path B newslot).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODE="${1:-newslot}"
SEAL="${2:-}"

case "${MODE,,}" in
  replace|a|path-a) MODE=replace ;;
  newslot|new|b|path-b) MODE=newslot ;;
  -h|--help)
    echo "Usage: $0 [newslot|replace] [optional/path/to/seal.png]"
    exit 0
    ;;
  *)
    echo "error: mode must be newslot or replace (got: $MODE)" >&2
    exit 1
    ;;
esac

if [[ -z "$SEAL" ]]; then
  for c in \
    "$ROOT/../../codex-batavi/lore-images/chapter-seal.png" \
    "$ROOT/../../codex-batavi/lore-images/chapter-seal-official.png" \
    "$ROOT/../../codex-batavi/lore-images/chapter-seal-canonical.png" \
    "$ROOT/source/chapter-seal.png"
  do
    if [[ -f "$c" ]]; then SEAL="$c"; break; fi
  done
fi

if [[ -z "$SEAL" || ! -f "$SEAL" ]]; then
  echo "error: seal PNG not found. Pass path or place chapter-seal.png under codex-batavi/lore-images/" >&2
  exit 1
fi

mkdir -p "$ROOT/source" "$ROOT/tga/replace" "$ROOT/tga/newslot"
cp -f "$SEAL" "$ROOT/source/chapter-seal.png"

if [[ "$MODE" == "replace" ]]; then
  OUT1="$ROOT/tga/replace/d_shldr_night_lords_01.tga"
  OUT2="$ROOT/tga/replace/d_shldr_night_lords_02.tga"
else
  OUT1="$ROOT/tga/newslot/d_shldr_batavi_01.tga"
  OUT2="$ROOT/tga/newslot/d_shldr_batavi_02.tga"
fi

echo "Seal: $SEAL"
# Pillow / ImageMagick optional; stdlib PNG decoder is the fallback.
python3 "$ROOT/lib/png_to_tga.py" "$SEAL" "$OUT1" "$OUT2" --size 1024
echo "Next: run TexMipper on these TGAs (resources.pak beside texmipper), then copy .pct_mip into stage/pct/"
