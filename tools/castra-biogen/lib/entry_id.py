"""Entry ID filing keys: AAAA-BBB-NNN[-AA]."""
from __future__ import annotations

import re
from pathlib import Path
from typing import Any

from .state import body_out_dir
from .util import ENUMS, load_yaml

# Base: AETH-SHR-001 ; variant: AETH-SHR-001-AA
ENTRY_ID_RE = re.compile(r"^[A-Z]{4}-[A-Z]{3}-[0-9]{3}(?:-[A-Z]{2})?$")
ENTRY_ID_PARSE = re.compile(
    r"^(?P<planet>[A-Z]{4})-(?P<biome>[A-Z]{3})-(?P<serial>[0-9]{3})"
    r"(?:-(?P<variant>[A-Z]{2}))?$"
)

ABBREV_PATH = ENUMS / "entry_id_abbreviations.yaml"


def load_abbreviations() -> dict[str, Any]:
    if not ABBREV_PATH.is_file():
        return {"planets": {}, "biomes": {}}
    data = load_yaml(ABBREV_PATH)
    return data if isinstance(data, dict) else {"planets": {}, "biomes": {}}


def planet_abbrev(body_slug: str, abbrevs: dict[str, Any] | None = None) -> str | None:
    table = (abbrevs or load_abbreviations()).get("planets") or {}
    raw = table.get(body_slug)
    if not raw:
        return None
    return str(raw).strip().upper()


def biome_abbrev(biome_id: str, abbrevs: dict[str, Any] | None = None) -> str | None:
    table = (abbrevs or load_abbreviations()).get("biomes") or {}
    raw = table.get(biome_id)
    if not raw:
        return None
    return str(raw).strip().upper()


def is_valid_entry_id(entry_id: str) -> bool:
    return bool(ENTRY_ID_RE.match(str(entry_id or "").strip()))


def parse_entry_id(entry_id: str) -> dict[str, str] | None:
    m = ENTRY_ID_PARSE.match(str(entry_id or "").strip())
    if not m:
        return None
    out = {
        "planet": m.group("planet"),
        "biome": m.group("biome"),
        "serial": m.group("serial"),
        "prefix": f"{m.group('planet')}-{m.group('biome')}",
        "base_id": f"{m.group('planet')}-{m.group('biome')}-{m.group('serial')}",
    }
    variant = m.group("variant")
    if variant:
        out["variant"] = variant
    return out


def validate_entry_id(entry_id: str) -> list[str]:
    """Human-readable errors; empty = OK."""
    eid = str(entry_id or "").strip()
    if not eid:
        return ["Entry ID required (AAAA-BBB-NNN or AAAA-BBB-NNN-AA)"]
    if not is_valid_entry_id(eid):
        return [
            "Entry ID must match AAAA-BBB-NNN or AAAA-BBB-NNN-AA "
            "(4 letters, 3 letters, 3 digits, optional 2-letter variant)"
        ]
    return []


def list_entry_ids_on_disk(body_slug: str) -> list[str]:
    root = body_out_dir(body_slug) / "species"
    if not root.is_dir():
        return []
    return sorted(p.name for p in root.iterdir() if p.is_dir())


def used_serials_for_prefix(
    body_slug: str,
    prefix: str,
    *,
    reserved_ids: list[str] | None = None,
) -> set[int]:
    """Serials already used for AAAA-BBB (base and variants share the NNN)."""
    used: set[int] = set()
    candidates = list(list_entry_ids_on_disk(body_slug))
    if reserved_ids:
        candidates.extend(reserved_ids)
    for eid in candidates:
        parsed = parse_entry_id(str(eid or "").strip().upper())
        if not parsed:
            continue
        if parsed["prefix"] != prefix:
            continue
        used.add(int(parsed["serial"]))
    return used


def next_serial(
    body_slug: str,
    prefix: str,
    *,
    reserved_ids: list[str] | None = None,
) -> int:
    used = used_serials_for_prefix(body_slug, prefix, reserved_ids=reserved_ids)
    n = 1
    while n in used:
        n += 1
        if n > 999:
            raise ValueError(f"no free serial left for {prefix}")
    return n


def format_entry_id(planet: str, biome: str, serial: int, variant: str | None = None) -> str:
    base = f"{planet.upper()}-{biome.upper()}-{serial:03d}"
    if variant:
        return f"{base}-{variant.upper()}"
    return base


def allocate_base_id(
    body_slug: str,
    *,
    biome_id: str,
    abbrevs: dict[str, Any] | None = None,
    reserved_ids: list[str] | None = None,
) -> str:
    """Allocate next AAAA-BBB-NNN for this planet+biome (no variant suffix)."""
    abb = abbrevs or load_abbreviations()
    pa = planet_abbrev(body_slug, abb)
    ba = biome_abbrev(biome_id, abb)
    if not pa:
        raise ValueError(
            f"no planet abbreviation for body '{body_slug}' "
            f"(add to data/enums/entry_id_abbreviations.yaml)"
        )
    if not ba:
        raise ValueError(
            f"no biome abbreviation for '{biome_id}' "
            f"(add to data/enums/entry_id_abbreviations.yaml)"
        )
    prefix = f"{pa}-{ba}"
    serial = next_serial(body_slug, prefix, reserved_ids=reserved_ids)
    return format_entry_id(pa, ba, serial)


def validate_variant_parent(body_slug: str, entry_id: str) -> list[str]:
    """If variant suffix present, warn/error when base folder missing (soft: allow create)."""
    parsed = parse_entry_id(entry_id)
    if not parsed or "variant" not in parsed:
        return []
    base = parsed["base_id"]
    base_dir = body_out_dir(body_slug) / "species" / base
    if base_dir.is_dir():
        return []
    # Soft notice — still valid ID; caller may create base later
    return [f"variant {entry_id}: base {base} not on disk yet (will save variant folder only)"]


def suggest_entry_id(
    body_slug: str | None,
    biome_id: str | None,
    *,
    reserved_ids: list[str] | None = None,
) -> str:
    """Best-effort next ID for UI; empty string if abbrevs missing."""
    if not body_slug or not biome_id:
        return ""
    try:
        return allocate_base_id(
            body_slug, biome_id=biome_id, reserved_ids=reserved_ids
        )
    except ValueError:
        return ""


def normalize_entry_id(entry_id: str) -> str:
    return str(entry_id or "").strip().upper()


def _next_variant_letters(used: set[str]) -> str:
    """AA…AZ, BA…BZ, … ZZ."""
    for first in range(26):
        for second in range(26):
            suffix = chr(65 + first) + chr(65 + second)
            if suffix not in used:
                return suffix
    raise ValueError("no free variant suffix left (AA–ZZ exhausted)")


def used_variants_for_base(
    body_slug: str,
    base_id: str,
    *,
    reserved_ids: list[str] | None = None,
) -> set[str]:
    base = normalize_entry_id(base_id)
    used: set[str] = set()
    candidates = list(list_entry_ids_on_disk(body_slug))
    if reserved_ids:
        candidates.extend(reserved_ids)
    for eid in candidates:
        parsed = parse_entry_id(normalize_entry_id(str(eid or "")))
        if not parsed:
            continue
        if parsed["base_id"] != base:
            continue
        if "variant" in parsed:
            used.add(parsed["variant"])
    return used


def allocate_variant_id(
    body_slug: str,
    parent_entry_id: str,
    *,
    reserved_ids: list[str] | None = None,
) -> str:
    """Next AAAA-BBB-NNN-AA for parent base (works from base or any existing variant)."""
    parsed = parse_entry_id(normalize_entry_id(parent_entry_id))
    if not parsed:
        raise ValueError(
            f"parent Entry ID invalid: {parent_entry_id!r} "
            "(need AAAA-BBB-NNN or AAAA-BBB-NNN-AA)"
        )
    base = parsed["base_id"]
    used = used_variants_for_base(body_slug, base, reserved_ids=reserved_ids)
    return f"{base}-{_next_variant_letters(used)}"
