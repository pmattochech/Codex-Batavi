#!/usr/bin/env python3
"""Pack stage/ into a SM2 Mods .pak (ZIP store)."""
from __future__ import annotations

import argparse
import re
import zipfile
from pathlib import Path


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("out_name")
    ap.add_argument("stage", type=Path)
    ap.add_argument("pack_dir", type=Path)
    args = ap.parse_args()
    name = args.out_name.lower()
    if not re.match(r"^[a-z0-9][a-z0-9_-]*$", name):
        print(f"error: bad name {name}")
        return 1
    stage = args.stage.resolve()
    files = sorted(p for p in stage.rglob("*") if p.is_file() and p.name != ".gitkeep")
    if not files:
        print(f"error: empty stage {stage}")
        return 1
    pack_dir = args.pack_dir.resolve()
    pack_dir.mkdir(parents=True, exist_ok=True)
    pak = pack_dir / f"{name}.pak"
    if pak.exists():
        pak.unlink()
    with zipfile.ZipFile(pak, "w", compression=zipfile.ZIP_STORED) as zf:
        for f in files:
            zf.write(f, arcname=f.relative_to(stage).as_posix())
    print(f"Created: {pak}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
