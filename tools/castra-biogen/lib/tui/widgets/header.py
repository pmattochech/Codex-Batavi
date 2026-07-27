from __future__ import annotations

from textual.widgets import Static


class CogitatorHeader(Static):
    DEFAULT_CSS = """
    CogitatorHeader {
        dock: top;
        height: 3;
        background: #1a1408;
        color: #ffcc66;
        border: heavy #8a6a20;
        padding: 0 1;
        text-style: bold;
    }
    """

    def __init__(self, subtitle: str = "VEIL LINK STABLE") -> None:
        super().__init__(
            f"MAGOS BIOLOGIS // COGITATOR-BIOGEN  |  {subtitle}"
        )
