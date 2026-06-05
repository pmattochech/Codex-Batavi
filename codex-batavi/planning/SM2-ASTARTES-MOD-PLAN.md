# Space Marine 2 — Batavi in-game plan (backlog / not canon)

**Goal:** Recreate **Cohors Batavorum** (industrial grey + crimson, frontal-wolf identity) in *Warhammer 40,000: Space Marine 2*, using **vanilla customization first**, then **mods** where safe and stable.

**Canonical paint refs:** `[visual-identity-paint-guide.md](visual-identity-paint-guide.md)` · seal geometry: `[lore-images/chapter-seal-canonical.png](lore-images/chapter-seal-canonical.png)` · prompts: `[lore-images/ai-prompts-chapter-insignia.md](lore-images/ai-prompts-chapter-insignia.md)`.

**Staying on this task:** Use the sections below as a **living worksheet** — fill the tables in your own notes or append screenshots paths; update this file when you lock a build (game patch + mod versions).

### Current setup (confirmed)

- **Game:** **latest** public build (kept updated on Steam). *Optional:* paste the exact **build / version string** from the main menu or Steam → Properties here when you want a paper trail: `_______________`
- **Mod:** **latest** release of your installed pack (Nexus / author page). *Optional:* mod name + file version: `_______________`
- **Note:** “Latest + latest” only stays true until the **next** game patch — re-check the mod’s **Posts** tab after every SM2 update.

---

## 0. Preconditions (do once)

- Confirm **platform** (Steam / console) — modding is **PC-first** (Nexus, loose files, offline launch where applicable). **Linux / Steam Play (Proton):** game files and any manual installs live under the **Proton prefix** for the app; Nexus **Vortex** support varies — expect **manual** paths or a Windows VM/dual-boot for fussy tools.
- **Version stack:** running **latest game** + **latest mod** (see **Current setup** above). Fill the optional string lines when you want exact revision IDs in git.
- Decide **online stance:**  
  - **Cosmetic-vanilla only** → safest for **official launch + co-op** (no file swaps).  
  - **File mods** → community guides often tie this to **offline / no-EAC** launch patterns; **read Focus/Saber ToS and current patch notes** — policies change; **do not assume** multiplayer stays valid with modified clients.
- If using **Nexus**: bookmark the game hub — `https://www.nexusmods.com/warhammer40000spacemarine2` — and sort by **last updated** after every game patch.

---

## 1. Vanilla — Armouring Hall (no mods)

### 1.1 Read targets (from lore)


| Target (lore)                                | In-game job                                                                     |
| -------------------------------------------- | ------------------------------------------------------------------------------- |
| ~**Mechanicus Standard Grey** (~90% plate) | Primary / main ceramite read                                                    |
| ~**Mephiston Red** (pauldrons, trim)         | Accent / oath color                                                             |
| **Frontal wolf** (no lunar roundel)          | Best available **shoulder / chest** decal                                       |
| Optional: **Deathwatch test**                | **Black** field + **grey + crimson pauldron** (Steppenwolf / loaned op cosplay) |
| Optional: **lens accent**                    | Personal ID only (e.g. orange ocular); **not** from [`visual-identity-paint-guide.md`](visual-identity-paint-guide.md). |

### 1.1b Stand-in chapter emblem (official import not available)

Until a **custom decal / texture** pipeline works (see §4), borrow a **stock chapter icon**. Prioritize **silhouette at thumbnail size**, not lore “ownership.”

| Priority | Chapter / pack (typical) | Why it works | Caveat |
| -------- | ------------------------ | ------------ | ------ |
| **1** | **Space Wolves** | Often the only stock set that is **wolf-forward**; closest visual proxy for **Batav Wolf** / frontal predator read. | Reads **Fenrisian** in-universe — treat as **OOC placeholder**; your **grey + crimson** base still sells **Batavi**, not SW. |
| **2** | **Carcharodons Astra** (if in your menu) | Grim **predator**, industrial murder tone; no lunar roundel baggage. | **Shark**, not wolf — good mood match, weaker species match. |
| **3** | **Iron Hands** / **cog** options | **Forge-world steel** mood matches Noviomagus industry. | No lupine cue — you rely on **paint** + headcanon. |
| **Avoid (for emblem slot)** | Badges that are **mostly red** (some BA successors) | You already spend **Mephiston Red** on trim; double-red icons **melt** at distance. | OK for experiments; weak as **primary shoulder read**. |

**Practical rule:** Pick **one** stand-in wolf (usually **Space Wolves**), lock it, and **do not** rewrite Chapter lore to match Fenris kits — this file stays **facsimile**.

### 1.2 Execution checklist

- **Operations → Armouring Hall → Edit armor → Astartes Chapters** (tab names shift with patches — hunt for chapter / heraldry editor).
- Set **primary** to the **coolest neutral grey** (avoid blue-tint if it reads Ultramarine).
- Set **secondary / trim / detail** to the **deepest red** available (not orange-pink).
- **Emblem:** scroll **every** wolf-adjacent option; pick what reads **head-on** at **thumbnail** size (tabletop legibility test). Then set **chest** and **kneecaps** per §1.4 (do not stack two competing wolves).
- Repeat per **armor chassis** you play (Intercessor vs heavier patterns — pieces sometimes reset rules).
- Save **ten** Astartes-mod presets (suggestion — see §1A.2): `BATAVI-STERN-SILENCE`, `BATAVI-ASSL-LINE`, `BATAVI-REIV-SHADOW`, `BATAVI-BLADE-STASIS`, `BATAVI-ELIM-SHADOW`, `BATAVI-DEVS-NULL`, `BATAVI-TECH-FORGE`, `BATAVI-TERM-LINE`, `BATAVI-CHAP-RECL`, `BATAVI-APO-MED` plus optional `BATAVI-DW-TEST`.

### 1.3 Validation (5 minutes)

- **Armouring Hall lighting** — looks grey + red, not silver + pink.  
- **Operations deploy screen** — squad still reads correctly (some maps wash colors).  
- **Photo pass:** capture one screenshot per preset; compare side-by-side with `lore-images/chapter-seal-canonical.png` (expect **facsimile**, not match).

**Acceptance:** You would **recognize** the chapter in a random queue without reading the name.

### 1.4 Icon placement — vanilla vs Astartes mod (shoulders, chest, kneecaps)

Armouring Hall **names shift** by patch (e.g. **Greaves**, **Knee**, **Leg detail**). Treat the column below as **intent**; hunt the closest slot in your UI.

**Rule of three reads:** (1) **Shoulder** = chapter identity (wolf stand-in). (2) **Chest** = Imperial / minimal (do not compete with the wolf). (3) **Kneecaps** = **tertiary** discipline — **plain** default; add **order / cohort** flavor only when it stays readable at **thumbnail** distance.

| Body slot | Batavi job | Vanilla (stock Armouring Hall) | Astartes mod (use when the pack exposes extras) |
| --------- | ---------- | ------------------------------ | ------------------------------------------------ |
| **Right pauldron** (primary heraldry) | **Main** chapter read + cohort **paint** (ivory / black / gunmetal / cobalt) | **§1.1b:** **Space Wolves** wolf (or §1.1b alt) as **Batav Wolf** placeholder. Keep **field** grey or match shoulder base so **trim** stays **Mephiston Red** story. | Prefer the mod’s **sharpest frontal wolf / snarling head** if it beats vanilla clarity; still **grey + crimson** chapter scheme on metal. |
| **Left pauldron** | Balance / asymmetry | **Plain**, **mirror** right (if you want symmetry), **Deathwatch** small quarter if doing Watch test (§3), or **Aquila**-adjacent chapter badge — **never** a second busy wolf. | Mod **mk / company** studs OK if **low noise**. |
| **Chest** | Imperial loyalty, not brand competition | **Aquila** / **minimal eagle** / **plain** plate. Avoid **large** chapter roundel (fights the shoulder wolf). | Mod **purity scrolls / oath parchment** only if **muted** (dark metal + thin relief). |
| **Kneecaps** (both legs) | **Discipline**; optional order cue | **Default:** **plain greaves** or **simple studs / kill-mark** — **no** full second wolf (muddies silhouette). | **Techmarine:** mod **cog / gear** knee if present. **Chaplain:** small **skull / bone** chip. **Apothecary:** tiny **helix / medicae** mark if present. **Nullity (Devastator):** optional **chain link** or **hourglass** class icon **only** if stock offers it and stays small. **Shadows (Reiver / Eliminator):** keep knees **cleaner** than line (stealth read). |

**Cohort stripe vs icon:** Specialty cohort identity should land in **right pauldron color** and **trim** first; **kneecaps** stay **subordinate** so **Silence ivory** does not become “white knee decals everywhere.”

**Quick reference — ten-class knee / chest bias (Astartes mod):**

| Preset | Kneecaps (first choice) | Chest (first choice) |
| ------ | ----------------------- | -------------------- |
| Sternguard (Silence) | Plain or **minimal stud** | Aquila |
| Assault (line) | Stud / kill-mark | Aquila |
| Reiver / Eliminator (Shadows) | **Plain** | Plain or Aquila (low relief) |
| Bladeguard (Stasis) | Stud / **fist** motif if available | Aquila |
| Devastator (Nullity) | Plain + optional **tiny** chain/hourglass | Aquila |
| Techmarine | **Cog / gear** | Aquila or **mechanicus** plate if mod adds |
| Terminator (line) | **Heavy stud** / Crux pattern if offered | Aquila |
| Chaplain | **Skull / bone** | **Skull rosette** / chapel plate if mod adds |
| Apothecary | **Helix / medicae** | Plain + **white** chest cross only if subtle |

**Vanilla-only co-op:** If the mod is off, apply the **same** table but only icons the **base game** lists; **kneecaps** almost always should stay **plain** for Batavi legibility.

---

## 1A. Class → Batavi function → livery (worksheet)

**Cohort colors (right pauldron accent):** **Silence** ivory · **Shadows** matte black · **Stasis** gunmetal · **Nullity** cobalt (keep cobalt **small** — see §3).

### 1A.1 Vanilla SM2 Operations (reference only)

If you ever run **stock** Operations without the class pack, use this **six-role** map (same logic as earlier drafts):

| SM2 class | Batavi function | Cohort / livery read |
| --------- | ---------------- | -------------------- |
| **Tactical** | Telemetry / vulnerability marking — **Silence**-style pattern work | **Silence** (ivory) |
| **Sniper** | Long kill-box — **Shadows** | **Shadows** (black) |
| **Bulwark** | Shield + banner — **Stasis** hold | **Stasis** (gunmetal) |
| **Heavy** | Firebase — **Nullity**-adjacent heavy support | **Nullity** (cobalt accent) |
| **Assault** | Jump shock — **Ruin** / Suppression line | **Pure line** (grey + crimson) |
| **Vanguard** | Grapnel shock — line | **Pure line** |

### 1A.2 Astartes mod — UI class tabs (primary)

*Tab order as shown in the mod bar:* **Sternguard · Assault · Reiver · Bladeguard · Eliminator · Devastator · Techmarine · Terminator · Chaplain · Apothecary.*

| Astartes class | Batavi function (lore) | Livery / order read |
| -------------- | ---------------------- | ------------------- |
| **Sternguard** | Veteran **special-issue** core — disciplined bolter geometry, *Strategium* “right tool” mindset; closest mod kit to **Silence** counter-intel / procedure. | **Silence** — **ivory** right pauldron. |
| **Assault** | Jump-pack **shock** and mass melee — **Ruin** / open-field **Suppression** line. | **Pure line** — grey + crimson only (no cohort right pauldron). |
| **Reiver** | **Grav**-leaning infiltration, knives, phobos mood — **Shadows** cohort (close/mid stalk). | **Shadows** — **matte black** right pauldron. |
| **Bladeguard** | Shield + blade elite — **Iron Wall** interior lock; matches **Stasis** “closed fist / gladius” icon. | **Stasis** — **gunmetal** right pauldron. |
| **Eliminator** | Long-range **remove** and camo lanes — still **Shadows** in Chapter terms (sniper cell of the same cohort fantasy as Reiver). | **Shadows** — same **black** pauldron code as **Reiver** (two kits, one cohort stripe). |
| **Devastator** | **Firebase** and siege output — pair with **Nullity** *flavor* (Oblivion-adjacent suppression; optional null-rod melee if the mod offers it). | **Nullity** — **cobalt** accent, controlled. |
| **Techmarine** | **Armourium** / forge brother — Kadmos’s world (cables, auspex, *Machine Spirit* etiquette). | Grey + crimson + **mechanicus** trim / bronze arm **if** the editor allows (see [`dossier-kadmos.md`](personae-command-index/character-dossiers/council-orders/dossier-kadmos.md)). |
| **Terminator** | **Indomitor** / first-wall siege weight — not a cohort slot; reads as **line** First Company hammer. | **Pure line** — heavier grey, extra crimson trim acceptable; no cohort right pauldron. |
| **Chaplain** | ***Reclusiam*** / **Varro** network — rite, skull law, *Axiom* speech. | Ministerial read: **ashen** or **black** chapel elements **without** drowning Batavi grey–crimson; ***Codex* death-skull** default — **Executor** wolf-skull **only** for **Varro** or ***licentia lupina*** bearers. |
| **Apothecary** | ***Medicinae*** / **Drusus** network — extract, triage, *Narthecium* calm. | **Clinical white** on **arm + helm** (and pack) like Drusus’s distinction; rest grey + crimson. |

**Cohort count:** You still have **exactly one cohort *stripe* color** for **Silence / Stasis / Nullity**, and **one** for **Shadows** shared by **Reiver + Eliminator** (two different mod kits, same cohort fiction).

**Deathwatch:** Painting **all ten** in Watch black is a **loan / Steppenwolf** squad fantasy — valid OOC; not home **Vexillatio** livery; see §3.

---

## 2. Mods — pick your lane

### 2.1 Cosmetic-first (recommended if you still play online)

- Search Nexus for **heraldry**, **decal**, **armor texture**, **color** — prioritize mods that **only** touch cosmetics.
- Read **Posts** tab for **your exact patch** before installing.
- Install **one mod at a time**; launch → verify → next.

### 2.2 Astartes Overhaul–class packs (gameplay + cosmetics)

Large packs (community often names **Astartes Overhaul** or successors) may add **metallic paints**, **extra decals**, **helmet variants**, **weapon skins**, and also **rebalance** PvE/PvP. Treat them as a **fork**:

- Read the mod **description + required files + conflicts**.  
- Expect **save compatibility** and **multiplayer** questions — follow author guidance.  
- If you only wanted **colors**, check whether a **lite** or **cosmetic-only** extra exists from the same author.

**Acceptance:** You consciously chose **either** cosmetic-only **or** full overhaul; you know which modes you can still play.

---

## 3. Batavi-specific optional slots

- **Iron Guard / siege** fantasy: favour **starker grey**, minimal bling, **no** gold primary (keeps industrial read).  
- **Steppenwolf / Deathwatch** fantasy: use your **Deathwatch policy** doc — **Watch black** + **Chapter pauldron** if the editor allows split schemes; otherwise fake with **black primary** and **red trim** on one shoulder only if the UI permits asymmetry.  
- **Librarian / Nullity** (only if you enjoy RP): *optional* blue accent **on a small part** — do **not** let it drown crimson/grey.

---

## 4. Custom icon / texture pipeline (when vanilla + Nexus are not enough)

- Hand **2D seal** first → `[visual-identity-paint-guide.md](visual-identity-paint-guide.md)` + PNG reference.  
- **Or** commission a modder → `[HERALDRY-INGAME-PLAN.md](HERALDRY-INGAME-PLAN.md)` + `[lore-images/heraldry-ingame-export-spec.md](lore-images/heraldry-ingame-export-spec.md)` (paths, TGA slot swap, patch caveats).  
- Treat as **advanced** — only after §1 acceptance (or parallel if you stay on vanilla for play).

---

## 5. Risks & scope control

- **Patch churn:** SM2 updates **break** texture hooks — keep a **vanilla preset** export/screenshot as rollback.  
- **Online fairness:** assume **any** non-cosmetic mod is **PvP-unsafe** unless author states otherwise.  
- **Lore drift:** in-game wolf decals ≠ `chapter-seal-canonical.png`; keep **“game facsimile”** in your head so you do not rewrite lore to match a stock asset.

---

## 6. Done = for this backlog slice

Check off `**TOMORROW-TODOS.md`** when:

1. You have **one saved vanilla preset** you are happy to play, **or**
2. You have a **documented blocker** (platform, patch, policy) and a **dated** next action.

### Progress log (optional — fill as you go)


| Date       | Game patch     | Action                                          | Result                                        |
| ---------- | -------------- | ----------------------------------------------- | --------------------------------------------- |
| 2026-03-28 | latest (Steam) | User confirmed **latest game** + **latest mod** | Stack aligned; re-verify after next SM2 patch |


---

*Last reviewed: 2026-03-28. §1.4 vanilla vs mod icon slots (incl. kneecaps); §1A.2 ten-class map. §4 — modder path for custom heraldry.*