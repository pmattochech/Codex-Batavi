#!/usr/bin/env python3
"""Split legacy root markdown files and place them in the themed folder layout."""
from __future__ import annotations

import shutil
import subprocess
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]
ROOT = REPO_ROOT / "codex-batavi"
SPLIT = Path(__file__).resolve().parent / "split_codex_markdown.py"


def run_split(src: Path, out: Path, min_merge: int = 8) -> None:
    out.mkdir(parents=True, exist_ok=True)
    subprocess.run(
        [sys.executable, str(SPLIT), str(src), str(out), "--min-merge", str(min_merge)],
        check=True,
    )


def move_map(split_dir: Path, mapping: list[tuple[str, Path]]) -> None:
    for name, dest_dir in mapping:
        dest_dir.mkdir(parents=True, exist_ok=True)
        src = split_dir / name
        if not src.exists():
            raise FileNotFoundError(f"Missing split output: {src}")
        shutil.move(str(src), str(dest_dir / name))


def main() -> None:
    required = [
        ROOT / "02_INDEX_PERSONAE_E_COMANDO.md",
        ROOT / "03_CRONICAS.md",
        ROOT / "05_ARSENAL_E_LOGISTICA.md",
        ROOT / "06_ENCICLOPEDIA_BIOLOGICA_E_BESTIARIO.md",
        ROOT / "07_LEXICON_E_LITANIAS.md",
        ROOT / "08_RELACOES_POLITICAS.md",
        ROOT / "04_ATLAS_E_TOPOGRAFIA.md",
        ROOT / "04A_ATLAS_SISTEMA_I_BASTIAO_CENTRAL.md",
        ROOT / "04B_ATLAS_SISTEMA_II_CADINHO.md",
        ROOT / "04C_ATLAS_SISTEMA_III_LIMIAR.md",
    ]
    missing = [p for p in required if not p.exists()]
    if missing:
        raise SystemExit(
            "organize_codex: arquivos-fonte ausentes (restaure a partir do git antes de executar):\n"
            + "\n".join(f"  - {m.relative_to(ROOT)}" for m in missing)
        )

    tmp = ROOT / "_split_staging"
    if tmp.exists():
        shutil.rmtree(tmp)
    tmp.mkdir()

    # --- 02 Index Personae ---
    run_split(ROOT / "02_INDEX_PERSONAE_E_COMANDO.md", tmp / "02", 8)
    base = ROOT / "index-personae-e-comando"
    move_map(
        tmp / "02",
        [
            ("codex-batavorum.md", base / "intro-heraldica"),
            ("ficha-tecnica-o-codex-batavorum.md", base / "doutrina-e-orgaos"),
            ("o-conselho-extendido-e-o-librarium.md", base / "doutrina-e-orgaos"),
            ("a-cadeia-de-atrito-hierarquia-militar-da-meia-legiao.md", base / "doutrina-e-orgaos"),
            ("os-ritos-de-atrito-o-misticismo-homologado.md", base / "doutrina-e-orgaos"),
            ("doutrina-estrategica-geometria-de-atrito.md", base / "doutrina-e-orgaos"),
            ("adendo-estrategico-a-pax-batavorum.md", base / "doutrina-e-orgaos"),
            ("fichas-de-personagens.md", base / "dossies-personagens"),
            ("wiki-dossie-capelao-varro.md", base / "dossies-personagens"),
            ("wiki-dossie-apotecario-drusus.md", base / "dossies-personagens"),
            ("wiki-dossie-de-personagem-a-venus-de-ferro-a-vida-de-elara-solis.md", base / "dossies-personagens"),
            ("wiki-dossie-de-personagem-kadmos.md", base / "dossies-personagens"),
            ("wiki-dossie-martha.md", base / "dossies-personagens"),
            ("wiki-dossie-tobias.md", base / "dossies-personagens"),
            ("wiki-dossie-a-ninhada-da-forja-os-filhos-de-martha.md", base / "dossies-personagens"),
            ("wiki-dossie-de-personagem-valdric.md", base / "dossies-personagens"),
            ("eventos-historicos.md", base / "eventos-e-cronologias"),
            ("cronologia-mestra-o-legado-de-ferro.md", base / "eventos-e-cronologias"),
            ("cronologia-legislativa-e-doutrinas.md", base / "eventos-e-cronologias"),
        ],
    )

    # --- 03 Crônicas ---
    run_split(ROOT / "03_CRONICAS.md", tmp / "03", 8)
    c = ROOT / "cronicas"
    move_map(
        tmp / "03",
        [
            ("a-forja-da-doutrina.md", c / "01-tempestade-verde"),
            ("liber-biologis-o-despertar-da-moncao.md", c / "02-biologis-e-spiritus-fundacao"),
            ("liber-biologis-a-forja-da-carne-a-mitose-de-ferro.md", c / "02-biologis-e-spiritus-fundacao"),
            ("liber-spiritus-o-evangelho-do-silencio-quebrado.md", c / "02-biologis-e-spiritus-fundacao"),
            ("liber-biologis-a-morte-do-eu-a-estiagem.md", c / "02-biologis-e-spiritus-fundacao"),
            ("liber-spiritus-o-evangelho-do-vacuo-a-estiagem.md", c / "02-biologis-e-spiritus-fundacao"),
            ("o-pendulo-da-quimera-a-genese-da-projecao-aurea.md", c / "03-projecao-aurea-e-codex-omega"),
            ("codex-omega-o-pendulo-da-carne-e-do-ferro.md", c / "03-projecao-aurea-e-codex-omega"),
            ("liber-biologis-a-geometria-do-odio-arquivo-omega-trinity.md", c / "03-projecao-aurea-e-codex-omega"),
            ("liber-spiritus-o-vertice-da-condenacao-a-tormenta.md", c / "03-projecao-aurea-e-codex-omega"),
            ("codex-omega-a-revisao-do-vertice.md", c / "03-projecao-aurea-e-codex-omega"),
            ("cronicas-a-campanha-de-incus-gravis-o-sangue-e-o-ferro.md", c / "04-incus-gravis-e-tribunal"),
            ("a-saga-de-viggo.md", c / "05-saga-viggo"),
            ("o-silencio-da-era-das-chuvas.md", c / "06-vigilia-silenciosa"),
            ("o-ultimo-calor-do-muro.md", c / "06-vigilia-silenciosa"),
            ("a-venus-de-ferro.md", c / "07-venus-de-ferro"),
            ("o-santuario-da-fumaca-e-do-pao.md", c / "07-venus-de-ferro"),
            ("a-venus-de-ferro-a-filha-do-lobo-e-a-vigilia-do-ferro.md", c / "07-venus-de-ferro"),
            ("a-auditoria-da-logica.md", c / "08-auditoria-e-diplomacia"),
            ("a-diplomacia-das-presas-e-da-forja.md", c / "08-auditoria-e-diplomacia"),
            ("o-dragao-na-lareira-o-calor-de-tushan-em-noviomagus.md", c / "08-auditoria-e-diplomacia"),
            ("cinza-o-silencio-de-fenris-em-noviomagus.md", c / "08-auditoria-e-diplomacia"),
            ("a-vida-na-fronteira.md", c / "09-vida-na-fronteira"),
            ("o-dizimo-da-docura.md", c / "10-dizimo-da-docura"),
        ],
    )

    shutil.rmtree(tmp)

    # --- 05 / 06 / 07 / 08 manual splits (small files) ---
    arsenal = ROOT / "arsenal-and-logistics"
    arsenal.mkdir(parents=True, exist_ok=True)
    a_lines = (ROOT / "05_ARSENAL_E_LOGISTICA.md").read_text(encoding="utf-8").splitlines(keepends=True)
    # 0-based slice ends: before "## 2", "## 3", "## 4", end
    bounds = [0, 19, 29, 46, len(a_lines)]
    names = [
        "noviomagus-standard-engineering.md",
        "infantry-visual-identity.md",
        "specialty-cohorts.md",
        "vexillationes-and-visual-summary.md",
    ]
    for i, name in enumerate(names):
        (arsenal / name).write_text("".join(a_lines[bounds[i] : bounds[i + 1]]), encoding="utf-8")

    bio = ROOT / "enciclopedia-biologica-e-bestiario"
    bio.mkdir(parents=True, exist_ok=True)
    btext = (ROOT / "06_ENCICLOPEDIA_BIOLOGICA_E_BESTIARIO.md").read_text(encoding="utf-8")
    # Fonte usa título com colchetes escapados para Markdown
    sep2 = r"# \[WIKI\] DOSSIÊ DE RELÍQUIA BIOLÓGICA: VIGGO"
    if sep2 in btext:
        a, _, rest = btext.partition(sep2)
        (bio / "projecao-aurea-e-maldicao-do-lobo.md").write_text(a.rstrip() + "\n", encoding="utf-8")
        (bio / "wiki-reliquia-biologica-viggo.md").write_text(sep2 + rest, encoding="utf-8")
    else:
        shutil.copy(ROOT / "06_ENCICLOPEDIA_BIOLOGICA_E_BESTIARIO.md", bio / "enciclopedia-completa.md")

    lex = ROOT / "lexicon-e-litanias"
    lex.mkdir(parents=True, exist_ok=True)
    lx = (ROOT / "07_LEXICON_E_LITANIAS.md").read_text(encoding="utf-8").splitlines(keepends=True)
    # split before "## MENTALIDADE E FILOSOFIA"
    split_at = next(i for i, L in enumerate(lx) if L.startswith("## MENTALIDADE"))
    (lex / "mito-de-der-batav-e-fundacao.md").write_text("".join(lx[:split_at]).rstrip() + "\n", encoding="utf-8")
    (lex / "mentalidade-e-filosofia.md").write_text("".join(lx[split_at:]), encoding="utf-8")

    pol = ROOT / "relacoes-politicas"
    pol.mkdir(parents=True, exist_ok=True)
    p_lines = (ROOT / "08_RELACOES_POLITICAS.md").read_text(encoding="utf-8").splitlines(keepends=True)
    # H2 sections
    idxs = [i for i, L in enumerate(p_lines) if L.startswith("## WIKI:")]
    chunks_p = [p_lines[: idxs[0]]]
    for j, start in enumerate(idxs):
        end = idxs[j + 1] if j + 1 < len(idxs) else len(p_lines)
        chunks_p.append(p_lines[start:end])
    pol_titles = [
        "README.md",
        "eclesiarquia-na-fronteira.md",
        "geometria-da-inquisicao.md",
        "lex-imperialis-e-justica-de-ferro.md",
    ]
    for name, chunk in zip(pol_titles, chunks_p):
        (pol / name).write_text("".join(chunk), encoding="utf-8")

    # Atlas tree
    atlas = ROOT / "atlas-and-topography"
    sys_m = atlas / "systems"
    atlas.mkdir(parents=True, exist_ok=True)
    sys_m.mkdir(parents=True, exist_ok=True)
    shutil.move(str(ROOT / "04_ATLAS_E_TOPOGRAFIA.md"), str(atlas / "ATLAS_E_TOPOGRAFIA.md"))
    shutil.move(str(ROOT / "04A_ATLAS_SISTEMA_I_BASTIAO_CENTRAL.md"), str(sys_m / "ATLAS_SISTEMA_I_BASTIAO_CENTRAL.md"))
    shutil.move(str(ROOT / "04B_ATLAS_SISTEMA_II_CADINHO.md"), str(sys_m / "ATLAS_SISTEMA_II_CADINHO.md"))
    shutil.move(str(ROOT / "04C_ATLAS_SISTEMA_III_LIMIAR.md"), str(sys_m / "ATLAS_SISTEMA_III_LIMIAR.md"))

    print("Organize complete.")


if __name__ == "__main__":
    main()
