# Custom heraldry in-game — research plan (backlog / not canon)

**Goal:** Get the **chapter icon** into *Space Marine 2* **beyond** stock Armouring Hall decals — i.e. the **bitmap** from **[`lore-images/chapter-seal-canonical.png`](lore-images/chapter-seal-canonical.png)** (that PNG **is** the seal **and** the icon; no separate game-only asset).

**Prerequisites:** [`SM2-ASTARTES-MOD-PLAN.md`](SM2-ASTARTES-MOD-PLAN.md) (vanilla + mod stack). **Colour law:** [`visual-identity-paint-guide.md`](visual-identity-paint-guide.md). **Export / Anubian folder workflow:** [`lore-images/heraldry-ingame-export-spec.md`](lore-images/heraldry-ingame-export-spec.md). *Optional prompts for future variants:* [`lore-images/ai-prompts-chapter-insignia.md`](lore-images/ai-prompts-chapter-insignia.md).

**Execution status (owner):** Sessions B–C **deferred** — hand a modder this plan + [`lore-images/heraldry-ingame-export-spec.md`](lore-images/heraldry-ingame-export-spec.md) + canonical raster [`lore-images/chapter-seal-canonical.png`](lore-images/chapter-seal-canonical.png). You keep vanilla/Nexus presets per SM2 plan until they deliver.

---

## START HERE — execution track

Work **in order**; do not skip §0 if you have not confirmed a **current** packaging path for your patch.

### Replacement mods (no new decal slots) — **yes, this works**

SM2’s Armouring Hall only has **so many** baked decal channels. Almost all heraldry mods **swap textures** for an **existing** chapter / pattern slot (e.g. “Night Lords” icon in the UI still says Night Lords, but the **bitmap** is your art). That is **normal** and is exactly how you get a custom badge:

1. Pick a **vanilla slot you can live with repurposing** (one you never use in multiplayer identity, or you mentally relabel “that’s my Batavi stand-in”).  
2. Copy the mod’s **file names, paths, and DDS layout**; replace **only** the image bytes with your Batavi export (same dimensions / format).  
3. **Helmet** vs **shoulder** mods hit **different UVs** — you may want **one shoulder template** + optional **helmet** mods later (see §6 analysed list).

**Publishing:** several Nexus authors require **permission** to redistribute modified versions; **personal** swaps are between you and the author’s license text.

### Session A — Discover (same day, ~30–60 min)

- **A1.** Note **exact game build** (main menu or Steam) in the **progress log** at the bottom of this file.  
- **A2.** On Nexus `warhammer40000spacemarine2`, search: `heraldry`, `decal`, `armor texture`, `unlock`, `custom chapter`. Sort by **last updated**.  
- **A3.** Pick **one** mod that **replaces** an existing decal (or helmet paint) and documents **install layout** / includes a **file tree** you can mirror. **New slots are uncommon** — replacement **is** the pipeline. Read **Posts** for your patch before downloading.  
- **A4.** Record in §6 table: **mod name**, **URL**, **version**, **what it replaces**. That mod is your **template** for Session C.

### Session B — Master 2D (artist block)

- **B1.** Open **[`lore-images/chapter-seal-canonical.png`](lore-images/chapter-seal-canonical.png)** only — fit to **1024×1024**, then export **RGBA TGA** as `d_shldr_night_lords_01.tga` and `d_shldr_night_lords_02.tga` per [`heraldry-ingame-export-spec.md`](lore-images/heraldry-ingame-export-spec.md) §1 (Anubian `LSHLDR` / `RSHLDR`).  
- **B2.** Handle **`_cc`** as in spec §1c (duplicate colour or keep stock mips first).  
- **B3.** Pass **thumbnail** check in spec §2.

### Session C — Pack + inject (blocked until B done)

- **C1.** Copy your new **`d_shldr_night_lords_01.tga` / `02.tga`** (and `_cc` if updated) into **`LSHLDR` / `RSHLDR`**, alongside the existing **`.pct_mip`** files from the template.  
- **C2.** Inject into game **`default_pct_0`** → **`pct/`** per [`heraldry-ingame-export-spec.md`](lore-images/heraldry-ingame-export-spec.md) §3.1; run **PakCacher**.  
- **C3.** Launch game (per **SM2 plan**); validate per **§5** below. If visuals break, revisit **mip regeneration** note in §3.1.

---

## 0. Reality check (SM2 ≥ 7.0)

Community write-ups that describe **direct `.pak` hex edits**, **byte-identical file replacement**, and **PackCacher** workflows were written for **earlier** SM2 builds. The **chemguy1611 / SM2-Modding** README explicitly notes instructions are **“essentially obsolete after game version 7.0.”** Treat older tutorials as **historical** until you confirm a **current** method for **your** patch.

**Your action:** Before investing hours, skim **Nexus Posts** on any texture/heraldry mod updated **after** your game version, and any **Discord / GitHub** linked from those mods.

---

## 1. Asset targets (what you are trying to replace)

- Identify **which in-game asset** carries the **shoulder / chest** decal you want (varies by armor set). This usually means finding a mod or tool that **lists** texture paths / material parameters, or studying an **existing heraldry mod** as a template.
- Record **resolution**, **color space**, and **compression** the game expects (often **BC7** / **BC3**-class DDS for UE titles — **verify** for SM2 on current tools).

---

## 2. Master 2D (before DDS)

Produce one **authoritative** 2D file (for you or a commission):

- **Square** canvas, **power-of-two** (e.g. 512×512, 1024×1024) — exact size per template mod / tool you follow.
- **Wolf + roundel** match `[chapter-seal-canonical.png](lore-images/chapter-seal-canonical.png)` (105° lens triangle, black wolf on crimson field, etc.).
- Leave **alpha** clean if the decal uses transparency on pauldron metal.
- Optional backlog: **hand-painted** master first — `[TOMORROW-TODOS.md](TOMORROW-TODOS.md)` **Hand-made visuals** (no generative-AI-first rule in your workflow).

**Tools (generic):** Krita / GIMP / Photoshop; export to **PNG** before GPU compression.

---

## 3. GPU texture export

- Install a **DDS / BCn** exporter compatible with your editor (or use **Visual Studio** / **texconv** / **Compressonator** — pick one pipeline and stay consistent).
- Export a **mipchain** if the template mod requires it (many UE games do).
- **Name and path** must match whatever the **current** SM2 modding method expects (copy from a **working** mod’s folder layout).

---

## 4. Injection / packaging (patch-dependent)

**Do not commit to one technique until §0 is satisfied.** Likely branches:

- **A. Mod framework** — repack into the format **current** community tools use (may differ from pre-7.0 `.pak` hex tricks).
- **B. Replace-in-place** — if a loader or mod manager injects loose files, follow **that** tool’s docs (e.g. Nexus **Vortex** extension for SM2 — verify it still matches your build).
- **C. Ship as a small Nexus mod** — if you publish, bundle **only** your textures + clear install notes; respect **Focus / Saber** EULA and **Nexus** rules.

---

## 5. Validation

- **Armouring Hall / ops** — decal reads **correctly** in **neutral** and **warm** lighting (albedo can look wrong under forge oranges).
- **Normal distance** — silhouette matches frontal-wolf identity at **thumbnail** size.
- **Regression:** game patch → repeat §0 and re-test.

---

## 6. References to bookmark (living list — update as ecosystem moves)

| Resource | Use |
|----------|-----|
| `https://www.nexusmods.com/warhammer40000spacemarine2` | Find **recent** heraldry / texture mods; read **Posts** for patch compatibility |
| `https://github.com/chemguy1611/sm2-modding` | **Historical** pak workflow; **obsolete post-7.0** per author — compare to new guides |
| **Template in use** | **Anubian Night Lords shoulders** — local folder `Anubian Decal` (`LSHLDR` / `RSHLDR`); Nexus pattern per [mod 205](https://www.nexusmods.com/warhammer40000spacemarine2/mods/205) |

### Analysed Nexus mods (Session A — user shortlist)

Use this to pick a **template**. **PakCacher** ([mod 65](https://www.nexusmods.com/warhammer40000spacemarine2/mods/65)) is listed as a **requirement** on several; align with [`SM2-ASTARTES-MOD-PLAN.md`](SM2-ASTARTES-MOD-PLAN.md).

| Mod ID | Name | What it does | Batavi pipeline notes |
|--------|------|----------------|------------------------|
| [181](https://www.nexusmods.com/warhammer40000spacemarine2/mods/181) | **Halo Decal Replacement v1** | Replaces **several** vanilla chapter decals with Halo art (maps: e.g. Iron Warriors→UNSC, Imperial Fists→ODST, Iron Hands→Spartan helm, Death Guard, Exorcists…) | **Good map** of *which* stock slots exist; **PakCacher** required. Permission needed to republish derivatives. |
| [205](https://www.nexusmods.com/warhammer40000spacemarine2/mods/205) | **Ordo Necromantium Decal** | Replaces **Night Lords** decals on **left and right shoulders** with a homebrew chapter | **Strong shoulder template**: one faction slot → your PNG/DDS in same paths. **PakCacher** required. |
| [423](https://www.nexusmods.com/warhammer40000spacemarine2/mods/423) | **Carcharodons Tactical Helmet Decal** | **Tactical** helmet only; full vs grille-teeth variants | **Helmet UV**, not pauldron seal — use for **secondary** branding; updated **Mar 2026**. |
| [359](https://www.nexusmods.com/warhammer40000spacemarine2/mods/359) | **Black Templar Helmet Decals** | **Bulwark** helmet — two-sided paint + line scheme | Again **helmet** mesh; not a substitute for shoulder chapter icon. |
| [429](https://www.nexusmods.com/warhammer40000spacemarine2/mods/429) | **Carcharodons Exile Markings and Heraldry** | Exile markings; replaces **Raven Guard** decals with shark designs; **v0.1**, Vanguard exile markings only (WIP) | **Shoulder / RG slot** angle; author notes **merge** with Astartes Overhaul / other packs — good **advanced** reference; read **Posts** for your build. |
| [134](https://www.nexusmods.com/warhammer40000spacemarine2/mods/134) | **Two Thin Coats — Armour Colour Replacer** | Swaps **palette** / material colour definitions (Citadel-style renames), **not** a chapter badge bitmap | Complements **grey + red** paint job; **not** a replacement for Session B/C **decal** art. Requires **Astartes Overhaul 2.0** + **PakCacher** per Nexus page. |

**Practical pick for Batavi shoulder seal:** start from **[205](https://www.nexusmods.com/warhammer40000spacemarine2/mods/205)** (clear “both shoulders = one vanilla faction”) or **[429](https://www.nexusmods.com/warhammer40000spacemarine2/mods/429)** if you prefer repurposing **Raven Guard** slots and can handle merge notes — then overwrite textures with your wolf after matching size/format.


---

## 7. Done for this backlog slice

- You either have a **working custom decal** in-game, **or**  
- A **one-paragraph blocker** (e.g. “7.x closed asset path; waiting on tool X”) with date and link.

### Progress log (fill as you execute)


| Date       | Game patch  | Session completed | Notes / template mod |
| ---------- | ----------- | ----------------- | -------------------- |
| 30/03/2026 | hotfix 12.2 | **A** (template captured) | **Anubian Decal** extract: `LSHLDR` + `RSHLDR`, Night Lords slots `d_shldr_night_lords_01/02` + `_cc` + `.pct_mip` mips → see [`lore-images/heraldry-ingame-export-spec.md`](lore-images/heraldry-ingame-export-spec.md) §3.1 |


---

*Last reviewed: 2026-03-28. **Execution track** added; B–C **deferred** to modder handoff.*