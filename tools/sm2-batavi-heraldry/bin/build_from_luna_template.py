#!/usr/bin/env python3
"""Clone Luna Wolves 13.2.2 pak structure → Batavi names, inject textures, write stage/."""
from __future__ import annotations

import argparse
import re
import shutil
import zipfile
from pathlib import Path

REPLACEMENTS = [
    ("luna_wolves", "batavi"),
    ("Luna_Wolves", "Batavi"),
    ("LUNA_WOLVES", "BATAVI"),
    ("Luna Wolves", "Cohors Batavorum"),
    ("lpd_luna_wolves", "lpd_batavi"),
    ("d_shldr_luna_wolves", "d_shldr_batavi"),
]


def rewrite_text(s: str) -> str:
    for a, b in REPLACEMENTS:
        s = s.replace(a, b)
    # 3-color defaults: wolf / field / sword
    s = s.replace(
        """            colorsNumber   =   2
            defaultColoring   =   {
               primary   =   "White_Scar"
               secondary   =   "Liberator_Gold"
               __type   =   "CustomizationDecalColoringInfo"
            }""",
        """            colorsNumber   =   3
            defaultColoring   =   {
               primary   =   "White_Scar"
               secondary   =   "Mephiston_Red"
               tertiary   =   "Liberator_Gold"
               __type   =   "CustomizationDecalColoringInfo"
            }""",
    )
    return s


def rewrite_bytes(data: bytes, path: str) -> bytes:
    # Binary payloads (.pct textures, etc.) — only rename path, not contents
    if path.endswith(".pct") and "/pct/" in path.replace("\\", "/"):
        return data
    if path.endswith(".pct") and "decals_icons" in path:
        return data  # UI icon bitmap

    text_suffixes = (
        ".sso",
        ".resource",
        ".str",
        ".td",
        ".texture.asset",
        ".txt",
        ".td.resource",
        ".sso.resource",
        ".pct.resource",
    )
    if not path.endswith(text_suffixes):
        return data

    for enc in ("utf-8", "utf-16-le", "utf-16", "cp1252"):
        try:
            text = data.decode(enc)
            break
        except UnicodeDecodeError:
            text = None
    else:
        return data

    bom = ""
    if text.startswith("\ufeff"):
        bom = "\ufeff"
        text = text.lstrip("\ufeff")
    nl = "\r\n" if "\r\n" in text else "\n"
    out = bom + rewrite_text(text.replace("\r\n", "\n")).replace("\n", nl)
    return out.encode(enc if enc.startswith("utf") else "utf-8")


def map_name(name: str) -> str:
    for a, b in REPLACEMENTS:
        name = name.replace(a, b)
    return name


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--luna-pak", type=Path, required=True)
    ap.add_argument("--stage", type=Path, required=True)
    ap.add_argument(
        "--pct-dir",
        type=Path,
        required=True,
        help="dir with d_shldr_batavi_01.pct etc already built",
    )
    args = ap.parse_args()

    if args.stage.exists():
        shutil.rmtree(args.stage)
    args.stage.mkdir(parents=True)

    with zipfile.ZipFile(args.luna_pak) as z:
        for info in z.infolist():
            if info.is_dir():
                continue
            raw = z.read(info.filename)
            new_name = map_name(info.filename)
            # Skip Luna texture payloads — we replace them
            if new_name.startswith("pct/d_shldr_batavi_") and new_name.endswith(".pct"):
                continue
            data = rewrite_bytes(raw, new_name)
            dest = args.stage / new_name
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(data)
            print("stage", new_name)

    # Copy our .pct + rewritten resources from pct-dir
    for p in sorted(args.pct_dir.glob("d_shldr_batavi_*.pct")):
        dest = args.stage / "pct" / p.name
        shutil.copy2(p, dest)
        print("texture", dest.relative_to(args.stage))
    for p in sorted(args.pct_dir.glob("d_shldr_batavi_*.pct.resource")):
        text = rewrite_text(p.read_text(encoding="utf-8", errors="replace"))
        # force batavi names in resource
        (args.stage / "pct" / p.name).write_text(text, encoding="utf-8")
        print("resource", p.name)

    # UI icon: reuse Luna icon bytes under batavi path (placeholder until custom icon)
    # Already remapped by map_name from luna asset folder.
    print("done", args.stage)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
