#!/usr/bin/env python3
"""Resize a PNG to SIZE×SIZE RGBA and write an uncompressed top-left TGA.

Uses Pillow if available, else ImageMagick, else a stdlib PNG decoder
(8-bit RGB/RGBA/greyscale/palette; nearest-neighbor resize).
"""
from __future__ import annotations

import argparse
import struct
import subprocess
import sys
import tempfile
import zlib
from pathlib import Path


def write_tga(path: Path, bgra: bytes, width: int, height: int) -> None:
    if len(bgra) != width * height * 4:
        raise ValueError(f"pixel buffer size mismatch: {len(bgra)} vs {width * height * 4}")
    header = bytearray(18)
    header[2] = 2  # uncompressed true-color
    header[12:14] = struct.pack("<H", width)
    header[14:16] = struct.pack("<H", height)
    header[16] = 32
    header[17] = 0x28  # top-left origin, 8-bit alpha
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(bytes(header) + bgra)


def rgba_to_bgra(rgba: bytes) -> bytes:
    out = bytearray(len(rgba))
    for i in range(0, len(rgba), 4):
        r, g, b, a = rgba[i], rgba[i + 1], rgba[i + 2], rgba[i + 3]
        out[i] = b
        out[i + 1] = g
        out[i + 2] = r
        out[i + 3] = a
    return bytes(out)


def nearest_resize_rgba(rgba: bytes, src_w: int, src_h: int, dst: int) -> bytes:
    if src_w == dst and src_h == dst:
        return rgba
    out = bytearray(dst * dst * 4)
    for y in range(dst):
        sy = min(src_h - 1, (y * src_h) // dst)
        for x in range(dst):
            sx = min(src_w - 1, (x * src_w) // dst)
            si = (sy * src_w + sx) * 4
            di = (y * dst + x) * 4
            out[di : di + 4] = rgba[si : si + 4]
    return bytes(out)


def _paeth(a: int, b: int, c: int) -> int:
    p = a + b - c
    pa = abs(p - a)
    pb = abs(p - b)
    pc = abs(p - c)
    if pa <= pb and pa <= pc:
        return a
    if pb <= pc:
        return b
    return c


def _unfilter(filter_type: int, cur: bytearray, prev: bytes, bpp: int) -> None:
    if filter_type == 0:
        return
    if filter_type == 1:  # Sub
        for i in range(bpp, len(cur)):
            cur[i] = (cur[i] + cur[i - bpp]) & 0xFF
        return
    if filter_type == 2:  # Up
        for i in range(len(cur)):
            cur[i] = (cur[i] + prev[i]) & 0xFF
        return
    if filter_type == 3:  # Average
        for i in range(len(cur)):
            left = cur[i - bpp] if i >= bpp else 0
            up = prev[i]
            cur[i] = (cur[i] + ((left + up) // 2)) & 0xFF
        return
    if filter_type == 4:  # Paeth
        for i in range(len(cur)):
            left = cur[i - bpp] if i >= bpp else 0
            up = prev[i]
            up_left = prev[i - bpp] if i >= bpp else 0
            cur[i] = (cur[i] + _paeth(left, up, up_left)) & 0xFF
        return
    raise ValueError(f"unsupported PNG filter type: {filter_type}")


def decode_png_rgba(path: Path) -> tuple[int, int, bytes]:
    data = path.read_bytes()
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        raise ValueError("not a PNG")
    pos = 8
    width = height = bit_depth = color_type = None
    raw = bytearray()
    palette: bytes | None = None
    while pos + 8 <= len(data):
        length = struct.unpack(">I", data[pos : pos + 4])[0]
        ctype = data[pos + 4 : pos + 8]
        chunk = data[pos + 8 : pos + 8 + length]
        pos += 12 + length
        if ctype == b"IHDR":
            width, height, bit_depth, color_type, *_ = struct.unpack(">IIBBBBB", chunk)
        elif ctype == b"PLTE":
            palette = chunk
        elif ctype == b"IDAT":
            raw.extend(chunk)
        elif ctype == b"IEND":
            break
    if width is None or height is None or bit_depth is None or color_type is None:
        raise ValueError("incomplete PNG")
    if bit_depth != 8:
        raise ValueError(f"unsupported bit depth: {bit_depth} (need 8)")

    decompressed = zlib.decompress(bytes(raw))
    if color_type == 2:
        channels = 3
    elif color_type == 6:
        channels = 4
    elif color_type == 0:
        channels = 1
    elif color_type == 3:
        channels = 1
    elif color_type == 4:
        channels = 2
    else:
        raise ValueError(f"unsupported color type: {color_type}")

    stride = width * channels
    bpp = channels
    rows: list[bytes] = []
    prev = bytes(stride)
    offset = 0
    for _ in range(height):
        ft = decompressed[offset]
        offset += 1
        cur = bytearray(decompressed[offset : offset + stride])
        offset += stride
        _unfilter(ft, cur, prev, bpp)
        prev = bytes(cur)
        rows.append(bytes(cur))

    rgba = bytearray(width * height * 4)
    di = 0
    for row in rows:
        if color_type == 6:
            rgba[di : di + stride] = row
            di += stride
        elif color_type == 2:
            for i in range(0, stride, 3):
                rgba[di : di + 4] = bytes((row[i], row[i + 1], row[i + 2], 255))
                di += 4
        elif color_type == 0:
            for v in row:
                rgba[di : di + 4] = bytes((v, v, v, 255))
                di += 4
        elif color_type == 4:
            for i in range(0, stride, 2):
                v, a = row[i], row[i + 1]
                rgba[di : di + 4] = bytes((v, v, v, a))
                di += 4
        elif color_type == 3:
            if not palette:
                raise ValueError("palette PNG missing PLTE")
            for idx in row:
                p = idx * 3
                rgba[di : di + 4] = bytes((palette[p], palette[p + 1], palette[p + 2], 255))
                di += 4
    return width, height, bytes(rgba)


def _load_rgba_pillow(src: Path, size: int) -> bytes:
    from PIL import Image  # type: ignore

    im = Image.open(src).convert("RGBA")
    if im.size != (size, size):
        im = im.resize((size, size), Image.Resampling.LANCZOS)
    r, g, b, a = im.split()
    bgra = Image.merge("RGBA", (b, g, r, a))
    return bgra.tobytes()


def _load_rgba_imagemagick(src: Path, size: int) -> bytes:
    with tempfile.TemporaryDirectory() as td:
        raw = Path(td) / "out.rgba"
        cmds = [
            ["magick", str(src), "-resize", f"{size}x{size}!", "-depth", "8", f"rgba:{raw}"],
            ["convert", str(src), "-resize", f"{size}x{size}!", "-depth", "8", f"rgba:{raw}"],
        ]
        last_err: Exception | None = None
        for cmd in cmds:
            try:
                subprocess.run(cmd, check=True, capture_output=True)
                return rgba_to_bgra(raw.read_bytes())
            except (FileNotFoundError, subprocess.CalledProcessError) as e:
                last_err = e
        raise RuntimeError(f"ImageMagick failed: {last_err}")


def _load_rgba_stdlib(src: Path, size: int) -> bytes:
    w, h, rgba = decode_png_rgba(src)
    rgba = nearest_resize_rgba(rgba, w, h, size)
    return rgba_to_bgra(rgba)


def load_bgra(src: Path, size: int) -> bytes:
    try:
        return _load_rgba_pillow(src, size)
    except ImportError:
        pass
    try:
        return _load_rgba_imagemagick(src, size)
    except RuntimeError:
        pass
    return _load_rgba_stdlib(src, size)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("png", type=Path)
    ap.add_argument("out_tga", type=Path, nargs="+", help="one or more output .tga paths")
    ap.add_argument("--size", type=int, default=1024)
    args = ap.parse_args()
    if not args.png.is_file():
        print(f"error: missing PNG: {args.png}", file=sys.stderr)
        return 1
    bgra = load_bgra(args.png, args.size)
    for out in args.out_tga:
        write_tga(out, bgra, args.size, args.size)
        print(f"wrote {out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
