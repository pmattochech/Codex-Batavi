"""Specimen list / add / edit / remove."""
from __future__ import annotations

from textual.app import ComposeResult
from textual.containers import Horizontal, Vertical, VerticalScroll
from textual.screen import Screen
from textual.widgets import Button, Input, Label, ListItem, ListView, Select, Static

from ...wizard_session import WizardSession
from ..widgets.header import CogitatorHeader
from ..widgets.warn_log import WarnLog


class EditSpecimensScreen(Screen):
    CSS = """
    #spec-main { height: 1fr; padding: 0 1; }
    #spec-toolbar { height: 3; }
    #spec-toolbar Button { margin: 0 1 0 0; min-width: 10; height: 3; }
    #spec-list { height: 8; border: solid #8a6a20; }
    """

    def compose(self) -> ComposeResult:
        yield CogitatorHeader("EDITOR // SPECIMENS")
        with Vertical(id="spec-main"):
            with Horizontal(id="spec-toolbar"):
                yield Button("Save specimen", id="btn-save", variant="primary")
                yield Button("Remove", id="btn-remove")
                yield Button("Back", id="btn-back")
            yield Label("Specimens")
            yield ListView(id="spec-list")
            with VerticalScroll():
                yield Label("id")
                yield Input(id="spec-id")
                yield Label("name")
                yield Input(id="spec-name")
                yield Label("primary_biome (id)")
                yield Input(id="spec-primary")
                yield Label("secondary_biomes (comma ids)")
                yield Input(id="spec-secondary")
                yield Label("range (single|multi)")
                yield Input(value="single", id="spec-range")
                yield Label("trophic_slot")
                yield Select([("apex", "apex")], id="spec-slot", allow_blank=False)
                yield Label("origin")
                yield Select(
                    [("native", "native"), ("exotic", "exotic")],
                    id="spec-origin",
                    allow_blank=False,
                )
                yield Label("origin_subtype")
                yield Input(id="spec-subtype")
                yield Label("analogue")
                yield Input(id="spec-analogue")
                yield Label("dossier")
                yield Input(id="spec-dossier")
                yield Label("notes")
                yield Input(id="spec-notes")
            yield Static(id="biome-hint", classes="litany")
        yield WarnLog()

    def on_mount(self) -> None:
        self.query_one(WarnLog).boot()
        session = self._session()
        slots = [(s, s) for s in session.trophic_slots()]
        self.query_one("#spec-slot", Select).set_options(slots or [("apex", "apex")])
        self.query_one("#spec-slot", Select).value = "apex"
        biomes = ", ".join(b.get("id", "") for b in session.current_biomes())
        self.query_one("#biome-hint", Static).update(f"Biome ids on body: {biomes or '(none)'}")
        self._reload_list()

    def _session(self) -> WizardSession:
        return self.app.session  # type: ignore[attr-defined]

    def _reload_list(self) -> None:
        lv = self.query_one("#spec-list", ListView)
        lv.clear()
        for spec in self._session().current_specimens():
            label = f"{spec.get('id')} — {spec.get('name') or ''} [{spec.get('trophic_slot')}]"
            item = ListItem(Label(label))
            item.spec_id = spec.get("id")  # type: ignore[attr-defined]
            lv.append(item)

    def _load_form(self, sid: str) -> None:
        spec = next((s for s in self._session().current_specimens() if s.get("id") == sid), None)
        if not spec:
            return
        self.query_one("#spec-id", Input).value = str(spec.get("id") or "")
        self.query_one("#spec-name", Input).value = str(spec.get("name") or "")
        self.query_one("#spec-primary", Input).value = str(spec.get("primary_biome") or "")
        self.query_one("#spec-secondary", Input).value = ", ".join(spec.get("secondary_biomes") or [])
        self.query_one("#spec-range", Input).value = str(spec.get("range") or "single")
        slot = spec.get("trophic_slot") or "apex"
        try:
            self.query_one("#spec-slot", Select).value = slot
        except Exception:
            pass
        origin = spec.get("origin") or "native"
        self.query_one("#spec-origin", Select).value = origin
        self.query_one("#spec-subtype", Input).value = str(spec.get("origin_subtype") or "")
        self.query_one("#spec-analogue", Input).value = str(spec.get("analogue") or "")
        self.query_one("#spec-dossier", Input).value = str(spec.get("dossier") or "")
        self.query_one("#spec-notes", Input).value = str(spec.get("notes") or "")

    def on_list_view_selected(self, event: ListView.Selected) -> None:
        sid = getattr(event.item, "spec_id", None)
        if sid:
            self._load_form(sid)

    def on_button_pressed(self, event: Button.Pressed) -> None:
        session = self._session()
        log = self.query_one(WarnLog)
        if event.button.id == "btn-back":
            self.app.pop_screen()
            return
        if event.button.id == "btn-remove":
            sid = self.query_one("#spec-id", Input).value.strip()
            if not sid:
                log.push("no specimen id")
                return
            session.remove_specimen(sid)
            log.push(f"removed {sid}")
            self._reload_list()
            return
        if event.button.id == "btn-save":
            sid = self.query_one("#spec-id", Input).value.strip()
            if not sid:
                log.push("id required")
                return
            secondary = [
                x.strip()
                for x in self.query_one("#spec-secondary", Input).value.split(",")
                if x.strip()
            ]
            rng = self.query_one("#spec-range", Input).value.strip() or "single"
            if secondary and rng == "single":
                rng = "multi"
            spec = {
                "id": sid,
                "name": self.query_one("#spec-name", Input).value.strip() or sid,
                "primary_biome": self.query_one("#spec-primary", Input).value.strip(),
                "secondary_biomes": secondary,
                "range": rng,
                "trophic_slot": str(self.query_one("#spec-slot", Select).value),
                "origin": str(self.query_one("#spec-origin", Select).value),
                "origin_subtype": self.query_one("#spec-subtype", Input).value.strip()
                or "aboriginal",
                "analogue": self.query_one("#spec-analogue", Input).value.strip() or None,
                "dossier": self.query_one("#spec-dossier", Input).value.strip() or None,
                "notes": self.query_one("#spec-notes", Input).value.strip() or "",
            }
            # drop None analogue/dossier for cleaner yaml
            spec = {k: v for k, v in spec.items() if v is not None}
            try:
                session.upsert_specimen(spec)
                log.push(f"saved specimen {sid}")
                self._reload_list()
            except Exception as exc:
                log.push(str(exc))
