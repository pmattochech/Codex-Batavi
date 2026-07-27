"""Body flow — choose slug, roll layers, pick planet type / immaterium."""
from __future__ import annotations

from textual.app import ComposeResult
from textual.containers import Horizontal, VerticalScroll
from textual.screen import Screen
from textual.widgets import Button, Input, Label, ListItem, ListView, Select, Static

from ... import packs as packsmod
from ...wizard_session import WizardSession
from ..widgets.header import CogitatorHeader
from ..widgets.warn_log import WarnLog


class BodyFlowScreen(Screen):
    def compose(self) -> ComposeResult:
        yield CogitatorHeader("LAYERS L1–L6 // BIOSPHERE RITE")
        with VerticalScroll(id="main"):
            yield Static("BODY SELECTION", classes="title")
            yield Label("Body slug (create or pack body):")
            yield Input(value="new-world", id="body-slug")
            yield Label("Bodies in active pack (optional):")
            yield ListView(id="body-list")
            with Horizontal():
                yield Button("Init body", id="btn-init", variant="primary")
                yield Button("Use listed body", id="btn-listed")
            yield Static(id="body-summary", classes="panel")
            yield Label("Planet type / body kind:")
            with Horizontal():
                yield Select([], id="ptype-select")
                yield Select([], id="bkind-select")
            yield Label("Immaterium stress:")
            yield Select([], id="stress-select")
            with Horizontal():
                yield Button("Pick planet type", id="btn-ptype")
                yield Button("Pick stress", id="btn-stress")
                yield Button("Reroll layers", id="btn-reroll")
            with Horizontal():
                yield Button("Continue to biomes →", id="btn-next", variant="primary")
                yield Button("Back", id="btn-back")
        yield WarnLog()

    def on_mount(self) -> None:
        log = self.query_one(WarnLog)
        log.boot()
        session = self._session()
        self.query_one("#ptype-select", Select).set_options(
            [(t, t) for t in session.planet_types()]
        )
        self.query_one("#bkind-select", Select).set_options(
            [(t, t) for t in session.body_kinds()]
        )
        self.query_one("#stress-select", Select).set_options(
            [(t, t) for t in session.immaterium_grades()]
        )
        if session.planet_types():
            self.query_one("#ptype-select", Select).value = session.planet_types()[0]
        if session.body_kinds():
            self.query_one("#bkind-select", Select).value = "planet"
        if session.immaterium_grades():
            self.query_one("#stress-select", Select).value = "neutral"

        lv = self.query_one("#body-list", ListView)
        self._selected_body: str | None = None
        if session.pack_id:
            for slug in packsmod.list_body_slugs(session.pack_id):
                item = ListItem(Label(slug))
                item.body_slug = slug  # type: ignore[attr-defined]
                lv.append(item)
            # Suggest bodies from system slots
            slots = (session.system or {}).get("layers", {}).get("body_slots") or []
            for slot in slots:
                slug = slot.get("slug") if isinstance(slot, dict) else slot
                if slug:
                    self.query_one("#body-slug", Input).value = str(slug)
                    break
        self._refresh()

    def on_list_view_selected(self, event: ListView.Selected) -> None:
        self._selected_body = getattr(event.item, "body_slug", None)

    def _session(self) -> WizardSession:
        return self.app.session  # type: ignore[attr-defined]

    def _refresh(self) -> None:
        body = self._session().body
        if not body:
            self.query_one("#body-summary", Static).update("No body initialized.")
            return
        layers = body.get("layers") or {}
        pt = layers.get("planet_type") or {}
        chem = layers.get("chemistry_climate") or {}
        biomes = layers.get("biomes") or []
        text = (
            f"Slug: {body['meta']['slug']}\n"
            f"Planet type: {pt.get('planet_type')} ({pt.get('body_kind')})\n"
            f"Immaterium: {chem.get('immaterium_stress')}\n"
            f"Biomes: {len(biomes)} — {[b.get('id') for b in biomes]}\n"
            f"Warnings: {len(body.get('warnings') or [])}"
        )
        self.query_one("#body-summary", Static).update(text)

    def on_button_pressed(self, event: Button.Pressed) -> None:
        session = self._session()
        log = self.query_one(WarnLog)
        if event.button.id == "btn-back":
            self.app.pop_screen()
            return
        if event.button.id == "btn-listed":
            slug = getattr(self, "_selected_body", None)
            if not slug:
                lv = self.query_one("#body-list", ListView)
                if lv.highlighted_child is not None:
                    slug = getattr(lv.highlighted_child, "body_slug", None)
            if not slug:
                log.push("select a body from the pack list")
                return
            self.query_one("#body-slug", Input).value = slug
            session.start_body(slug, use_lock=True)
            log.push(f"initialized body '{slug}' from pack lock")
            for w in (session.body or {}).get("warnings") or []:
                log.push(w)
            self._refresh()
            return
        if event.button.id == "btn-init":
            slug = self.query_one("#body-slug", Input).value.strip() or "new-world"
            session.start_body(slug, use_lock=True)
            log.push(f"initialized body '{slug}'")
            for w in (session.body or {}).get("warnings") or []:
                log.push(w)
            self._refresh()
            return
        if session.body is None:
            log.push("initialize a body first")
            return
        if event.button.id == "btn-ptype":
            ptype = str(self.query_one("#ptype-select", Select).value)
            bkind = str(self.query_one("#bkind-select", Select).value)
            session.pick_planet_type(ptype, bkind)
            log.push(
                f"planet_type → {ptype}/{bkind} ({session.provenance.get('planet_type')})"
            )
            for w in session.body.get("warnings") or []:
                if w.startswith("override:"):
                    log.push(w)
            self._refresh()
            return
        if event.button.id == "btn-stress":
            grade = str(self.query_one("#stress-select", Select).value)
            session.pick_immaterium(grade)
            log.push(
                f"immaterium_stress → {grade} ({session.provenance.get('immaterium_stress')})"
            )
            self._refresh()
            return
        if event.button.id == "btn-reroll":
            session.reroll_body_layers()
            log.push("rerolled body layers (spark)")
            self._refresh()
            return
        if event.button.id == "btn-next":
            from .biome_flow import BiomeFlowScreen

            self.app.push_screen(BiomeFlowScreen())
