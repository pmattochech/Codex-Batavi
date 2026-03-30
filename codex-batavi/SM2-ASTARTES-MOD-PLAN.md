# Space Marine 2 — Batavi in-game plan (backlog / not canon)

**Goal:** Recreate **Cohors Batavorum** (industrial grey + crimson, frontal-wolf identity) in *Warhammer 40,000: Space Marine 2*, using **vanilla customization first**, then **mods** where safe and stable.

**Canonical paint refs:** [`visual-identity-paint-guide.md`](visual-identity-paint-guide.md) · seal geometry: [`lore-images/chapter-seal-canonical.png`](lore-images/chapter-seal-canonical.png) · prompts: [`lore-images/ai-prompts-chapter-insignia.md`](lore-images/ai-prompts-chapter-insignia.md).

**Staying on this task:** Use the sections below as a **living worksheet** — fill the tables in your own notes or append screenshots paths; update this file when you lock a build (game patch + mod versions).

### Current setup (confirmed)

- **Game:** **latest** public build (kept updated on Steam). *Optional:* paste the exact **build / version string** from the main menu or Steam → Properties here when you want a paper trail: `_______________`
- **Mod:** **latest** release of your installed pack (Nexus / author page). *Optional:* mod name + file version: `_______________`
- **Note:** “Latest + latest” only stays true until the **next** game patch — re-check the mod’s **Posts** tab after every SM2 update.

---

## 0. Preconditions (do once)

- [ ] Confirm **platform** (Steam / console) — modding is **PC-first** (Nexus, loose files, offline launch where applicable). **Linux / Steam Play (Proton):** game files and any manual installs live under the **Proton prefix** for the app; Nexus **Vortex** support varies — expect **manual** paths or a Windows VM/dual-boot for fussy tools.
- [x] **Version stack:** running **latest game** + **latest mod** (see **Current setup** above). Fill the optional string lines when you want exact revision IDs in git.
- [ ] Decide **online stance:**  
  - **Cosmetic-vanilla only** → safest for **official launch + co-op** (no file swaps).  
  - **File mods** → community guides often tie this to **offline / no-EAC** launch patterns; **read Focus/Saber ToS and current patch notes** — policies change; **do not assume** multiplayer stays valid with modified clients.
- [ ] If using **Nexus**: bookmark the game hub — `https://www.nexusmods.com/warhammer40000spacemarine2` — and sort by **last updated** after every game patch.

---

## 1. Vanilla — Armouring Hall (no mods)

### 1.1 Read targets (from lore)

| Target (lore) | In-game job |
|-----------------|-------------|
| ~**Mechanicus Standard Grey** (~90% plate) | Primary / main ceramite read |
| ~**Mephiston Red** (pauldrons, trim, lenses) | Accent / oath color |
| **Frontal wolf** (no lunar roundel) | Best available **shoulder / chest** decal |
| Optional: **Deathwatch test** | **Black** field + **grey + crimson pauldron** (Steppenwolf / loaned op cosplay) |

### 1.2 Execution checklist

- [ ] **Operations → Armouring Hall → Edit armor → Astartes Chapters** (tab names shift with patches — hunt for chapter / heraldry editor).
- [ ] Set **primary** to the **coolest neutral grey** (avoid blue-tint if it reads Ultramarine).
- [ ] Set **secondary / trim / detail** to the **deepest red** available (not orange-pink).
- [ ] **Emblem:** scroll **every** wolf-adjacent option; pick what reads **head-on** at **thumbnail** size (tabletop legibility test).
- [ ] Repeat per **armor chassis** you play (Intercessor vs heavier patterns — pieces sometimes reset rules).
- [ ] Save **four** named slots (suggestion): `BATAVI-OPS`, `BATAVI-ASSAULT`, `BATAVI-HEAVY`, `BATAVI-DW-TEST`.

### 1.3 Validation (5 minutes)

- [ ] **Armouring Hall lighting** — looks grey + red, not silver + pink.  
- [ ] **Operations deploy screen** — squad still reads correctly (some maps wash colors).  
- [ ] **Photo pass:** capture one screenshot per preset; compare side-by-side with `lore-images/chapter-seal-canonical.png` (expect **facsimile**, not match).

**Acceptance:** You would **recognize** the chapter in a random queue without reading the name.

---

## 2. Mods — pick your lane

### 2.1 Cosmetic-first (recommended if you still play online)

- [ ] Search Nexus for **heraldry**, **decal**, **armor texture**, **color** — prioritize mods that **only** touch cosmetics.
- [ ] Read **Posts** tab for **your exact patch** before installing.
- [ ] Install **one mod at a time**; launch → verify → next.

### 2.2 Astartes Overhaul–class packs (gameplay + cosmetics)

Large packs (community often names **Astartes Overhaul** or successors) may add **metallic paints**, **extra decals**, **helmet variants**, **weapon skins**, and also **rebalance** PvE/PvP. Treat them as a **fork**:

- [ ] Read the mod **description + required files + conflicts**.  
- [ ] Expect **save compatibility** and **multiplayer** questions — follow author guidance.  
- [ ] If you only wanted **colors**, check whether a **lite** or **cosmetic-only** extra exists from the same author.

**Acceptance:** You consciously chose **either** cosmetic-only **or** full overhaul; you know which modes you can still play.

---

## 3. Batavi-specific optional slots

- [ ] **Iron Guard / siege** fantasy: favour **starker grey**, minimal bling, **no** gold primary (keeps industrial read).  
- [ ] **Steppenwolf / Deathwatch** fantasy: use your **Deathwatch policy** doc — **Watch black** + **Chapter pauldron** if the editor allows split schemes; otherwise fake with **black primary** and **red trim** on one shoulder only if the UI permits asymmetry.  
- [ ] **Librarian / Nullity** (only if you enjoy RP): *optional* blue accent **on a small part** — do **not** let it drown crimson/grey.

---

## 4. Custom icon / texture pipeline (when vanilla + Nexus are not enough)

- [ ] Hand **2D seal** first → [`visual-identity-paint-guide.md`](visual-identity-paint-guide.md) + PNG reference.  
- [ ] **Or** commission a modder → [`HERALDRY-INGAME-PLAN.md`](HERALDRY-INGAME-PLAN.md) + [`lore-images/heraldry-ingame-export-spec.md`](lore-images/heraldry-ingame-export-spec.md) (paths, TGA slot swap, patch caveats).  
- [ ] Treat as **advanced** — only after §1 acceptance (or parallel if you stay on vanilla for play).

---

## 5. Risks & scope control

- **Patch churn:** SM2 updates **break** texture hooks — keep a **vanilla preset** export/screenshot as rollback.  
- **Online fairness:** assume **any** non-cosmetic mod is **PvP-unsafe** unless author states otherwise.  
- **Lore drift:** in-game wolf decals ≠ `chapter-seal-canonical.png`; keep **“game facsimile”** in your head so you do not rewrite lore to match a stock asset.

---

## 6. Done = for this backlog slice

Check off **`TOMORROW-TODOS.md`** when:

1. You have **one saved vanilla preset** you are happy to play, **or**  
2. You have a **documented blocker** (platform, patch, policy) and a **dated** next action.

### Progress log (optional — fill as you go)

| Date | Game patch | Action | Result |
|------|------------|--------|--------|
| 2026-03-28 | latest (Steam) | User confirmed **latest game** + **latest mod** | Stack aligned; re-verify after next SM2 patch |

---

*Last reviewed: 2026-03-28. §4 — modder path for custom heraldry.*
