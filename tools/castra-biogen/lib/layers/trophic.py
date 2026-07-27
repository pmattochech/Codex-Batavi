"""L5 Per-biome trophic niches — biome-born food webs."""
from __future__ import annotations

from typing import Any

from ..rngutil import make_rng, pick
from ..util import ENUMS, MATRICES, load_yaml, warn


def apply(world: dict[str, Any]) -> None:
    ladder = load_yaml(ENUMS / "trophic_slots.yaml")
    analogues = load_yaml(MATRICES / "niche_analogues.yaml")
    origins = load_yaml(ENUMS / "origin_subtypes.yaml")
    spark = bool(world["meta"].get("spark"))
    rng = make_rng(world["meta"].get("seed"))
    locks = world.get("locks") or {}
    specimens = list(locks.get("specimens") or [])

    by_biome: dict[str, list] = {}
    used_specimen_ids: set[str] = set()

    for biome in world["layers"].get("biomes") or []:
        slots_needed = list(
            (ladder.get("ladder_by_richness") or {}).get(biome.get("richness"), [])
        )
        # barren alias
        if biome.get("richness") == "null":
            slots_needed = []

        biome_slots: list[dict] = []
        catalog = analogues.get(biome["class"]) or {}

        # Place locked specimens whose primary_biome matches this biome id or class
        for spec in specimens:
            primary = spec.get("primary_biome")
            if primary not in (biome["id"], biome["class"]):
                continue
            sid = spec.get("id") or spec.get("name")
            if sid in used_specimen_ids:
                continue
            slot_name = spec.get("trophic_slot") or "apex"
            if slot_name not in slots_needed and slots_needed:
                # still place; warn
                warn(
                    world,
                    f"specimen {sid} slot {slot_name} not in richness ladder "
                    f"for {biome['id']}; placing anyway (lock wins)",
                )
            entry = _slot_from_specimen(spec, biome, slot_name)
            biome_slots.append(entry)
            used_specimen_ids.add(sid)
            if slot_name in slots_needed:
                slots_needed = [s for s in slots_needed if s != slot_name]

        for slot_name in slots_needed:
            # skip if already filled by specimen
            if any(s["slot"] == slot_name and s.get("locked") for s in biome_slots):
                continue
            options = list(catalog.get(slot_name) or [])
            if not options:
                continue
            analogue = pick(rng, options) if spark else options[0]
            origin, subtype = _default_origin(biome, slot_name, origins)
            biome_slots.append(
                {
                    "slot_id": f"{biome['id']}__{slot_name}",
                    "slot": slot_name,
                    "analogue": analogue,
                    "origin": origin,
                    "origin_subtype": subtype,
                    "range": "single",
                    "primary_biome": biome["id"],
                    "medium": biome["medium"],
                    "locked": False,
                    "name": None,
                }
            )

        by_biome[biome["id"]] = biome_slots

    # Specimens whose primary_biome didn't match — warn
    for spec in specimens:
        sid = spec.get("id") or spec.get("name")
        if sid not in used_specimen_ids:
            warn(
                world,
                f"specimen {sid} primary_biome "
                f"{spec.get('primary_biome')!r} matched no generated biome; not placed",
            )

    world["layers"]["trophic"] = {"by_biome": by_biome}


def _default_origin(biome: dict, slot_name: str, origins: dict) -> tuple[str, str]:
    if biome.get("overlay"):
        origin = "exotic"
        if slot_name == "producer" and biome["class"] in ("monoculture_plain", "hydroponic"):
            subtype = "imperial_tithe" if biome["class"] == "monoculture_plain" else "deliberate_transplant"
        elif biome["class"] in ("dock_hull", "slag_industrial"):
            subtype = "voidborne"
        elif biome["class"] == "hive_stack":
            subtype = "feral_exotic"
        else:
            subtype = "deliberate_transplant"
        return origin, subtype
    return "native", "aboriginal"


def _slot_from_specimen(spec: dict, biome: dict, slot_name: str) -> dict:
    return {
        "slot_id": f"{biome['id']}__{slot_name}__{spec.get('id') or spec.get('name')}",
        "slot": slot_name,
        "analogue": spec.get("analogue") or spec.get("niche_analogue") or "locked_specimen",
        "origin": spec.get("origin", "native"),
        "origin_subtype": spec.get("origin_subtype", "aboriginal"),
        "range": spec.get("range", "single"),
        "primary_biome": biome["id"],
        "secondary_biomes": list(spec.get("secondary_biomes") or []),
        "medium": biome["medium"],
        "locked": True,
        "name": spec.get("name") or spec.get("id"),
        "dossier": spec.get("dossier"),
        "notes": spec.get("notes") or "",
    }
