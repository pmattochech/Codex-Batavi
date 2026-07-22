#!/usr/bin/env bash
# Copy stage/ssl and stage/pct into the game's client_pc/root/local/ tree.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STAGE="$ROOT/stage"
GAME_ROOT="${1:-}"

guess_game_root() {
  local c
  for c in \
    "$HOME/.steam/steam/steamapps/common/Space Marine 2" \
    "$HOME/.local/share/Steam/steamapps/common/Space Marine 2" \
    "/mnt/c/Program Files (x86)/Steam/steamapps/common/Space Marine 2" \
    "/mnt/d/SteamLibrary/steamapps/common/Space Marine 2"
  do
    if [[ -d "$c/client_pc" ]]; then
      echo "$c"
      return 0
    fi
  done
  return 1
}

if [[ -z "$GAME_ROOT" ]]; then
  GAME_ROOT="$(guess_game_root || true)"
fi

if [[ -z "$GAME_ROOT" || ! -d "$GAME_ROOT/client_pc" ]]; then
  echo "error: pass game root (folder containing client_pc):" >&2
  echo "  $0 \"/path/to/Space Marine 2\"" >&2
  exit 1
fi

LOCAL="$GAME_ROOT/client_pc/root/local"
mkdir -p "$LOCAL"
copied=0

for sub in ssl pct td; do
  src="$STAGE/$sub"
  [[ -d "$src" ]] || continue
  if ! find "$src" -type f ! -name '.gitkeep' | grep -q .; then
    continue
  fi
  dest="$LOCAL/$sub"
  mkdir -p "$dest"
  # Preserve tree; do not copy .gitkeep
  (cd "$src" && tar -cf - --exclude='.gitkeep' .) | (cd "$dest" && tar -xf -)
  n="$(find "$src" -type f ! -name '.gitkeep' | wc -l)"
  copied=$((copied + n))
  echo "Copied $sub -> $dest"
done

if [[ "$copied" -eq 0 ]]; then
  echo "error: nothing to copy under stage/ (need pct and/or ssl files)" >&2
  exit 1
fi

echo "Done. Launch SM2 and check Armouring Hall. Local root: $LOCAL"
