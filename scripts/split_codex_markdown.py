#!/usr/bin/env python3
"""
Split a markdown file on H1 headings (# Title) into multiple files.
Skips empty H1 lines. Merges leading chunks shorter than min_merge_lines into the next chunk.
"""
from __future__ import annotations

import argparse
import re
import unicodedata
from pathlib import Path


def slugify(title: str, max_len: int = 72) -> str:
    t = title.strip()
    t = re.sub(r"^\[WIKI\]\s*", "", t, flags=re.I)
    t = re.sub(r"\\([#_*\[\]])", r"\1", t)
    t = re.sub(r"[^\w\s\-àáâãäåèéêëìíîïòóôõöùúûüçñ\-]", "", t, flags=re.I)
    t = re.sub(r"\s+", "-", t)
    t = t.strip("-").lower()
    if not t:
        t = "secao"
    # ascii-ish
    t = unicodedata.normalize("NFKD", t).encode("ascii", "ignore").decode("ascii")
    t = re.sub(r"-+", "-", t).strip("-")
    return (t[:max_len]).rstrip("-")


def find_h1_starts(lines: list[str]) -> list[tuple[int, str]]:
    out: list[tuple[int, str]] = []
    for i, line in enumerate(lines):
        if not line.startswith("# ") or line.startswith("##"):
            continue
        title = line[2:].strip()
        if not title:
            continue
        out.append((i, title))
    return out


def split_file(
    src: Path,
    out_dir: Path,
    *,
    min_merge_lines: int = 6,
    prefix: str = "",
) -> list[tuple[str, Path]]:
    text = src.read_text(encoding="utf-8")
    lines = text.splitlines(keepends=True)
    starts = find_h1_starts(lines)
    if not starts:
        out_dir.mkdir(parents=True, exist_ok=True)
        name = prefix + slugify(src.stem) + ".md"
        path = out_dir / name
        path.write_text(text, encoding="utf-8")
        return [(name, path)]

    chunks: list[list[str]] = []
    for j, (start, _title) in enumerate(starts):
        end = starts[j + 1][0] if j + 1 < len(starts) else len(lines)
        chunks.append(lines[start:end])

    def merge_small(parts: list[list[str]], min_lines: int) -> list[list[str]]:
        """Prepend short sections (e.g. title-only H1) into the following chunk."""
        out: list[list[str]] = []
        buf: list[str] = []
        for c in parts:
            buf.extend(c)
            if len(buf) >= min_lines:
                out.append(buf)
                buf = []
        if buf:
            if out:
                out[-1] = out[-1] + buf
            else:
                out.append(buf)
        return out

    merged = merge_small(chunks, min_merge_lines)

    out_dir.mkdir(parents=True, exist_ok=True)
    written: list[tuple[str, Path]] = []
    used_slugs: dict[str, int] = {}

    for chunk in merged:
        first = chunk[0]
        title = first[2:].strip() if first.startswith("# ") else src.stem
        base = slugify(title)
        n = used_slugs.get(base, 0)
        used_slugs[base] = n + 1
        name = prefix + base + (f"-{n}" if n else "") + ".md"
        path = out_dir / name
        path.write_text("".join(chunk), encoding="utf-8")
        written.append((name, path))

    return written


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("src", type=Path)
    ap.add_argument("out_dir", type=Path)
    ap.add_argument("--min-merge", type=int, default=6)
    ap.add_argument("--prefix", default="")
    args = ap.parse_args()
    for name, path in split_file(
        args.src,
        args.out_dir,
        min_merge_lines=args.min_merge,
        prefix=args.prefix,
    ):
        print(path)


if __name__ == "__main__":
    main()
