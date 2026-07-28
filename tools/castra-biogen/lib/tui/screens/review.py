"""Review — seal to cogitator-results/, save pack, propose-codex preview."""
from __future__ import annotations

from textual.app import ComposeResult
from textual.containers import Horizontal, VerticalScroll
from textual.screen import Screen
from textual.widgets import Button, Input, Label, Static

from ...wizard_session import WizardSession
from ..widgets.header import CogitatorHeader
from ..widgets.warn_log import WarnLog


class ReviewScreen(Screen):
    TRACK_DIRTY = True

    def compose(self) -> ComposeResult:
        yield CogitatorHeader("LAYER L7 // SEAL & ARCHIVE")
        with VerticalScroll(id="main"):
            yield Static("REVIEW / COMMIT", classes="title")
            yield Static(id="review-panel", classes="panel")
            yield Label("Save as pack id:")
            yield Input(value="my-pack", id="pack-id")
            yield Label("Pack title:")
            yield Input(value="Custom mesh", id="pack-title")
            with Horizontal(classes="-toolbar"):
                yield Button("Seal to results (L7)", id="btn-out", variant="primary")
                yield Button("Open in Archive", id="btn-archive")
                yield Button("Save as pack", id="btn-pack")
                yield Button("Propose codex (dry-run)", id="btn-propose")
            yield Static(id="propose-panel", classes="panel")
            with Horizontal(classes="-toolbar"):
                yield Button("Return to menu", id="btn-done", variant="primary")
                yield Button("Back", id="btn-back")
        yield WarnLog()

    def on_mount(self) -> None:
        self.query_one(WarnLog).boot()
        self._refresh()

    def _session(self) -> WizardSession:
        return self.app.session  # type: ignore[attr-defined]

    def _refresh(self) -> None:
        session = self._session()
        body = session.body or {}
        system = session.system or {}
        warns = list(session.warnings)
        warns += list((body.get("warnings") or []))
        warns += list((system.get("warnings") or []))
        # dedupe preserve order
        seen: set[str] = set()
        uniq = []
        for w in warns:
            if w not in seen:
                seen.add(w)
                uniq.append(w)
        text = (
            f"System: {(system.get('meta') or {}).get('slug')}\n"
            f"Body: {(body.get('meta') or {}).get('slug')}\n"
            f"Pack context: {session.pack_id or '(greenfield)'}\n"
            f"Provenance: {session.provenance}\n"
            f"Warnings ({len(uniq)}):\n"
            + ("\n".join(f"  - {w}" for w in uniq) if uniq else "  (none)")
        )
        self.query_one("#review-panel", Static).update(text)

    def on_button_pressed(self, event: Button.Pressed) -> None:
        session = self._session()
        log = self.query_one(WarnLog)
        if event.button.id == "btn-back":
            self.app.request_back()  # type: ignore[attr-defined]
            return
        if event.button.id == "btn-done":
            self.app.request_menu()  # type: ignore[attr-defined]
            return
        if event.button.id == "btn-out":
            if session.body is None:
                log.push("no body to finalize")
                return
            world = session.finalize()
            log.push(f"sealed cogitator-results/{world['meta']['slug']}/ (magos + literary + state.json)")
            self._refresh()
            return
        if event.button.id == "btn-archive":
            body = session.body or {}
            slug = (body.get("meta") or {}).get("slug")
            if not slug:
                log.push("no body slug — seal to results first or open Archive from boot")
                return
            from .out_archive import OutArchiveScreen

            # Prefer magos if present; Archive still opens even before write
            self.app.push_screen(
                OutArchiveScreen(kind="body", slug=slug, filename="magos.md")
            )
            return
        if event.button.id == "btn-pack":
            pack_id = self.query_one("#pack-id", Input).value.strip() or "my-pack"
            title = self.query_one("#pack-title", Input).value.strip() or pack_id
            if session.system is None and session.body is None:
                log.push("nothing to save")
                return
            # Ensure body finalized if present
            if session.body and not (session.body.get("render") or {}).get("magos_path"):
                session.finalize()
            path = session.save_as_pack(pack_id, title=title, description="Exported from cogitator wizard")
            log.push(f"saved pack → {path}")
            self._refresh()
            return
        if event.button.id == "btn-propose":
            if session.body is None:
                log.push("no body")
                return
            if not (session.body.get("render") or {}).get("magos_path"):
                session.finalize()
            text = session.propose_codex_text()
            self.query_one("#propose-panel", Static).update(text)
            log.push("codex propose dry-run rendered")
            return
