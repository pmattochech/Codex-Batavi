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

    # ── index personae ─────────────────────────────────────────────────────
    ("index-personae-e-comando/intro-heraldica/codex-batavorum.md",       "intro-e-heraldica.md"),
    ("index-personae-e-comando/doutrina-e-orgaos/ficha-tecnica-o-codex-batavorum.md", "ficha-tecnica.md"),
    ("index-personae-e-comando/doutrina-e-orgaos/o-conselho-extendido-e-o-librarium.md", "conselho-e-librarium.md"),
    ("index-personae-e-comando/doutrina-e-orgaos/a-cadeia-de-atrito-hierarquia-militar-da-meia-legiao.md", "hierarquia-militar.md"),
    ("index-personae-e-comando/doutrina-e-orgaos/os-ritos-de-atrito-o-misticismo-homologado.md", "ritos-de-atrito.md"),
    ("index-personae-e-comando/doutrina-e-orgaos/doutrina-estrategica-geometria-de-atrito.md", "geometria-de-atrito.md"),
    ("index-personae-e-comando/doutrina-e-orgaos/adendo-estrategico-a-pax-batavorum.md", "pax-batavorum.md"),
    ("index-personae-e-comando/dossies-personagens/fichas-de-personagens.md",           "dossie-alaric.md"),
    ("index-personae-e-comando/dossies-personagens/wiki-dossie-capelao-varro.md",       "dossie-varro.md"),
    ("index-personae-e-comando/dossies-personagens/wiki-dossie-apotecario-drusus.md",   "dossie-drusus.md"),
    ("index-personae-e-comando/dossies-personagens/wiki-dossie-de-personagem-a-venus-de-ferro-a-vida-de-elara-solis.md", "dossie-elara-solis.md"),
    ("index-personae-e-comando/dossies-personagens/wiki-dossie-de-personagem-kadmos.md","dossie-kadmos.md"),
    ("index-personae-e-comando/dossies-personagens/wiki-dossie-martha.md",              "dossie-martha.md"),
    ("index-personae-e-comando/dossies-personagens/wiki-dossie-tobias.md",              "dossie-tobias.md"),
    ("index-personae-e-comando/dossies-personagens/wiki-dossie-a-ninhada-da-forja-os-filhos-de-martha.md", "dossie-ninhada-da-forja.md"),
    ("index-personae-e-comando/dossies-personagens/wiki-dossie-de-personagem-valdric.md", "dossie-valdric.md"),
    ("index-personae-e-comando/eventos-e-cronologias/eventos-historicos.md",            "guerra-da-fundacao.md"),
    ("index-personae-e-comando/eventos-e-cronologias/cronologia-mestra-o-legado-de-ferro.md", "cronologia-mestra.md"),
    ("index-personae-e-comando/eventos-e-cronologias/cronologia-legislativa-e-doutrinas.md",  "cronologia-legislativa.md"),

    # ── crônicas ───────────────────────────────────────────────────────────
    ("cronicas/01-tempestade-verde/a-forja-da-doutrina.md",                             "tempestade-verde.md"),
    ("cronicas/02-biologis-e-spiritus-fundacao/liber-biologis-o-despertar-da-moncao.md","biologis-moncao.md"),
    ("cronicas/02-biologis-e-spiritus-fundacao/liber-biologis-a-forja-da-carne-a-mitose-de-ferro.md", "biologis-mitose-de-ferro.md"),
    ("cronicas/02-biologis-e-spiritus-fundacao/liber-spiritus-o-evangelho-do-silencio-quebrado.md",   "spiritus-silencio-quebrado.md"),
    ("cronicas/02-biologis-e-spiritus-fundacao/liber-biologis-a-morte-do-eu-a-estiagem.md",           "biologis-estiagem.md"),
    ("cronicas/02-biologis-e-spiritus-fundacao/liber-spiritus-o-evangelho-do-vacuo-a-estiagem.md",    "spiritus-vacuo-estiagem.md"),
    ("cronicas/03-projecao-aurea-e-codex-omega/o-pendulo-da-quimera-a-genese-da-projecao-aurea.md",   "pendulo-da-quimera.md"),
    ("cronicas/03-projecao-aurea-e-codex-omega/codex-omega-o-pendulo-da-carne-e-do-ferro.md",         "codex-omega-pendulo.md"),
    ("cronicas/03-projecao-aurea-e-codex-omega/liber-biologis-a-geometria-do-odio-arquivo-omega-trinity.md", "biologis-geometria-do-odio.md"),
    ("cronicas/03-projecao-aurea-e-codex-omega/liber-spiritus-o-vertice-da-condenacao-a-tormenta.md", "spiritus-vertice-da-condenacao.md"),
    ("cronicas/03-projecao-aurea-e-codex-omega/codex-omega-a-revisao-do-vertice.md",                  "codex-omega-revisao.md"),
    ("cronicas/04-incus-gravis-e-tribunal/cronicas-a-campanha-de-incus-gravis-o-sangue-e-o-ferro.md", "campanha-incus-gravis.md"),
    ("cronicas/05-saga-viggo/a-saga-de-viggo.md",                                       "saga-viggo.md"),
    ("cronicas/06-era-das-chuvas/o-silencio-da-era-das-chuvas.md",                      "silencio-era-das-chuvas.md"),
    ("cronicas/06-era-das-chuvas/o-ultimo-calor-do-muro.md",                            "ultimo-calor-do-muro.md"),
    ("cronicas/06-vigilia-silenciosa/silencio-era-das-chuvas.md",                       "silencio-strategium.md"),
    ("cronicas/07-venus-de-ferro/a-venus-de-ferro.md",                                  "venus-de-ferro.md"),
    ("cronicas/07-venus-de-ferro/o-santuario-da-fumaca-e-do-pao.md",                    "santuario-fumaca-e-pao.md"),
    ("cronicas/07-venus-de-ferro/a-venus-de-ferro-a-filha-do-lobo-e-a-vigilia-do-ferro.md", "filha-do-lobo.md"),
    ("cronicas/08-auditoria-e-diplomacia/a-auditoria-da-logica.md",                     "auditoria-da-logica.md"),
    ("cronicas/08-auditoria-e-diplomacia/a-diplomacia-das-presas-e-da-forja.md",        "diplomacia-aethelgard.md"),
    ("cronicas/08-auditoria-e-diplomacia/o-dragao-na-lareira-o-calor-de-tushan-em-noviomagus.md", "dragao-na-lareira-tushan.md"),
    ("cronicas/08-auditoria-e-diplomacia/cinza-o-silencio-de-fenris-em-noviomagus.md",  "cinza-silencio-de-fenris.md"),
    ("cronicas/09-vida-na-fronteira/a-vida-na-fronteira.md",                            "dizimo-dos-rejeitados.md"),
    ("cronicas/10-dizimo-da-docura/o-dizimo-da-docura.md",                              "dizimo-da-docura.md"),

    # ── arsenal (historical; current tree uses arsenal-and-logistics/ + English slugs) ──
    ("arsenal-and-logistics/intro-e-engenharia-padrao-noviomagus.md", "noviomagus-standard-engineering.md"),
    ("arsenal-and-logistics/coorte-das-falanges-e-resumo-visual.md", "vexillationes-and-visual-summary.md"),

    # ── enciclopédia ───────────────────────────────────────────────────────
    ("enciclopedia-biologica-e-bestiario/wiki-reliquia-biologica-viggo.md", "reliquia-viggo.md"),

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
