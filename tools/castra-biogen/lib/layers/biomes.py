"""L4 Biomes — from locks or inferred from planet type / climate."""
from __future__ import annotations

from typing import Any

from ..rngutil import make_rng, pick
from ..util import ENUMS, load_yaml, warn


def _class_index() -> dict[str, dict]:
    from .. import custom_enums

    classes = custom_enums.merged_biome_classes()
    return {c["id"]: c for c in classes if c.get("id")}


def apply(world: dict[str, Any]) -> None:
    locks = world.get("locks") or {}
    spark = bool(world["meta"].get("spark"))
    rng = make_rng(world["meta"].get("seed"))
    idx = _class_index()
    stress = (world["layers"].get("chemistry_climate") or {}).get("immaterium_stress", "neutral")
    planet_type = (world["layers"].get("planet_type") or {}).get("planet_type", "")

    locked_biomes = locks.get("biomes") or []
    biomes: list[dict] = []

    if locked_biomes:
        for i, b in enumerate(locked_biomes):
            if isinstance(b, str):
                entry = _from_class(b, idx, i)
            else:
                entry = _from_dict(b, idx, i)
            biomes.append(entry)
    else:
        for class_id in _infer_classes(planet_type, stress, spark, rng):
            biomes.append(_from_class(class_id, idx, len(biomes)))

    # Stress gating: terminus forbids lush garden overlays
    if stress == "terminus":
        for b in biomes:
            if b["class"] in ("archival_garden", "jungle", "temperate_forest") and b["richness"] == "rich":
                warn(
                    world,
                    f"immaterium terminus: downgrading biome {b['id']} richness rich→sparse",
                )
                b["richness"] = "sparse"

    world["layers"]["biomes"] = biomes


def _from_class(class_id: str, idx: dict, i: int) -> dict:
    meta = idx.get(class_id) or {
        "id": class_id,
        "medium": "terrestrial",
        "overlay": False,
        "default_richness": "moderate",
    }
    return {
        "id": f"{class_id}_{i+1}",
        "class": class_id,
        "richness": meta.get("default_richness", "moderate"),
        "medium": meta.get("medium", "terrestrial"),
        "overlay": bool(meta.get("overlay")),
    }


def _from_dict(b: dict, idx: dict, i: int) -> dict:
    class_id = b.get("class") or b.get("id") or "barren_null"
    base = _from_class(class_id, idx, i)
    if b.get("id"):
        base["id"] = b["id"]
    if b.get("richness"):
        base["richness"] = b["richness"]
    if b.get("medium"):
        base["medium"] = b["medium"]
    if "overlay" in b:
        base["overlay"] = bool(b["overlay"])
    return base


def _infer_classes(
    planet_type: str,
    stress: str,
    spark: bool,
    rng: Any,
) -> list[str]:
    mapping = {
        "forge_world": ["slag_industrial", "hive_stack", "barren_null"],
        "hive_world": ["hive_stack", "archival_garden"],
        "agri_world": ["monoculture_plain", "grassland"],
        "death_world": ["jungle", "swamp_wetland", "shoreline_intertidal"],
        "feral_world": ["temperate_forest", "grassland"],
        "ocean_world": ["pelagic", "shoreline_intertidal", "abyssal"],
        "ice_world": ["ice_cryogenic", "tundra"],
        "desert_world": ["desert"],
        "jungle_world": ["jungle"],
        "penal_world": ["penal_infrastructure", "barren_null"],
        "dead_world": ["barren_null", "dock_hull"],
        "mining_world": ["cave_subterranean", "slag_industrial"],
        "garden_world": ["temperate_forest", "grassland", "freshwater_river"],
        "industrial_world": ["slag_industrial", "hive_stack"],
    }
    classes = list(mapping.get(planet_type, ["grassland", "temperate_forest"]))
    if stress in ("extremis", "terminus") and "swamp_wetland" not in classes:
        classes.append("swamp_wetland")
    if spark and len(classes) > 1:
        # maybe drop one
        if rng.random() < 0.3:
            classes = classes[:-1]
    return classes
