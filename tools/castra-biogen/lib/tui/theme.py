"""Amber phosphor cogitator theme for Textual."""
from __future__ import annotations

COGITATOR_CSS = """
Screen {
    background: #0a0a08;
    color: #e6b84d;
}

#header {
    dock: top;
    height: 3;
    background: #1a1408;
    color: #ffcc66;
    border: heavy #8a6a20;
    padding: 0 1;
    text-style: bold;
}

#warn-log {
    dock: bottom;
    height: 6;
    background: #120e06;
    border: solid #5a4010;
    color: #c99030;
    overflow-y: auto;
}

#main {
    padding: 1 2;
    overflow-y: auto;
    height: 1fr;
}

TextArea {
    background: #100c06;
    color: #ffe08a;
}


.title {
    text-style: bold;
    color: #ffcc66;
    margin-bottom: 1;
}

.litany {
    color: #a07830;
    margin-bottom: 1;
}

Button {
    background: #1a1408;
    color: #e6b84d;
    border: solid #8a6a20;
    margin: 0 1 1 0;
    min-width: 16;
}

Button:hover {
    background: #2a2010;
    color: #ffe08a;
}

Button.-primary {
    background: #3a2810;
    border: heavy #c9a040;
}

.panel {
    border: solid #8a6a20;
    background: #100c06;
    padding: 1;
    margin-bottom: 1;
    height: auto;
}

.label {
    color: #c9a040;
}

.value {
    color: #ffe08a;
    text-style: bold;
}

Input {
    background: #0a0a08;
    border: solid #8a6a20;
    color: #ffe08a;
}

Select {
    background: #0a0a08;
    border: solid #8a6a20;
    color: #e6b84d;
}

ListView {
    border: solid #8a6a20;
    background: #100c06;
    height: 8;
    max-height: 8;
}

ListItem {
    padding: 0 1;
}

ListItem:hover {
    background: #2a2010;
}

"""
