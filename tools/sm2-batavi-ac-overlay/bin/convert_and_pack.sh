#!/usr/bin/env bash
# Nobara/Linux: run TexMipper under Wine to build pct_mip, then pack.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export WINEPREFIX="${WINEPREFIX:-$HOME/.wine-texmipper}"
export WINEDEBUG=-all

TEXMIPPER="$ROOT/vendor/texmipper/texmipper.exe"
RUNTIME="$ROOT/vendor/windowsdesktop-runtime-8.0.16-win-x64.exe"
CONV="$ROOT/vendor/convert_work"

if [[ ! -x "$(command -v wine)" ]]; then
  echo "error: wine not installed" >&2
  exit 1
fi
if [[ ! -f "$TEXMIPPER" ]]; then
  echo "error: missing $TEXMIPPER — download TexMipper v2 win-x64 into vendor/texmipper/" >&2
  exit 1
fi

# Ensure Desktop Runtime once
if [[ ! -d "$WINEPREFIX/drive_c/Program Files/dotnet" && ! -d "$WINEPREFIX/drive_c/windows/Microsoft.NET" ]]; then
  if [[ -f "$RUNTIME" ]]; then
    echo "Installing .NET Desktop Runtime into Wine prefix (first time)..."
    wine "$RUNTIME" /install /quiet /norestart || true
  fi
fi

bash "$ROOT/bin/prepare_tga.sh" "$@"

rm -rf "$CONV"
mkdir -p "$CONV/pct"
cp -f "$ROOT/tga/"*.tga "$CONV/"
cp -f "$ROOT/templates/pct/"*.pct.resource "$CONV/pct/"
(cd "$CONV" && zip -0 -r resources.pak pct/*.pct.resource >/dev/null)

mapfile -t TGAS < <(ls "$CONV"/*.tga)

# TexMipper ends with Console.ReadKey. Under Wine that fatals unless stdin is a
# real console/PTY (pipe/redirect → "Erro do Programa"). Drive it via socat PTY.
if [[ ! -x "$(command -v socat)" ]]; then
  echo "error: socat is required to run TexMipper under Wine (Console.ReadKey needs a PTY)" >&2
  echo "  sudo dnf install socat   # Nobara/Fedora" >&2
  exit 1
fi

RUNNER="$CONV/run_texmipper.sh"
{
  echo '#!/usr/bin/env bash'
  echo "export WINEPREFIX=$(printf '%q' "$WINEPREFIX")"
  echo 'export WINEDEBUG=-all'
  echo "cd $(printf '%q' "$CONV")"
  printf 'exec wine %q' "$TEXMIPPER"
  for t in "${TGAS[@]}"; do
    printf ' %q' "$t"
  done
  echo
} >"$RUNNER"
chmod +x "$RUNNER"

echo "Running TexMipper under Wine (socat PTY)..."
# Keep feeding Enter so ReadKey can exit cleanly when conversion finishes.
(
  for _ in $(seq 1 120); do
    sleep 1
    printf '\n'
  done
) | socat - "EXEC:$RUNNER,pty,stderr,setsid" || true

shopt -s nullglob
MIPS=("$CONV"/*.pct_mip)
if [[ ${#MIPS[@]} -lt 36 ]]; then
  echo "error: expected 36 pct_mip files, got ${#MIPS[@]}" >&2
  echo "hint: do not double-click texmipper.exe — use: ./run convert" >&2
  exit 1
fi

cp -f "$CONV"/*.pct_mip "$ROOT/stage/pct/"
cp -f "$ROOT/templates/pct/"*.pct.resource "$ROOT/stage/pct/"
bash "$ROOT/bin/pack.sh"
echo "Done. Pak: $ROOT/pack/sh0110_batavi_shoulders.pak"
