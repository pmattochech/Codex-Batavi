#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="${1:-sh0110_batavi_shoulders}"
python3 "$ROOT/lib/new_mod_pak.py" "$NAME" "$ROOT/stage" "$ROOT/pack"
echo "Install order (mods folder): Astartes Overhaul, then sh0030_bridge..., sh0100_additional_chapters, then $NAME.pak"
