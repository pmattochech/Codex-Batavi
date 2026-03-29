"""Caminhos e URL do ComfyUI (sem usuário hardcoded)."""

from __future__ import annotations

import os
from pathlib import Path

# Raiz do pacote forja/ (pasta que contém presets.toml e workflows/)
_FORJA_ROOT = Path(__file__).resolve().parent.parent


def forja_root() -> Path:
    return _FORJA_ROOT


def comfy_base_url() -> str:
    return os.environ.get("FORJA_COMFY_URL", "http://127.0.0.1:8188").rstrip("/")


def comfy_home() -> Path:
    """Pasta raiz do clone ComfyUI (onde está main.py)."""
    raw = os.environ.get("FORJA_COMFY_HOME")
    if raw:
        return Path(raw).expanduser().resolve()
    return (Path.home() / "ComfyUI").resolve()


def comfy_output_dir() -> Path:
    raw = os.environ.get("FORJA_COMFY_OUTPUT")
    if raw:
        return Path(raw).expanduser().resolve()
    return (Path.home() / "ComfyUI" / "output").resolve()


def assets_dir() -> Path:
    raw = os.environ.get("FORJA_ASSETS_DIR")
    if raw:
        return Path(raw).expanduser().resolve()
    return (Path.home() / "Codex-Batavi" / "codex-batavi" / "lore-images").resolve()
