#!/usr/bin/env bash
# Pack stage/ into a SM2 Mods .pak (ZIP store / no compression). Linux-native.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_NAME="${1:-batavi_heraldry}"
STAGE="${2:-$ROOT/stage}"

python3 "$ROOT/lib/new_mod_pak.py" "$OUT_NAME" "$STAGE" "$ROOT/pack"
