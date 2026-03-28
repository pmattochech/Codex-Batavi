#!/usr/bin/env python3
"""
Rename markdown files to shorter, human-readable names
and update every cross-reference inside the repository.
"""
from __future__ import annotations

import os
import re
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]
ROOT = REPO_ROOT / "codex-batavi"

# ──────────────────────────────────────────────
# RENAME MAP   old path (relative to ROOT) → new filename (in same folder)
# ──────────────────────────────────────────────
RENAMES: list[tuple[str, str]] = [
    # ── atlas (canonical tree: atlas-and-topography/ + systems/) ───────────
    ("atlas-and-topography/ATLAS_E_TOPOGRAFIA.md",               "general-atlas.md"),
    ("atlas-and-topography/INDEX.md",                            "INDEX.md"),
    ("atlas-and-topography/systems/ATLAS_SISTEMA_I_BASTIAO_CENTRAL.md",  "system-i-central-bastion.md"),
    ("atlas-and-topography/systems/ATLAS_SISTEMA_II_CADINHO.md",         "system-ii-crucible.md"),
    ("atlas-and-topography/systems/ATLAS_SISTEMA_III_LIMIAR.md",         "system-iii-threshold.md"),

    # ── personae command index (canonical tree; stubs under index-personae-e-comando/) ──
    ("personae-command-index/intro-and-heraldry/codex-batavorum.md", "intro-and-heraldry.md"),
    ("personae-command-index/doctrine-and-organs/ficha-tecnica-o-codex-batavorum.md", "technical-datasheet.md"),
    ("personae-command-index/doctrine-and-organs/o-conselho-extendido-e-o-librarium.md", "council-and-librarium.md"),
    ("personae-command-index/doctrine-and-organs/a-cadeia-de-atrito-hierarquia-militar-da-meia-legiao.md", "military-hierarchy.md"),
    ("personae-command-index/doctrine-and-organs/os-ritos-de-atrito-o-misticismo-homologado.md", "friction-rites.md"),
    ("personae-command-index/doctrine-and-organs/doutrina-estrategica-geometria-de-atrito.md", "friction-geometry.md"),
    ("personae-command-index/doctrine-and-organs/adendo-estrategico-a-pax-batavorum.md", "pax-batavorum.md"),
    ("personae-command-index/character-dossiers/fichas-de-personagens.md", "dossier-alaric.md"),
    ("personae-command-index/character-dossiers/wiki-dossie-capelao-varro.md", "dossier-varro.md"),
    ("personae-command-index/character-dossiers/wiki-dossie-apotecario-drusus.md", "dossier-drusus.md"),
    ("personae-command-index/character-dossiers/wiki-dossie-de-personagem-a-venus-de-ferro-a-vida-de-elara-solis.md", "dossier-elara-solis.md"),
    ("personae-command-index/character-dossiers/wiki-dossie-de-personagem-kadmos.md", "dossier-kadmos.md"),
    ("personae-command-index/character-dossiers/wiki-dossie-martha.md", "dossier-martha.md"),
    ("personae-command-index/character-dossiers/wiki-dossie-tobias.md", "dossier-tobias.md"),
    ("personae-command-index/character-dossiers/wiki-dossie-a-ninhada-da-forja-os-filhos-de-martha.md", "dossier-forge-brood.md"),
    ("personae-command-index/character-dossiers/wiki-dossie-de-personagem-valdric.md", "dossier-valdric.md"),
    ("personae-command-index/events-and-chronologies/eventos-historicos.md", "foundation-war.md"),
    ("personae-command-index/events-and-chronologies/cronologia-mestra-o-legado-de-ferro.md", "master-chronology.md"),
    ("personae-command-index/events-and-chronologies/cronologia-legislativa-e-doutrinas.md", "legislative-chronology.md"),

    # ── chronicles (organize_codex drops long PT names into English arc dirs) ─
    ("chronicles/01-green-tempest/a-forja-da-doutrina.md",                             "green-tempest.md"),
    ("chronicles/02-biologis-spiritus-foundation/liber-biologis-o-despertar-da-moncao.md", "biologis-monsoon.md"),
    ("chronicles/02-biologis-spiritus-foundation/liber-biologis-a-forja-da-carne-a-mitose-de-ferro.md", "biologis-iron-mitosis.md"),
    ("chronicles/02-biologis-spiritus-foundation/liber-spiritus-o-evangelho-do-silencio-quebrado.md",   "spiritus-broken-silence.md"),
    ("chronicles/02-biologis-spiritus-foundation/liber-biologis-a-morte-do-eu-a-estiagem.md",           "biologis-drought.md"),
    ("chronicles/02-biologis-spiritus-foundation/liber-spiritus-o-evangelho-do-vacuo-a-estiagem.md",    "spiritus-void-drought.md"),
    ("chronicles/03-projection-aurea-codex-omega/o-pendulo-da-quimera-a-genese-da-projecao-aurea.md",   "chimera-pendulum.md"),
    ("chronicles/03-projection-aurea-codex-omega/codex-omega-o-pendulo-da-carne-e-do-ferro.md",         "codex-omega-pendulum.md"),
    ("chronicles/03-projection-aurea-codex-omega/liber-biologis-a-geometria-do-odio-arquivo-omega-trinity.md", "biologis-geometry-of-hatred.md"),
    ("chronicles/03-projection-aurea-codex-omega/liber-spiritus-o-vertice-da-condenacao-a-tormenta.md", "spiritus-vertex-of-condemnation.md"),
    ("chronicles/03-projection-aurea-codex-omega/codex-omega-a-revisao-do-vertice.md",                  "codex-omega-revision.md"),
    ("chronicles/04-incus-gravis-tribunal/cronicas-a-campanha-de-incus-gravis-o-sangue-e-o-ferro.md", "incus-gravis-campaign.md"),
    ("chronicles/05-viggo-saga/a-saga-de-viggo.md",                                       "viggo-saga.md"),
    ("chronicles/06-silent-vigil/o-silencio-da-era-das-chuvas.md",                      "strategium-silence.md"),
    ("chronicles/06-silent-vigil/o-ultimo-calor-do-muro.md",                            "last-heat-of-the-wall.md"),
    ("chronicles/07-iron-venus/a-venus-de-ferro.md",                                  "iron-venus.md"),
    ("chronicles/07-iron-venus/o-santuario-da-fumaca-e-do-pao.md",                    "sanctuary-smoke-and-bread.md"),
    ("chronicles/07-iron-venus/a-venus-de-ferro-a-filha-do-lobo-e-a-vigilia-do-ferro.md", "wolf-daughter.md"),
    ("chronicles/08-audit-diplomacy/a-auditoria-da-logica.md",                     "logic-audit.md"),
    ("chronicles/08-audit-diplomacy/a-diplomacia-das-presas-e-da-forja.md",        "diplomacy-aethelgard.md"),
    ("chronicles/08-audit-diplomacy/o-dragao-na-lareira-o-calor-de-tushan-em-noviomagus.md", "dragon-in-the-hearth-tushan.md"),
    ("chronicles/08-audit-diplomacy/cinza-o-silencio-de-fenris-em-noviomagus.md",  "gray-silence-of-fenris.md"),
    ("chronicles/09-frontier-life/a-vida-na-fronteira.md",                            "tithe-of-the-rejected.md"),
    ("chronicles/10-tithe-of-sweetness/o-dizimo-da-docura.md",                              "tithe-of-sweetness.md"),

    # ── arsenal (historical; current tree uses arsenal-and-logistics/ + English slugs) ──
    ("arsenal-and-logistics/intro-e-engenharia-padrao-noviomagus.md", "noviomagus-standard-engineering.md"),
    ("arsenal-and-logistics/coorte-das-falanges-e-resumo-visual.md", "vexillationes-and-visual-summary.md"),

    # ── enciclopédia ───────────────────────────────────────────────────────
    ("biological-encyclopedia-bestiary/wiki-reliquia-biologica-viggo.md", "viggo-relic.md"),

    # ── relações políticas ─────────────────────────────────────────────────
    ("relacoes-politicas/README.md",  "relacoes-politicas.md"),
]


def build_mapping(renames: list[tuple[str, str]]) -> dict[str, str]:
    """old_relative_path → new_relative_path"""
    m: dict[str, str] = {}
    for old_rel, new_name in renames:
        old_path = ROOT / old_rel
        if not old_path.exists():
            print(f"  SKIP (not found): {old_rel}")
            continue
        new_path = old_path.parent / new_name
        if old_path == new_path:
            continue
        m[old_rel] = str(Path(old_rel).parent / new_name)
    return m


def update_references(mapping: dict[str, str]) -> None:
    """Replace every occurrence of old basename (and old relative path) with the new one."""
    md_files = list(ROOT.rglob("*.md"))
    for md in md_files:
        text = md.read_text(encoding="utf-8")
        changed = False
        for old_rel, new_rel in mapping.items():
            old_name = Path(old_rel).name
            new_name = Path(new_rel).name
            if old_name == new_name:
                continue
            # replace bare filename references
            if old_name in text:
                text = text.replace(old_name, new_name)
                changed = True
            # replace full relative paths (forward slashes)
            old_fwd = old_rel.replace("\\", "/")
            new_fwd = new_rel.replace("\\", "/")
            if old_fwd in text:
                text = text.replace(old_fwd, new_fwd)
                changed = True
        if changed:
            md.write_text(text, encoding="utf-8")
            print(f"  refs updated: {md.relative_to(ROOT)}")


def rename_files(mapping: dict[str, str]) -> None:
    for old_rel, new_rel in mapping.items():
        old_path = ROOT / old_rel
        new_path = ROOT / new_rel
        old_path.rename(new_path)
        print(f"  {Path(old_rel).name}  →  {Path(new_rel).name}")


def main() -> None:
    mapping = build_mapping(RENAMES)
    if not mapping:
        print("Nothing to rename.")
        return
    print(f"\n{'─'*60}")
    print("Step 1 — updating cross-references …")
    update_references(mapping)
    print(f"\n{'─'*60}")
    print("Step 2 — renaming files …")
    rename_files(mapping)
    print(f"\n{'─'*60}")
    print("Done.")


if __name__ == "__main__":
    main()
