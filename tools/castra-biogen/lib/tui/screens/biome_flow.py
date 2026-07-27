"""Explicit biomes step — roll / pick / skip."""
from __future__ import annotations

from textual.app import ComposeResult
from textual.containers import Horizontal, VerticalScroll
from textual.screen import Screen
from textual.widgets import Button, Label, ListItem, ListView, Select, Static

from ...wizard_session import WizardSession
from ..widgets.header import CogitatorHeader
from ..widgets.warn_log import WarnLog


class BiomeFlowScreen(Screen):
    def compose(self) -> ComposeResult:
        yield CogitatorHeader("LAYER L4 // BIOMES")
        with VerticalScroll(id="main"):
            yield Static("BIOSPHERE — BIOME RITE", classes="title")
            yield Static(
                "Choose biomes for this body. Trophic webs are rebuilt from this list.",
                classes="litany",
            )
            yield Static(id="biome-summary", classes="panel")
            yield Label("Current biomes:")
            yield ListView(id="biome-list")
            yield Label("Add class / richness:")
            with Horizontal():
                yield Select([], id="class-select")
                yield Select([], id="rich-select")
            with Horizontal():
                yield Button("Add biome", id="btn-add", variant="primary")
                yield Button("Remove selected", id="btn-remove")
            with Horizontal():
                yield Button("Roll biomes", id="btn-roll")
                yield Button("Skip biomes", id="btn-skip")
            with Horizontal():
                yield Button("Continue →", id="btn-next", variant="primary")
                yield Button("Back", id="btn-back")
        yield WarnLog()

    def on_mount(self) -> None:
        log = self.query_one(WarnLog)
        log.boot()
        session = self._session()
        self._selected_biome: str | None = None
        classes = session.list_biome_classes()
        self.query_one("#class-select", Select).set_options([(c, c) for c in classes])
        if classes:
            self.query_one("#class-select", Select).value = classes[0]
        rich = session.list_richness()
        self.query_one("#rich-select", Select).set_options([(r, r) for r in rich])
        self.query_one("#rich-select", Select).value = "moderate"
        self._refresh()

    def _session(self) -> WizardSession:
        return self.app.session  # type: ignore[attr-defined]

    def _refresh(self) -> None:
        session = self._session()
        biomes = session.current_biomes()
        text = (
            f"Body: {(session.body or {}).get('meta', {}).get('slug')}\n"
            f"Provenance: {session.provenance.get('biomes', '—')}\n"
            f"Count: {len(biomes)}"
        )
        self.query_one("#biome-summary", Static).update(text)
        lv = self.query_one("#biome-list", ListView)
        lv.clear()
        for b in biomes:
            label = f"{b.get('id')} — {b.get('class')} ({b.get('richness')})"
            item = ListItem(Label(label))
            item.biome_id = b.get("id")  # type: ignore[attr-defined]
            lv.append(item)

    def on_list_view_selected(self, event: ListView.Selected) -> None:
        self._selected_biome = getattr(event.item, "biome_id", None)

    def on_button_pressed(self, event: Button.Pressed) -> None:
        session = self._session()
        log = self.query_one(WarnLog)
        if event.button.id == "btn-back":
            self.app.pop_screen()
            return
        if session.body is None:
            log.push("no body — go back and init")
            return
        if event.button.id == "btn-add":
            class_id = str(self.query_one("#class-select", Select).value)
            richness = str(self.query_one("#rich-select", Select).value)
            entry = session.add_biome(class_id, richness)
            log.push(f"added biome {entry.get('id')} ({session.provenance.get('biomes')})")
            for w in session.body.get("warnings") or []:
                if w.startswith("override:"):
                    log.push(w)
            self._refresh()
            return
        if event.button.id == "btn-remove":
            biome_id = self._selected_biome
            if not biome_id:
                lv = self.query_one("#biome-list", ListView)
                if lv.highlighted_child is not None:
                    biome_id = getattr(lv.highlighted_child, "biome_id", None)
            if not biome_id:
                log.push("select a biome to remove")
                return
            session.remove_biome(biome_id)
            log.push(f"removed biome {biome_id}")
            self._refresh()
            return
        if event.button.id == "btn-roll":
            biomes = session.roll_biomes()
            log.push(f"rolled {len(biomes)} biomes ({session.provenance.get('biomes')})")
            for w in session.body.get("warnings") or []:
                if w.startswith("override:"):
                    log.push(w)
            self._refresh()
            return
        if event.button.id == "btn-skip":
            session.skip_biomes()
            log.push(f"skipped biomes — keep {len(session.current_biomes())}")
            self._refresh()
            return
        if event.button.id == "btn-next":
            from .edit_hub import EditHubScreen
            from .review import ReviewScreen

            if any(isinstance(s, EditHubScreen) for s in self.app.screen_stack):
                self.app.pop_screen()
            else:
                self.app.push_screen(ReviewScreen())
