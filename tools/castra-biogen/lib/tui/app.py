"""CogitatorApp — Textual entry for castra-biogen wizard."""
from __future__ import annotations

from textual.app import App

from ..wizard_session import WizardSession
from .screens.boot import BootScreen
from .theme import COGITATOR_CSS


class CogitatorApp(App[None]):
    CSS = COGITATOR_CSS
    TITLE = "Castra Biogen — Cogitator"
    BINDINGS = [("q", "quit", "Abort")]

    def __init__(
        self,
        *,
        seed: int | None = None,
        pack: str | None = None,
    ) -> None:
        super().__init__()
        self.session = WizardSession(seed=seed, pack_id=pack)

    def on_mount(self) -> None:
        self.push_screen(BootScreen())


def run_wizard(*, seed: int | None = None, pack: str | None = None) -> None:
    CogitatorApp(seed=seed, pack=pack).run()
