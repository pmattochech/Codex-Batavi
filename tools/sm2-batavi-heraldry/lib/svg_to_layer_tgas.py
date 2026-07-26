#!/usr/bin/env python3
"""Export chapter-seal.svg → Luna-style albedo + 3-channel _cc TGAs (1024).

Layers (tint channels):
  R / primary   = wolf head
  G / secondary = field (disk inside Outer_rim, minus wolf & sword)
  B / tertiary  = gladius / sword

Also writes a 100×100 white-on-black menu icon TGA for TexMipper (BC7 / format 52).
"""
from __future__ import annotations

import argparse
import struct
import subprocess
import tempfile
from pathlib import Path

import numpy as np
from PIL import Image


def write_tga(path: Path, rgba: np.ndarray) -> None:
    h, w = rgba.shape[:2]
    bgra = rgba[:, :, [2, 1, 0, 3]].tobytes()
    header = bytearray(18)
    header[2] = 2
    header[12:14] = struct.pack("<H", w)
    header[14:16] = struct.pack("<H", h)
    header[16] = 32
    header[17] = 0x28  # top-left
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(bytes(header) + bgra)


def inkscape_export(svg: Path, obj_id: str, out_png: Path, size: int) -> None:
    out_png.parent.mkdir(parents=True, exist_ok=True)
    cmd = [
        "inkscape",
        str(svg),
        "--export-type=png",
        f"--export-filename={out_png}",
        f"--export-id={obj_id}",
        "--export-id-only",
        "--export-area-page",
        f"--export-width={size}",
        f"--export-height={size}",
    ]
    subprocess.run(cmd, check=True, capture_output=True)


def alpha_coverage(png: Path) -> np.ndarray:
    """Soft 0..1 coverage from PNG alpha (no hard threshold)."""
    a = np.array(Image.open(png).convert("RGBA"))[:, :, 3].astype(np.float32) / 255.0
    return np.clip(a, 0.0, 1.0)


def transform_coverage(
    cov: np.ndarray, scale: float, offset_y: float, size: int
) -> np.ndarray:
    """Scale about canvas center, then shift (+Y = down). LANCZOS for clean edges."""
    if abs(scale - 1.0) < 1e-6 and abs(offset_y) < 1e-6:
        return cov.astype(np.float32)
    img = Image.fromarray((np.clip(cov, 0, 1) * 255.0).astype(np.uint8), mode="L")
    new_sz = max(1, int(round(size * scale)))
    scaled = img.resize((new_sz, new_sz), Image.Resampling.LANCZOS)
    canvas = Image.new("L", (size, size), 0)
    x0 = (size - new_sz) // 2
    y0 = int(round((size - new_sz) // 2 + offset_y))
    canvas.paste(scaled, (x0, y0))
    return np.array(canvas, dtype=np.float32) / 255.0


def build_layers(
    svg: Path,
    size: int = 1024,
    scale: float = 1.72,
    offset_y: float = 56.0,
    supersample: int = 2,
) -> tuple[np.ndarray, np.ndarray]:
    """Return albedo RGBA + _cc RGBA at `size`, supersampled then downscaled."""
    ss = max(1, int(supersample))
    work = size * ss
    with tempfile.TemporaryDirectory() as td:
        td_path = Path(td)
        inkscape_export(svg, "g21", td_path / "wolf.png", work)
        inkscape_export(svg, "g151", td_path / "gladius.png", work)
        inkscape_export(svg, "path144", td_path / "outer_rim.png", work)

        wolf = transform_coverage(
            alpha_coverage(td_path / "wolf.png"), scale, offset_y, work
        )
        sword = transform_coverage(
            alpha_coverage(td_path / "gladius.png"), scale, offset_y, work
        )
        rim = transform_coverage(
            alpha_coverage(td_path / "outer_rim.png"), scale, offset_y, work
        )

        ys, xs = np.where(rim > 0.25)
        if len(xs) == 0:
            raise SystemExit("Outer_rim export empty — check SVG id path144")
        cy, cx = float(ys.mean()), float(xs.mean())
        r_out = float(np.sqrt((ys - cy) ** 2 + (xs - cx) ** 2).max())

        Y, X = np.ogrid[:work, :work]
        dist = np.sqrt((Y - cy) ** 2 + (X - cx) ** 2)
        # Soft disk edge (~1.5 px at final res → ~1.5*ss at work res)
        edge = 1.5 * ss
        inside = np.clip((r_out - 2.0 * ss - dist) / edge + 0.5, 0.0, 1.0)

        # Occupancy: wolf/sword punch holes in field with soft coverage
        wolf_c = np.clip(wolf, 0, 1)
        sword_c = np.clip(sword, 0, 1)
        rim_c = np.clip(rim, 0, 1)
        field = np.clip(inside * (1.0 - wolf_c) * (1.0 - sword_c) * (1.0 - rim_c), 0, 1)

        emblem = np.clip(
            np.maximum.reduce([wolf_c, sword_c, field, rim_c]), 0.0, 1.0
        )

        albedo = np.zeros((work, work, 4), dtype=np.float32)
        albedo[:, :, 0] = 255.0 * emblem
        albedo[:, :, 1] = 255.0 * emblem
        albedo[:, :, 2] = 255.0 * emblem
        albedo[:, :, 3] = 255.0 * emblem

        # _cc: opaque base + soft R/G/B islands (format 51 / Luna)
        cc = np.zeros((work, work, 4), dtype=np.float32)
        cc[:, :, 3] = 255.0
        # G secondary — field (+ faint rim contribution)
        g = np.clip(field + rim_c * 0.85, 0, 1)
        cc[:, :, 1] = 255.0 * g
        # R primary — wolf overwrites
        cc[:, :, 0] = 255.0 * wolf_c
        cc[:, :, 1] *= 1.0 - wolf_c
        # B tertiary — sword wins
        cc[:, :, 2] = 255.0 * sword_c
        cc[:, :, 0] *= 1.0 - sword_c
        cc[:, :, 1] *= 1.0 - sword_c

        def down(arr: np.ndarray) -> np.ndarray:
            if ss == 1:
                return np.clip(arr, 0, 255).astype(np.uint8)
            img = Image.fromarray(np.clip(arr, 0, 255).astype(np.uint8), mode="RGBA")
            img = img.resize((size, size), Image.Resampling.LANCZOS)
            return np.array(img)

        return down(albedo), down(cc)


def build_menu_icon_rgba(
    svg: Path,
    size: int = 100,
    scale: float = 1.62,
    offset_y: float = 6.0,
) -> np.ndarray:
    """White wolf+sword+rim on black (no field disk) — Luna-style UI badge."""
    work = 512
    ss_scale = scale
    ss_off = offset_y * (work / size)
    with tempfile.TemporaryDirectory() as td:
        td_path = Path(td)
        inkscape_export(svg, "g21", td_path / "wolf.png", work)
        inkscape_export(svg, "g151", td_path / "gladius.png", work)
        inkscape_export(svg, "path144", td_path / "outer_rim.png", work)
        wolf = transform_coverage(
            alpha_coverage(td_path / "wolf.png"), ss_scale, ss_off, work
        )
        sword = transform_coverage(
            alpha_coverage(td_path / "gladius.png"), ss_scale, ss_off, work
        )
        rim = transform_coverage(
            alpha_coverage(td_path / "outer_rim.png"), ss_scale, ss_off, work
        )
        # Filled wolf/sword + outer ring — not the red field disk
        emblem = np.clip(np.maximum.reduce([wolf, sword, rim]), 0.0, 1.0)

    # Boost thin strokes so BC7 keeps ears/sword at 100px
    emblem = np.clip(emblem * 1.35, 0.0, 1.0)
    img = Image.fromarray((emblem * 255).astype(np.uint8), mode="L")
    # Slight dilate via max-filter resize path: upscale soft, then down
    img = img.resize((work * 2, work * 2), Image.Resampling.BILINEAR)
    img = img.resize((size, size), Image.Resampling.LANCZOS)
    a100 = np.array(img, dtype=np.float32) / 255.0
    a100 = np.clip((a100 - 0.05) / 0.75, 0.0, 1.0)
    rgba = np.zeros((size, size, 4), dtype=np.uint8)
    on = a100 > 0.08
    rgba[on, 0] = 255
    rgba[on, 1] = 255
    rgba[on, 2] = 255
    rgba[:, :, 3] = (np.clip(a100, 0, 1) * 255).astype(np.uint8)
    # Force opaque white on emblem core so UI doesn't wash out
    rgba[a100 > 0.35, 3] = 255
    return rgba


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument(
        "--svg",
        type=Path,
        default=Path(__file__).resolve().parents[3]
        / "codex-batavi/lore-images/chapter-seal.svg",
    )
    ap.add_argument("--out-dir", type=Path, required=True)
    ap.add_argument("--size", type=int, default=1024)
    ap.add_argument(
        "--scale",
        type=float,
        default=1.72,
        help="Scale seal on the 1024 canvas (1.0 = SVG page fit; ~1.72 fills pauldron)",
    )
    ap.add_argument(
        "--offset-y",
        type=float,
        default=56.0,
        help="Shift seal down (+) / up (-) in pixels after scale (final 1024 space)",
    )
    ap.add_argument(
        "--supersample",
        type=int,
        default=2,
        help="Render factor before LANCZOS downscale (2 = 2048 work → 1024)",
    )
    args = ap.parse_args()
    if not args.svg.is_file():
        raise SystemExit(f"missing SVG: {args.svg}")

    albedo, cc = build_layers(
        args.svg, args.size, args.scale, args.offset_y, args.supersample
    )
    args.out_dir.mkdir(parents=True, exist_ok=True)
    for side in ("01", "02"):
        write_tga(args.out_dir / f"d_shldr_batavi_{side}.tga", albedo)
        write_tga(args.out_dir / f"d_shldr_batavi_{side}_cc.tga", cc)
        print(f"wrote d_shldr_batavi_{side}.tga / _cc.tga")

    Image.fromarray(albedo).resize((256, 256)).save(args.out_dir / "preview_albedo.png")
    Image.fromarray(cc).resize((256, 256)).save(args.out_dir / "preview_cc.png")

    icon = build_menu_icon_rgba(args.svg)
    write_tga(args.out_dir / "lpd_batavi_menu.tga", icon)
    Image.fromarray(icon).save(args.out_dir / "preview_menu_icon.png")
    print("wrote lpd_batavi_menu.tga + preview_menu_icon.png")

    print(
        f"geometry scale={args.scale} offset_y={args.offset_y} "
        f"supersample={args.supersample}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
