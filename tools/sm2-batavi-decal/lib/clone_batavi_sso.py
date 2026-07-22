#!/usr/bin/env python3
"""Clone Night Lords shoulder-decal SSO blocks into Batavi entries."""
from __future__ import annotations

import argparse
import re
from datetime import datetime
from pathlib import Path


REPLACEMENTS = [
    ("d_shldr_night_lords_02_cc", "d_shldr_batavi_02_cc"),
    ("d_shldr_night_lords_01_cc", "d_shldr_batavi_01_cc"),
    ("d_shldr_night_lords_02", "d_shldr_batavi_02"),
    ("d_shldr_night_lords_01", "d_shldr_batavi_01"),
    ("night_lords", "batavi"),
    ("Night_Lords", "Batavi"),
    ("Night Lords", "Cohors Batavorum"),
    ("NIGHT_LORDS", "BATAVI"),
]


def to_batavi(text: str) -> str:
    out = text
    for a, b in REPLACEMENTS:
        out = out.replace(a, b)
    return out


def already_has_batavi(text: str) -> bool:
    return bool(re.search(r"d_shldr_batavi_0[12]", text) or re.search(r"\bbatavi\b", text, re.I))


def find_brace_blocks(text: str, needle: str) -> list[str]:
    blocks: list[str] = []
    lower = text.lower()
    needle_l = needle.lower()
    idx = 0
    while True:
        idx = lower.find(needle_l, idx)
        if idx < 0:
            break
        start = idx
        for i in range(idx, -1, -1):
            if text[i] == "{":
                line_start = text.rfind("\n", 0, max(0, i - 1))
                prev_blank = text.rfind("\n\n", 0, max(0, line_start))
                start = 0 if prev_blank < 0 else prev_blank + 2
                break
            if i == 0:
                start = 0
        open_at = text.find("{", start)
        if open_at < 0 or open_at > idx + 200:
            # +/- 40 lines fallback
            before = text.count("\n", 0, idx)
            lines = text.split("\n")
            lo = max(0, before - 40)
            hi = min(len(lines) - 1, before + 40)
            chunk = "\n".join(lines[lo : hi + 1])
            if needle_l in chunk.lower():
                blocks.append(chunk)
            idx = idx + len(needle)
            continue
        depth = 0
        end = -1
        for j in range(open_at, len(text)):
            if text[j] == "{":
                depth += 1
            elif text[j] == "}":
                depth -= 1
                if depth == 0:
                    end = j
                    break
        if end < 0:
            idx = idx + len(needle)
            continue
        block = text[start : end + 1]
        if needle_l in block.lower():
            blocks.append(block)
        idx = end + 1
    # unique preserve order
    seen: set[str] = set()
    uniq: list[str] = []
    for b in blocks:
        if b not in seen:
            seen.add(b)
            uniq.append(b)
    return uniq


def process_file(src: Path, dest: Path, source_token: str, report: list[str]) -> None:
    text = src.read_text(encoding="utf-8", errors="replace")
    report.append(f"## `{dest.name}`")
    report.append("")

    if already_has_batavi(text):
        report.append(
            "- File already contains Batavi / d_shldr_batavi_* tokens - copied as-is (no second clone)."
        )
        dest.write_text(text, encoding="utf-8")
        report.append("")
        return

    blocks = find_brace_blocks(text, source_token)
    if not blocks:
        blocks = find_brace_blocks(text, "night lord")
    preferred = [b for b in blocks if re.search(r"shldr|shoulder|d_shldr_", b, re.I)]
    if preferred:
        blocks = preferred

    if not blocks:
        report.append("- **WARNING:** No cloneable Night Lords blocks found.")
        report.append(
            "- Copied original unchanged. Hand-edit: duplicate a shoulder-decal entry "
            "and retarget textures to d_shldr_batavi_01/02."
        )
        dest.write_text(text, encoding="utf-8")
        report.append("")
        return

    clones: list[str] = []
    for n, b in enumerate(blocks):
        converted = to_batavi(b)
        if converted == b:
            report.append(f"- Skipped block #{n} - conversion produced no changes.")
            continue
        if converted in text:
            report.append(f"- Skipped block #{n} - Batavi clone already present in file.")
            continue
        clones.append(converted)
        report.append(f"- Cloned block #{n} ({len(converted)} chars) -> Batavi texture IDs.")

    if not clones:
        report.append("- No new clones appended (already present or no-op conversion).")
        dest.write_text(text, encoding="utf-8")
    else:
        append = "\n\n// --- Batavi clone (clone_batavi_sso.py) ---\n\n" + "\n\n".join(clones)
        dest.write_text(text.rstrip() + append + "\n", encoding="utf-8")
        report.append(f"- Appended **{len(clones)}** clone block(s).")
    report.append("")


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--root", type=Path, required=True, help="sm2-batavi-decal root")
    ap.add_argument("--template-dir", type=Path, default=None)
    ap.add_argument("--source-token", default="night_lords")
    args = ap.parse_args()

    root: Path = args.root.resolve()
    template = (args.template_dir or (root / "ssl-template")).resolve()
    required = template / "customization_decal_library.sso"
    if not required.is_file():
        print(
            f"Missing required template:\n  {required}\n\n"
            "Extract from default_other.pak (or Additional Chapters) into ssl-template/.\n"
            "See ssl-template/DROP-SSO-HERE.md",
            file=__import__("sys").stderr,
        )
        return 1

    out_ssl = root / "stage" / "ssl" / "body" / "customization"
    out_ssl.mkdir(parents=True, exist_ok=True)
    report_path = root / "ssl-clone-report.md"

    report = [
        "# SSO clone report",
        "",
        f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M')} (local)",
        f"Source token: `{args.source_token}`",
        "Display: `Night Lords` -> `Cohors Batavorum`",
        "Texture basenames: `d_shldr_batavi_01` / `d_shldr_batavi_02`",
        "",
    ]

    files = [
        ("customization_decal_library.sso", True),
        ("armor_color_library.sso", False),
        ("global_armor_color_pattern_library.sso", False),
    ]
    for name, required_flag in files:
        src = template / name
        if not src.is_file():
            if required_flag:
                print(f"Missing {name}", file=__import__("sys").stderr)
                return 1
            report.append(f"## `{name}`")
            report.append("")
            report.append("- Not present in ssl-template/ - skipped.")
            report.append("")
            continue
        process_file(src, out_ssl / name, args.source_token, report)

    report.extend(
        [
            "## Next steps",
            "",
            "1. Open staged SSO under stage/ssl/body/customization/ and confirm Batavi entries look valid.",
            "2. ./run prepare-tga newslot then TexMipper; copy mips to stage/pct/.",
            "3. Local test: ./run install-local (or copy stage into client_pc/root/local/).",
            "4. ./run pack batavi_heraldry ; install to mods/.",
            "5. If the new UI entry does not appear, use Fallback (Named faux-add) in the workbook.",
            "",
        ]
    )
    report_path.write_text("\n".join(report), encoding="utf-8")
    print(f"Staged SSO -> {out_ssl}")
    print(f"Report -> {report_path}")
    print(report_path.read_text(encoding="utf-8"))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
