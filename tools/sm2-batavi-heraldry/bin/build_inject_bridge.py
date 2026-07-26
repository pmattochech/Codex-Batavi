#!/usr/bin/env python3
"""Build Batavi heraldry pak by injecting into Bridge (AC+AO) libraries.

Keeps Bridge-sized tables (blank user slots, AC chapters) and injects both
Luna Wolves and Batavi decal/material/UI/string entries. Batavi shoulder
textures come from --pct-dir; UI icon is Luna's bitmap under lpd_batavi.
"""
from __future__ import annotations

import argparse
import re
import shutil
import zipfile
from pathlib import Path

SHARED = [
    "ssl/body/customization/customization_decal_library.sso",
    "ssl/body/customization/customization_decal_library.sso.resource",
    "ssl/body/customization/heraldry_progression/default_heraldry_items_library.sso",
    "ssl/ui/fusion/assets/switchers/decals/ui_switcher_decals.sso",
    "ssl/ui/fusion/assets/switchers/decals/ui_switcher_decals.sso.resource",
    "ssl/ui/screens/codex/ui_heraldry_library.sso",
    "ssl/ui/screens/codex/ui_heraldry_library.sso.resource",
    "td/ch_lpd.td",
    "td/ch_lpd.td.resource",
    "td/ch_rpd.td",
    "td/ch_rpd.td.resource",
    "texts/strings_astartes.str",
]

LUNA_ASSETS = [
    "td/lpd_luna_wolves.td",
    "td/lpd_luna_wolves.td.resource",
    "textures/ui/decals_icons/lpd_luna_wolves.asset/lpd_luna_wolves.pct",
    "textures/ui/decals_icons/lpd_luna_wolves.asset/lpd_luna_wolves.pct.resource",
    "textures/ui/decals_icons/lpd_luna_wolves.asset/lpd_luna_wolves.texture.asset",
]

RENAMES = [
    ("luna_wolves", "batavi"),
    ("Luna_Wolves", "Batavi"),
    ("LUNA_WOLVES", "BATAVI"),
    ("Luna Wolves", "Cohors Batavorum"),
    ("lpd_luna_wolves", "lpd_batavi"),
    ("d_shldr_luna_wolves", "d_shldr_batavi"),
]


def decode(raw: bytes) -> tuple[str, str]:
    if raw.startswith(b"\xff\xfe") or raw.startswith(b"\xfe\xff"):
        return raw.decode("utf-16"), "utf-16"
    if len(raw) > 3 and raw[1] == 0 and raw[3] == 0:
        return raw.decode("utf-16-le"), "utf-16-le"
    return raw.decode("utf-8"), "utf-8"


def encode(text: str, enc: str) -> bytes:
    return text.encode(enc)


def rename_batavi(text: str) -> str:
    for a, b in RENAMES:
        text = text.replace(a, b)
    return force_batavi_three_colors(text)


def force_batavi_three_colors(text: str) -> str:
    """Ensure Batavi decal entries use 3 tint slots (R wolf / G field / B sword)."""
    # Luna is 2-color; naive string replace often misses whitespace variants.
    pattern = re.compile(
        r"(Left_Pau_Decal_Batavi|Right_Pau_Decal_Batavi)\s*=\s*\{"
        r"(.*?)"
        r"(__type\s*=\s*\"CustomizationDecal\")",
        re.S,
    )

    def _fix(m: re.Match) -> str:
        head, body, tail = m.group(1), m.group(2), m.group(3)
        body = re.sub(r"colorsNumber\s*=\s*\d+", "colorsNumber   =   3", body)
        if "tertiary" not in body:
            body = re.sub(
                r'(secondary\s*=\s*"[^"]*"\s*\n)',
                r'\1               tertiary   =   "Liberator_Gold"\n',
                body,
                count=1,
            )
        # Prefer crimson field default if still on Luna gold-as-secondary
        body = re.sub(
            r'secondary\s*=\s*"Liberator_Gold"',
            'secondary   =   "Mephiston_Red"',
            body,
        )
        return f"{head}   =   {{{body}{tail}"

    return pattern.sub(_fix, text)


def map_name(name: str) -> str:
    for a, b in RENAMES:
        name = name.replace(a, b)
    return name


def extract_block(text: str, key: str) -> str:
    m = re.search(rf"(?m)^([ \t]*)({re.escape(key)})\s*=\s*\{{", text)
    if not m:
        raise KeyError(key)
    start = m.start()
    i = text.find("{", m.end() - 1)
    depth = 0
    for j in range(i, len(text)):
        if text[j] == "{":
            depth += 1
        elif text[j] == "}":
            depth -= 1
            if depth == 0:
                end = j + 1
                if end < len(text) and text[end] == "\r":
                    end += 1
                if end < len(text) and text[end] == "\n":
                    end += 1
                return text[start:end]
    raise KeyError(f"unclosed {key}")


def has_key(text: str, key: str) -> bool:
    return re.search(rf"(?m)^[ \t]*{re.escape(key)}\s*=\s*\{{", text) is not None


def insert_after(text: str, after_key: str, block: str) -> str:
    # identity check on key inside block
    km = re.search(r"(?m)^[ \t]*([A-Za-z0-9_]+)\s*=\s*\{", block)
    if km and has_key(text, km.group(1)):
        return text
    m = re.search(rf"(?m)^[ \t]*{re.escape(after_key)}\s*=\s*\{{", text)
    if not m:
        raise KeyError(after_key)
    i = text.find("{", m.end() - 1)
    depth = 0
    for j in range(i, len(text)):
        if text[j] == "{":
            depth += 1
        elif text[j] == "}":
            depth -= 1
            if depth == 0:
                end = j + 1
                if end < len(text) and text[end] == "\r":
                    end += 1
                if end < len(text) and text[end] == "\n":
                    end += 1
                return text[:end] + block + text[end:]
    raise KeyError(f"unclosed {after_key}")


def inject_list_items(text: str, list_name: str, items: list[str]) -> str:
    m = re.search(rf"(?m)^[ \t]*{re.escape(list_name)}\s*=\s*\[", text)
    if not m:
        return text
    start = text.find("[", m.start())
    end = text.find("]", start)
    body = text[start + 1 : end]
    additions = []
    for item in items:
        token = f'"{item}"'
        if token not in body:
            additions.append(f"   {token},\n")
    if not additions:
        return text
    insert_at = start + 1
    if insert_at < len(text) and text[insert_at] in "\r\n":
        if text[insert_at] == "\r":
            insert_at += 1
        if insert_at < len(text) and text[insert_at] == "\n":
            insert_at += 1
    return text[:insert_at] + "".join(additions) + text[insert_at:]


def inject_material(ch_td: str, material_block: str, material_name: str) -> str:
    if has_key(ch_td, material_name):
        return ch_td
    m = re.search(r"(?m)^materials\s*=\s*\{", ch_td)
    if not m:
        raise KeyError("materials")
    line_end = ch_td.find("\n", m.end())
    line_end = len(ch_td) if line_end < 0 else line_end + 1
    return ch_td[:line_end] + material_block + ch_td[line_end:]


def ensure_three_tint_layers(material_block: str) -> str:
    """Ultramarines-style layer0..2 + disabled layer3 for tertiary (B) tint."""
    if "layer2" in material_block:
        return material_block
    old = """               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
            }"""
    new = """               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }"""
    if old not in material_block:
        raise KeyError("layer1 block not found for 3-tint patch")
    return material_block.replace(old, new, 1)

def ensure_string_line(text: str, key: str, value: str) -> str:
    wanted = f'{key}\t\t\t\t"{value}"'
    if re.search(rf"(?m)^{re.escape(key)}\t", text):
        return re.sub(rf"(?m)^{re.escape(key)}\t.*$", wanted, text)
    if not text.endswith("\n"):
        text += "\n"
    return text + wanted + "\n"


def load_stage(path: Path) -> tuple[str, str]:
    return decode(path.read_bytes())


def save_stage(path: Path, text: str, enc: str) -> None:
    path.write_bytes(encode(text, enc))


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--bridge-pak", type=Path, required=True)
    ap.add_argument("--luna-pak", type=Path, required=True)
    ap.add_argument("--stage", type=Path, required=True)
    ap.add_argument("--pct-dir", type=Path, required=True)
    ap.add_argument(
        "--menu-icon-pct",
        type=Path,
        default=None,
        help="Optional baked lpd_batavi menu .pct (100×100 Luna-style)",
    )
    args = ap.parse_args()

    if args.stage.exists():
        shutil.rmtree(args.stage)
    args.stage.mkdir(parents=True)

    with zipfile.ZipFile(args.bridge_pak) as zb, zipfile.ZipFile(args.luna_pak) as zl:
        for name in SHARED:
            if name not in zb.namelist():
                print("warn: missing in bridge:", name)
                continue
            dest = args.stage / name
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(zb.read(name))
            print("bridge", name)

        luna_decal, _ = decode(zl.read("ssl/body/customization/customization_decal_library.sso"))
        luna_ui, _ = decode(zl.read("ssl/ui/screens/codex/ui_heraldry_library.sso"))
        luna_sw, _ = decode(zl.read("ssl/ui/fusion/assets/switchers/decals/ui_switcher_decals.sso"))
        luna_lpd, _ = decode(zl.read("td/ch_lpd.td"))
        try:
            luna_rpd, _ = decode(zl.read("td/ch_rpd.td"))
        except KeyError:
            luna_rpd = luna_lpd

        blocks = {
            "left_decal_luna": extract_block(luna_decal, "Left_Pau_Decal_Luna_Wolves"),
            "right_decal_luna": extract_block(luna_decal, "Right_Pau_Decal_Luna_Wolves"),
            "left_ui_luna": extract_block(luna_ui, "Left_Pau_Decal_Luna_Wolves"),
            "right_ui_luna": extract_block(luna_ui, "Right_Pau_Decal_Luna_Wolves"),
            "icon_luna": extract_block(luna_sw, "lpd_luna_wolves"),
            "mat_l_luna": extract_block(luna_lpd, "luna_wolves"),
        }
        try:
            blocks["mat_r_luna"] = extract_block(luna_rpd, "luna_wolves")
        except KeyError:
            blocks["mat_r_luna"] = blocks["mat_l_luna"]

        blocks_b = {k: rename_batavi(v) for k, v in blocks.items()}
        blocks_b["mat_l_luna"] = ensure_three_tint_layers(blocks_b["mat_l_luna"])
        blocks_b["mat_r_luna"] = ensure_three_tint_layers(blocks_b["mat_r_luna"])

        # --- decal library ---
        p = args.stage / "ssl/body/customization/customization_decal_library.sso"
        t, enc = load_stage(p)
        anchor_l = "Left_Pau_Decal_Ultramarines" if has_key(t, "Left_Pau_Decal_Ultramarines") else "Left_Pau_Blank"
        anchor_r = "Right_Pau_Decal_Ultramarines" if has_key(t, "Right_Pau_Decal_Ultramarines") else "Right_Pau_Blank"
        for b in (blocks["left_decal_luna"], blocks_b["left_decal_luna"]):
            t = insert_after(t, anchor_l, b)
        for b in (blocks["right_decal_luna"], blocks_b["right_decal_luna"]):
            try:
                t = insert_after(t, anchor_r, b)
            except KeyError:
                t = insert_after(t, anchor_l, b)
        t = force_batavi_three_colors(t)
        save_stage(p, t, enc)
        print("inject decal library")

        # --- ui heraldry ---
        p = args.stage / "ssl/ui/screens/codex/ui_heraldry_library.sso"
        t, enc = load_stage(p)
        for b in (
            blocks["left_ui_luna"],
            blocks_b["left_ui_luna"],
            blocks["right_ui_luna"],
            blocks_b["right_ui_luna"],
        ):
            t = insert_after(t, "Left_Pau_Decal_Ultramarines", b)
        save_stage(p, t, enc)
        print("inject ui heraldry")

        # --- switcher icons ---
        p = args.stage / "ssl/ui/fusion/assets/switchers/decals/ui_switcher_decals.sso"
        t, enc = load_stage(p)
        anchor = "lpd_ultramarines" if has_key(t, "lpd_ultramarines") else None
        if not anchor:
            m = re.search(r"(?m)^[ \t]*(lpd_[A-Za-z0-9_]+)\s*=\s*\{", t)
            if not m:
                raise SystemExit("no lpd_* anchor in switcher")
            anchor = m.group(1)
        for b in (blocks["icon_luna"], blocks_b["icon_luna"]):
            t = insert_after(t, anchor, b)
        save_stage(p, t, enc)
        print("inject switcher")

        # --- progression unlock list ---
        p = args.stage / (
            "ssl/body/customization/heraldry_progression/default_heraldry_items_library.sso"
        )
        t, enc = load_stage(p)
        t = inject_list_items(
            t,
            "decals",
            [
                "Left_Pau_Decal_Luna_Wolves",
                "Right_Pau_Decal_Luna_Wolves",
                "Left_Pau_Decal_Batavi",
                "Right_Pau_Decal_Batavi",
            ],
        )
        save_stage(p, t, enc)
        print("inject progression")

        # --- materials ---
        for rel, ml, mb in (
            ("td/ch_lpd.td", blocks["mat_l_luna"], blocks_b["mat_l_luna"]),
            ("td/ch_rpd.td", blocks["mat_r_luna"], blocks_b["mat_r_luna"]),
        ):
            p = args.stage / rel
            t, enc = load_stage(p)
            t = inject_material(t, ml, "luna_wolves")
            t = inject_material(t, mb, "batavi")
            save_stage(p, t, enc)
            print("inject", rel)

        # --- strings ---
        p = args.stage / "texts/strings_astartes.str"
        t, enc = load_stage(p)
        t = ensure_string_line(t, "UI_HERALDRY_LEFT_PAU_DECAL_LUNA_WOLVES_NAME", "Luna Wolves")
        t = ensure_string_line(t, "UI_HERALDRY_RIGHT_PAU_DECAL_LUNA_WOLVES_NAME", "Luna Wolves")
        t = ensure_string_line(t, "UI_HERALDRY_LEFT_PAU_DECAL_BATAVI_NAME", "Cohors Batavorum")
        t = ensure_string_line(t, "UI_HERALDRY_RIGHT_PAU_DECAL_BATAVI_NAME", "Cohors Batavorum")
        save_stage(p, t, enc)
        print("inject strings")

        # --- batavi-only assets (icon / td), renamed from Luna ---
        for name in LUNA_ASSETS:
            raw = zl.read(name)
            new_name = map_name(name)
            if new_name.endswith((".resource", ".td", ".texture.asset")):
                try:
                    txt, e = decode(raw)
                    raw = encode(rename_batavi(txt), e)
                except Exception:
                    pass
            dest = args.stage / new_name
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(raw)
            print("asset", new_name)

        # Replace menu icon bitmap with chapter seal (keep Luna resource wrappers)
        if args.menu_icon_pct and args.menu_icon_pct.is_file():
            dest = (
                args.stage
                / "textures/ui/decals_icons/lpd_batavi.asset/lpd_batavi.pct"
            )
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(args.menu_icon_pct.read_bytes())
            print("menu icon", dest.relative_to(args.stage))

        # Luna pct.resource templates → batavi names (textures overwritten next)
        for side in ("01", "02"):
            for kind in ("", "_cc"):
                src = f"pct/d_shldr_luna_wolves_{side}{kind}.pct.resource"
                txt, e = decode(zl.read(src))
                dest = args.stage / map_name(src)
                dest.parent.mkdir(parents=True, exist_ok=True)
                dest.write_bytes(encode(rename_batavi(txt), e))
                print("resource", dest.name)

    for p in sorted(args.pct_dir.glob("d_shldr_batavi_*.pct")):
        dest = args.stage / "pct" / p.name
        shutil.copy2(p, dest)
        print("texture", dest.relative_to(args.stage))

    # Prefer our generated .pct.resource if present
    for p in sorted(args.pct_dir.glob("d_shldr_batavi_*.pct.resource")):
        text = rename_batavi(p.read_text(encoding="utf-8", errors="replace"))
        (args.stage / "pct" / p.name).write_text(text, encoding="utf-8")
        print("resource", p.name)

    # Bundle Luna shoulder .pct too (materials reference them; first-wins pack must carry links)
    with zipfile.ZipFile(args.luna_pak) as zl:
        for name in zl.namelist():
            if not name.startswith("pct/d_shldr_luna_wolves_"):
                continue
            dest = args.stage / name
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(zl.read(name))
            print("luna texture", name)
        # Luna UI icon (grid) — switcher resource must link it
        for name in (
            "textures/ui/decals_icons/lpd_luna_wolves.asset/lpd_luna_wolves.pct",
            "textures/ui/decals_icons/lpd_luna_wolves.asset/lpd_luna_wolves.pct.resource",
            "textures/ui/decals_icons/lpd_luna_wolves.asset/lpd_luna_wolves.texture.asset",
            "td/lpd_luna_wolves.td",
            "td/lpd_luna_wolves.td.resource",
        ):
            if name not in zl.namelist():
                continue
            dest = args.stage / name
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(zl.read(name))
            print("luna asset", name)

    # Resource dependency graph: without these, materials/icons stay blank gray
    patch_links_pct(
        args.stage / "td/ch_lpd.td.resource",
        [
            "res://pct/d_shldr_batavi_01.pct.resource",
            "res://pct/d_shldr_batavi_01_cc.pct.resource",
            "res://pct/d_shldr_luna_wolves_01.pct.resource",
            "res://pct/d_shldr_luna_wolves_01_cc.pct.resource",
        ],
    )
    patch_links_pct(
        args.stage / "td/ch_rpd.td.resource",
        [
            "res://pct/d_shldr_batavi_02.pct.resource",
            "res://pct/d_shldr_batavi_02_cc.pct.resource",
            "res://pct/d_shldr_luna_wolves_02.pct.resource",
            "res://pct/d_shldr_luna_wolves_02_cc.pct.resource",
        ],
    )
    patch_dynamic_links(
        args.stage / "ssl/ui/fusion/assets/switchers/decals/ui_switcher_decals.sso.resource",
        [
            "res://textures/ui/decals_icons/lpd_batavi.asset/lpd_batavi.texture.asset",
            "res://textures/ui/decals_icons/lpd_luna_wolves.asset/lpd_luna_wolves.texture.asset",
        ],
    )

    print("done", args.stage)
    return 0


def patch_links_pct(path: Path, links: list[str]) -> None:
    if not path.exists():
        print("warn: missing", path)
        return
    text, enc = decode(path.read_bytes())
    if "linksPct:" not in text:
        print("warn: no linksPct in", path)
        return
    added = []
    for link in links:
        if link not in text:
            added.append(f"- {link}\n")
    if not added:
        print("linksPct already ok", path.name)
        return
    # insert after `linksPct:` line
    lines = text.splitlines(keepends=True)
    out = []
    inserted = False
    for line in lines:
        out.append(line)
        if not inserted and line.strip() == "linksPct:":
            out.extend(added)
            inserted = True
    path.write_bytes(encode("".join(out), enc))
    print("linksPct +", len(added), path.name)


def patch_dynamic_links(path: Path, links: list[str]) -> None:
    if not path.exists():
        print("warn: missing", path)
        return
    text, enc = decode(path.read_bytes())
    added = []
    for link in links:
        if link not in text:
            added.append(f"- {link}\n")
    if not added:
        print("dynamicLinks already ok", path.name)
        return
    lines = text.splitlines(keepends=True)
    out = []
    inserted = False
    for line in lines:
        out.append(line)
        if not inserted and line.strip() == "dynamicLinks:":
            out.extend(added)
            inserted = True
    if not inserted:
        print("warn: no dynamicLinks in", path)
        return
    path.write_bytes(encode("".join(out), enc))
    print("dynamicLinks +", len(added), path.name)


if __name__ == "__main__":
    raise SystemExit(main())
