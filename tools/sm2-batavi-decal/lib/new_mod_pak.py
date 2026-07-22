#!/usr/bin/env python3
"""Pack stage/ into a SM2 Mods .pak (ZIP store / no compression)."""
from __future__ import annotations

import argparse
import re
import zipfile
from pathlib import Path


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("out_name")
    ap.add_argument("stage", type=Path)
    ap.add_argument("pack_dir", type=Path)
    args = ap.parse_args()

    out_name = args.out_name.lower()
    if not re.match(r"^[a-z0-9][a-z0-9_-]*$", out_name):
        print(f"error: bad out_name: {out_name}", flush=True)
        return 1

    stage: Path = args.stage.resolve()
    if not stage.is_dir():
        print(f"error: stage missing: {stage}", flush=True)
        return 1

    files = sorted(
        p for p in stage.rglob("*") if p.is_file() and p.name != ".gitkeep"
    )
    if not files:
        print(f"error: stage has no payload files: {stage}", flush=True)
        return 1

    pack_dir: Path = args.pack_dir.resolve()
    pack_dir.mkdir(parents=True, exist_ok=True)
    pak = pack_dir / f"{out_name}.pak"
    if pak.exists():
        pak.unlink()

    with zipfile.ZipFile(pak, "w", compression=zipfile.ZIP_STORED) as zf:
        for f in files:
            arc = f.relative_to(stage).as_posix()
            zf.write(f, arcname=arc)

    print(f"Created: {pak}")
    print("Install: copy into <SM2>/client_pc/root/mods/")
    print("Tip: for quick iteration, copy stage/ into client_pc/root/local/ instead.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
