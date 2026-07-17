#!/usr/bin/env bash
# Build zz_sh0120_batavi_user_materials.pak — AO 13.2 ch_lpd/ch_rpd + sh_user_01/02.
# Loads AFTER wa_astartes so blank slots work without renaming AO (which breaks 13.2 skins).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODS="${SM2_MODS:-$HOME/.local/share/Steam/steamapps/common/Space Marine 2/client_pc/root/mods}"
AO="$MODS/wa_astartes_13_2_2.pak"
BR="$MODS/sh0030_bridge_to_astartes_overhaul.pak"
STAGE="$ROOT/stage_materials"
OUT="$ROOT/pack/zz_sh0120_batavi_user_materials.pak"
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

[[ -f "$AO" ]] || { echo "error: missing $AO" >&2; exit 1; }
[[ -f "$BR" ]] || { echo "error: missing $BR" >&2; exit 1; }

mkdir -p "$TMP"/{ao,br} "$STAGE/td"
unzip -o -q "$AO" "td/ch_lpd.td" "td/ch_lpd.td.resource" "td/ch_rpd.td" "td/ch_rpd.td.resource" -d "$TMP/ao"
unzip -o -q "$BR" "td/ch_lpd.td" "td/ch_rpd.td" -d "$TMP/br"

python3 - "$TMP" "$STAGE" <<'PY'
import re, sys
from pathlib import Path

tmp, stage = Path(sys.argv[1]), Path(sys.argv[2])

def extract_block(text, name):
    m = re.search(rf'^(\s{{3}}){re.escape(name)}\s*=\s*\{{', text, re.M)
    if not m:
        raise SystemExit(f'missing {name}')
    start = m.start()
    i = text.find('{', m.start())
    depth = 0
    for j in range(i, len(text)):
        if text[j] == '{':
            depth += 1
        elif text[j] == '}':
            depth -= 1
            if depth == 0:
                end = j + 1
                if end < len(text) and text[end] == '\n':
                    end += 1
                return text[start:end]
    raise SystemExit('unbalanced')

def strip_xnm(block: str) -> str:
    return re.sub(r'^\s*xNM\s*=\s*"[^"]*"\s*\n', '', block, flags=re.M)

def inject(ao_text, blocks):
    m = re.search(r'\n\}\nusage\s*=', ao_text)
    if not m:
        raise SystemExit('insertion point not found')
    insert_at = m.start() + 1
    payload = ''.join(blocks)
    if not payload.endswith('\n'):
        payload += '\n'
    for b in blocks:
        name = re.match(r'\s{3}(\S+)\s*=', b).group(1)
        if re.search(rf'^\s{{3}}{re.escape(name)}\s*=', ao_text, re.M):
            raise SystemExit(f'{name} already in AO file')
    return ao_text[:insert_at] + payload + ao_text[insert_at:]

def append_links(resource_text: str, links: list[str]) -> str:
    existing = set(re.findall(r'res://pct/(\S+)', resource_text))
    to_add = [f'- res://pct/{leaf}' for leaf in links if leaf not in existing]
    if not to_add:
        return resource_text
    lines = resource_text.splitlines(keepends=True)
    last_link_idx = None
    in_links = False
    for i, line in enumerate(lines):
        if line.startswith('linksPct:'):
            in_links = True
            continue
        if in_links:
            if line.startswith('- '):
                last_link_idx = i
            elif line.strip() == '':
                continue
            else:
                break
    if last_link_idx is None:
        raise SystemExit('no linksPct entries')
    lines.insert(last_link_idx + 1, ''.join(x + '\n' for x in to_add))
    return ''.join(lines)

jobs = (
    ('ch_lpd', ['sh_user_01', 'sh_user_02'], [
        'd_shldr_user_texture_01.pct.resource',
        'd_shldr_user_texture_01_cc.pct.resource',
        'd_shldr_user_texture_02.pct.resource',
        'd_shldr_user_texture_02_cc.pct.resource',
    ]),
    ('ch_rpd', ['sh_user_01', 'sh_user_02'], [
        'd_shldr_user_texture_01_r.pct.resource',
        'd_shldr_user_texture_01_r_cc.pct.resource',
        'd_shldr_user_texture_02_r.pct.resource',
        'd_shldr_user_texture_02_r_cc.pct.resource',
    ]),
)
out = stage / 'td'
for side, names, links in jobs:
    ao = (tmp / 'ao/td' / f'{side}.td').read_text()
    br = (tmp / 'br/td' / f'{side}.td').read_text()
    blocks = [strip_xnm(extract_block(br, n)) for n in names]
    (out / f'{side}.td').write_text(inject(ao, blocks))
    res = (tmp / 'ao/td' / f'{side}.td.resource').read_text()
    (out / f'{side}.td.resource').write_text(append_links(res, links))
    print(f'wrote {side}.td (+ {", ".join(names)})')
PY

mkdir -p "$ROOT/pack"
rm -f "$OUT"
(cd "$STAGE" && zip -0 -r "$OUT" td/ch_lpd.td td/ch_lpd.td.resource td/ch_rpd.td td/ch_rpd.td.resource >/dev/null)
echo "Built: $OUT"
