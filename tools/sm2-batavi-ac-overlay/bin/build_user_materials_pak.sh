#!/usr/bin/env bash
# Build zz_sh0120_batavi_user_materials.pak
# Late-loading overlay: AO 13.2 tables + sh_user materials/SSO + Batavi shoulder textures.
# Must sort AFTER wa_astartes_*.pak. Do NOT rename AO to 0_ on 13.2.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODS="${SM2_MODS:-$HOME/.local/share/Steam/steamapps/common/Space Marine 2/client_pc/root/mods}"
AO="$MODS/wa_astartes_13_2_2.pak"
BR="$MODS/sh0030_bridge_to_astartes_overhaul.pak"
AC="$MODS/sh0100_additional_chapters.pak"
BAT="${1:-$ROOT/pack/sh0110_batavi_shoulders.pak}"
STAGE="$ROOT/stage_materials"
OUT="$ROOT/pack/zz_sh0120_batavi_user_materials.pak"

[[ -f "$AO" && -f "$BR" && -f "$AC" && -f "$BAT" ]] || {
  echo "error: need AO, bridge, AC, and Batavi shoulders pak" >&2
  exit 1
}

rm -rf "$STAGE"
mkdir -p "$STAGE"

python3 - "$AO" "$BR" "$AC" "$BAT" "$STAGE" <<'PY'
import re, sys, zipfile
from pathlib import Path

ao_p, br_p, ac_p, bat_p, stage_p = map(Path, sys.argv[1:])
ao, br, ac, bat = map(zipfile.ZipFile, (ao_p, br_p, ac_p, bat_p))
stage = stage_p

def crlf(s: str) -> bytes:
    return s.replace("\r\n", "\n").replace("\n", "\r\n").encode("utf-8")

def extract_block(text: str, name: str, indent: str) -> str:
    m = re.search(rf"^{re.escape(indent)}{re.escape(name)}\s*=\s*\{{", text, re.M)
    if not m:
        raise SystemExit(f"missing {name}")
    start = m.start()
    i = text.find("{", m.start())
    depth = 0
    for j in range(i, len(text)):
        if text[j] == "{":
            depth += 1
        elif text[j] == "}":
            depth -= 1
            if depth == 0:
                end = j + 1
                if end < len(text) and text[end] == "\n":
                    end += 1
                return text[start:end]
    raise SystemExit(f"unbalanced {name}")

def strip_xnm(block: str) -> str:
    return re.sub(r'^\s*xNM\s*=\s*"[^"]*"\s*\r?\n', "", block, flags=re.M)

def inject_before_usage(ao_text: str, blocks: list[str]) -> str:
    t = ao_text.replace("\r\n", "\n")
    missing = []
    for b in blocks:
        b = b.replace("\r\n", "\n")
        name = re.match(r"\s+(\S+)\s*=", b).group(1)
        if re.search(rf"^\s+{re.escape(name)}\s*=", t, re.M):
            continue
        if not b.endswith("\n"):
            b += "\n"
        missing.append(b)
    if not missing:
        return t
    m = re.search(r"\n\}\nusage\s*=", t)
    if not m:
        raise SystemExit("no usage insertion point")
    return t[: m.start() + 1] + "".join(missing) + t[m.start() + 1 :]

def append_links(resource_text: str, links: list[str]) -> str:
    t = resource_text.replace("\r\n", "\n")
    existing = set(re.findall(r"res://pct/(\S+)", t))
    to_add = [f"- res://pct/{leaf}" for leaf in links if leaf not in existing]
    if not to_add:
        return t
    lines = t.splitlines(keepends=True)
    last = None
    in_links = False
    for i, line in enumerate(lines):
        if line.startswith("linksPct:"):
            in_links = True
            continue
        if in_links:
            if line.startswith("- "):
                last = i
            elif line.strip():
                break
    lines.insert(last + 1, "".join(x + "\n" for x in to_add))
    return "".join(lines)

def section_items_span(text: str, section: str) -> tuple[int, int]:
    m = re.search(rf"^   {re.escape(section)}\s*=\s*\{{", text, re.M)
    if not m:
        raise SystemExit(f"no section {section}")
    sub = text[m.start() :]
    mi = re.search(r"^      items\s*=\s*\{", sub, re.M)
    abs_items = m.start() + mi.start()
    brace = text.find("{", abs_items)
    depth = 0
    for j in range(brace, len(text)):
        if text[j] == "{":
            depth += 1
        elif text[j] == "}":
            depth -= 1
            if depth == 0:
                return brace + 1, j
    raise SystemExit("unclosed items")

def inject_into_section(text: str, section: str, blocks: list[str]) -> str:
    t = text.replace("\r\n", "\n")
    start, end = section_items_span(t, section)
    body = t[start:end]
    missing = []
    for b in blocks:
        b = b.replace("\r\n", "\n")
        name = re.match(r"\s+(\S+)\s*=", b).group(1)
        if re.search(rf"^\s+{re.escape(name)}\s*=", body, re.M):
            continue
        if not b.endswith("\n"):
            b += "\n"
        missing.append(b)
    if not missing:
        return t
    insert = "".join(missing) if body.endswith("\n") else "\n" + "".join(missing)
    return t[:end] + insert + t[end:]

def inject_after_last(text: str, blocks: list[str], indent: str) -> str:
    t = text.replace("\r\n", "\n")
    missing = []
    for b in blocks:
        b = b.replace("\r\n", "\n")
        name = re.match(r"\s+(\S+)\s*=", b).group(1)
        if re.search(rf"^{re.escape(indent)}{re.escape(name)}\s*=", t, re.M):
            continue
        if not b.endswith("\n"):
            b += "\n"
        missing.append(b)
    if not missing:
        return t
    matches = list(re.finditer(rf"^{re.escape(indent)}([A-Za-z0-9_]+)\s*=\s*\{{", t, re.M))
    last = matches[-1].group(1)
    block = extract_block(t, last, indent)
    end = t.find(block) + len(block)
    return t[:end] + "".join(missing) + t[end:]

# materials
for side, links in (
    ("ch_lpd", [
        "d_shldr_user_texture_01.pct.resource", "d_shldr_user_texture_01_cc.pct.resource",
        "d_shldr_user_texture_02.pct.resource", "d_shldr_user_texture_02_cc.pct.resource",
    ]),
    ("ch_rpd", [
        "d_shldr_user_texture_01_r.pct.resource", "d_shldr_user_texture_01_r_cc.pct.resource",
        "d_shldr_user_texture_02_r.pct.resource", "d_shldr_user_texture_02_r_cc.pct.resource",
    ]),
):
    ao_td = ao.read(f"td/{side}.td").decode()
    br_td = br.read(f"td/{side}.td").decode()
    blocks = [strip_xnm(extract_block(br_td, n, "   ")) for n in ("sh_user_01", "sh_user_02")]
    out = stage / "td"
    out.mkdir(parents=True, exist_ok=True)
    (out / f"{side}.td").write_bytes(crlf(inject_before_usage(ao_td, blocks)))
    res = ao.read(f"td/{side}.td.resource").decode()
    (out / f"{side}.td.resource").write_bytes(crlf(append_links(res, links)))

# SSO categorized correctly
ao_sso = ao.read("ssl/body/customization/customization_decal_library.sso").decode()
br_sso = br.read("ssl/body/customization/customization_decal_library.sso").decode()
groups = {
    "LEFT_PAULDRON": ["Left_Pau_Decal_SH_User_01", "Left_Pau_Decal_SH_User_02"],
    "RIGHT_PAULDRON": ["Right_Pau_Decal_SH_User_01", "Right_Pau_Decal_SH_User_02"],
    "LEFT_GREAVE": ["Left_Greave_Decal_SH_User_01", "Left_Greave_Decal_SH_User_02"],
    "RIGHT_GREAVE": ["Right_Greave_Decal_SH_User_01", "Right_Greave_Decal_SH_User_02"],
}
merged = ao_sso
for section, names in groups.items():
    blocks = []
    for n in names:
        b = extract_block(br_sso, n, "         ")
        b = b.replace('primary   =   "Abaddon_Black"', 'primary   =   "White_Scar"')
        blocks.append(b)
    merged = inject_into_section(merged, section, blocks)
ssl = stage / "ssl/body/customization"
ssl.mkdir(parents=True, exist_ok=True)
(ssl / "customization_decal_library.sso").write_bytes(crlf(merged))

# UI heraldry
ao_ui = ao.read("ssl/ui/screens/codex/ui_heraldry_library.sso").decode()
br_ui = br.read("ssl/ui/screens/codex/ui_heraldry_library.sso").decode()
ui_names = [n for names in groups.values() for n in names]
ui_blocks = [extract_block(br_ui, n, "   ") for n in ui_names]
ui_dir = stage / "ssl/ui/screens/codex"
ui_dir.mkdir(parents=True, exist_ok=True)
(ui_dir / "ui_heraldry_library.sso").write_bytes(crlf(inject_after_last(ao_ui, ui_blocks, "   ")))

# Switcher icons
ao_sw = ao.read("ssl/ui/fusion/assets/switchers/decals/ui_switcher_decals.sso").decode()
ac_sw = ac.read("ssl/ui/fusion/assets/switchers/decals/ui_switcher_decals.sso").decode()
sw_blocks = [extract_block(ac_sw, n, "         ") for n in ("lpd_sh_user", "lgd_knee_user")]
sw_dir = stage / "ssl/ui/fusion/assets/switchers/decals"
sw_dir.mkdir(parents=True, exist_ok=True)
(sw_dir / "ui_switcher_decals.sso").write_bytes(crlf(inject_after_last(ao_sw, sw_blocks, "         ")))

# Batavi textures + AC td descriptors
for n in bat.namelist():
    if n.endswith("/"):
        continue
    dest = stage / n
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_bytes(bat.read(n))
for name in (
    "d_shldr_user_texture_01", "d_shldr_user_texture_01_cc",
    "d_shldr_user_texture_01_r", "d_shldr_user_texture_01_r_cc",
):
    for ext in (".td", ".td.resource"):
        (stage / "td" / f"{name}{ext}").write_bytes(ac.read(f"td/{name}{ext}"))

print("staged OK")
PY

mkdir -p "$ROOT/pack"
rm -f "$OUT"
(cd "$STAGE" && zip -0 -r "$OUT" td ssl pct >/dev/null)
echo "Built: $OUT"
