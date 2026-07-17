#!/usr/bin/env python3
"""PNG -> uncompressed top-left 32-bit TGA (stdlib PNG decoder + optional Pillow)."""
from __future__ import annotations

import argparse
import struct
import sys
import zlib
from pathlib import Path


def write_tga(path: Path, bgra: bytes, width: int, height: int) -> None:
    if len(bgra) != width * height * 4:
        raise ValueError("pixel buffer size mismatch")
    header = bytearray(18)
    header[2] = 2
    header[12:14] = struct.pack("<H", width)
    header[14:16] = struct.pack("<H", height)
    header[16] = 32
    header[17] = 0x28
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(bytes(header) + bgra)


def rgba_to_bgra(rgba: bytes) -> bytes:
    out = bytearray(len(rgba))
    for i in range(0, len(rgba), 4):
        r, g, b, a = rgba[i], rgba[i + 1], rgba[i + 2], rgba[i + 3]
        out[i : i + 4] = bytes((b, g, r, a))
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
    pa, pb, pc = abs(p - a), abs(p - b), abs(p - c)
    if pa <= pb and pa <= pc:
        return a
    if pb <= pc:
        return b
    return c


def _unfilter(ft: int, cur: bytearray, prev: bytes, bpp: int) -> None:
    if ft == 0:
        return
    if ft == 1:
        for i in range(bpp, len(cur)):
            cur[i] = (cur[i] + cur[i - bpp]) & 0xFF
        return
    if ft == 2:
        for i in range(len(cur)):
            cur[i] = (cur[i] + prev[i]) & 0xFF
        return
    if ft == 3:
        for i in range(len(cur)):
            left = cur[i - bpp] if i >= bpp else 0
            cur[i] = (cur[i] + ((left + prev[i]) // 2)) & 0xFF
        return
    if ft == 4:
        for i in range(len(cur)):
            left = cur[i - bpp] if i >= bpp else 0
            up = prev[i]
            up_left = prev[i - bpp] if i >= bpp else 0
            cur[i] = (cur[i] + _paeth(left, up, up_left)) & 0xFF
        return
    raise ValueError(f"unsupported PNG filter {ft}")


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
    if None in (width, height, bit_depth, color_type):
        raise ValueError("incomplete PNG")
    if bit_depth != 8:
        raise ValueError(f"need 8-bit PNG, got {bit_depth}")

    decompressed = zlib.decompress(bytes(raw))
    channels = {0: 1, 2: 3, 3: 1, 4: 2, 6: 4}[color_type]
    stride = width * channels
    rows: list[bytes] = []
    prev = bytes(stride)
    offset = 0
    for _ in range(height):
        ft = decompressed[offset]
        offset += 1
        cur = bytearray(decompressed[offset : offset + stride])
        offset += stride
        _unfilter(ft, cur, prev, channels)
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


def load_bgra(src: Path, size: int) -> bytes:
    try:
        from PIL import Image  # type: ignore

        im = Image.open(src).convert("RGBA")
        if im.size != (size, size):
            im = im.resize((size, size), Image.Resampling.LANCZOS)
        r, g, b, a = im.split()
        return Image.merge("RGBA", (b, g, r, a)).tobytes()
    except ImportError:
        w, h, rgba = decode_png_rgba(src)
        return rgba_to_bgra(nearest_resize_rgba(rgba, w, h, size))


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("png", type=Path)
    ap.add_argument("out_tga", type=Path, nargs="+")
    ap.add_argument("--size", type=int, default=1024)
    args = ap.parse_args()
    if not args.png.is_file():
        print(f"error: missing {args.png}", file=sys.stderr)
        return 1
    bgra = load_bgra(args.png, args.size)
    for out in args.out_tga:
        write_tga(out, bgra, args.size, args.size)
        print(f"wrote {out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
