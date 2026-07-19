#!/usr/bin/env bash
# Clone Night Lords SSO blocks into Batavi entries (see lib/clone_batavi_sso.py).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEMPLATE_DIR="${1:-}"

ARGS=(--root "$ROOT")
if [[ -n "$TEMPLATE_DIR" ]]; then
  ARGS+=(--template-dir "$TEMPLATE_DIR")
fi

python3 "$ROOT/lib/clone_batavi_sso.py" "${ARGS[@]}"
