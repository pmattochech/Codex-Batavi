#!/usr/bin/env python3
"""Wrap TexMipper *_1..9.pct_mip chain into Luna-style monolithic .pct (header+body)."""
from __future__ import annotations

import argparse
from pathlib import Path

MIP_SIZES = [1048576, 262144, 65536, 16384, 4096, 1024, 256, 64, 16]
FACE_SIZE = sum(MIP_SIZES)  # 1398096


def assemble(header: bytes, mip_prefix: Path, out_pct: Path) -> None:
    if len(header) != 136:
        raise SystemExit(f"header must be 136 bytes, got {len(header)}")
    parts = []
    for i, expect in enumerate(MIP_SIZES, 1):
        p = mip_prefix.parent / f"{mip_prefix.name}_{i}.pct_mip"
        data = p.read_bytes()
        if len(data) != expect:
            raise SystemExit(f"{p.name}: size {len(data)} != {expect}")
        parts.append(data)
    body = b"".join(parts)
    if len(body) != FACE_SIZE:
        raise SystemExit(f"body {len(body)} != {FACE_SIZE}")
    out_pct.parent.mkdir(parents=True, exist_ok=True)
    # Luna files are faceSize+142; trailing 6 bytes often zero — pad to match
    out_pct.write_bytes(header + body + b"\x00" * 6)
    print(f"wrote {out_pct} ({out_pct.stat().st_size} bytes)")


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--header", type=Path, required=True)
    ap.add_argument(
        "--mip-prefix",
        type=Path,
        required=True,
        help="path WITHOUT _N.pct_mip suffix, e.g. stage/pct/d_shldr_batavi_01",
    )
    ap.add_argument("--out", type=Path, required=True)
    args = ap.parse_args()
    assemble(args.header.read_bytes(), args.mip_prefix, args.out)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
