# Foundation War — novel structure pass (instructions)

**Purpose:** One-time **layout repair** across all **39** `chapter.md` files — convert scaffold-era **sectioned report** shape into **single novel chapters** without changing canon, plot order, or voice.

**Authority:** [`.cursorrules`](../../.cursorrules) §0.1 (chronicle unit structure) · depth/coda contract: [`PROSE-SCAFFOLD.md`](PROSE-SCAFFOLD.md) · read order: [`INDEX.md`](INDEX.md).

**Scope:** `codex-batavi/chronicles/foundation-war/**/chapter.md` only. **Do not** apply this pass to other saga folders unless the owner opens a separate lane.

**Work order:** **Chapter 1 → 38**, then **Q0** `distress-vector` (or Q0 first if owner prefers — default **mud-gospel** onward). **One file per assigned edit** unless owner orders a batch.

---

## 1. What this pass fixes

| Remove from **body** | Replace with |
|----------------------|--------------|
| Roman section headers (`## I.` … `## VIII.`, any titled `##` scene label) | **Nothing** — delete the header line only; keep following paragraphs |
| `## Annex:` / `## Part` / internal “chapter” headings | Prose lead-in (see §4) |
| Horizontal rules (`---`) **between scenes** in the narrative | **Prose bridge** in the **opening sentence(s)** of the next paragraph block |
| Extra blank “stanzas” left after header removal | Normal **single** blank line between paragraphs |

| **Keep** (do not delete) |
|--------------------------|
| Top **metadata / filing block** (`#` title, Foundation War · Chapter N, Strategium anchor, geography lock, chronicle law, precedent) |
| **One** `---` **immediately after** metadata (paratext fence before body) |
| All **existing story prose** — sentences, dialogue, companion names, stamp lines, *Interest* / *Always owed* |
| Closing handoff: optional **one** `---` before *End of Chapter* / *Next:* only |
| ABNT em-dash dialogue; documentary `"..."` only where already used for records |

This pass is **structure only**. It is **not** a density pass, retcon, or line-edit sweep unless the owner adds that in the same order.

---

## 2. Prose bridges — how scene changes must work

Scene, time, place, and POV shifts must read like a **novel**: the **next paragraph carries the turn** in its first lines. The reader should never need a rule line or a section title to know where or when they are.

### Techniques (use what fits the existing beat)

1. **Temporal hinge** — *Hours later…* / *By the time the frigates…* / *When the ribbon spat them out…*
2. **Spatial hinge** — *On the needle-bridge…* / *Below the wreck camps…* / *In the lighthouse gallery…*
3. **Sensory hinge** — rain, vox static, smell, light change tied to new location
4. **Character hinge** — name + action in first line (*Kadmos had already…* / *Drusus did not look up when…*)
5. **Institutional hinge** — slate, order, auspex read that forces a cut without a banner

### Quality bar

- **One paragraph** should usually suffice; two short paragraphs only if the jump is large (e.g. warp → surface).
- **Do not** announce the scene like a wiki (*“Scene: Sallow Morrow”*).
- **Do not** paste the old section title into the prose unless it was already spoken or filed in-universe (*primum incertum* as a filed term is fine; *“Section II: Sallow Morrow”* is not).
- **Preserve momentum** — the last sentence before a cut and the first sentence after should **pull**, not stall. If removing `---` leaves a hard bump, **add or tweak one bridge sentence**; do not rewrite the whole scene.

### Example (pattern only — Ch. 1 *Mud Gospel*)

**Before (scaffold):**

```markdown
Sentence had aged poorly in hours since.

---

## II. Collision — CV Hour Zero

Fleet **fell** out of warp…
```

**After (novel):**

```markdown
Sentence had aged poorly in hours since.

Fleet **fell** out of warp way a tool falls when the hand forgets it — not in parade formation, not with layered airspace and *Codex* corridors painted on hololiths, but in **staggered** realspace shock that tore escort frigates into questions the void did not answer.
```

If the jump is large, a single hinge line is enough:

```markdown
Sentence had aged poorly in hours since.

The ribbon’s math finally **broke** into collision — CV hour zero, staggered realspace, escort frigates torn into questions the void did not answer.
```

---

## 3. Per-file workflow (checklist)

Execute in order for each assigned `chapter.md`:

1. [ ] Read full file once (know where sections and `---` rules sit).
2. [ ] **Strip** every body `## …` section header (I–VIII, Annex, Part, etc.).
3. [ ] **Remove** every in-body `---` (not the header fence; not the optional footer fence before *End* / *Next:*).
4. [ ] **Bridge** each former section boundary with prose (§2); adjust **only** as much text as needed for flow.
5. [ ] **Verify** metadata block + single header `---` intact.
6. [ ] **Verify** closing handoff unchanged in **meaning** (*Interest* → stamp → *Always owed* → *Next:*).
7. [ ] **ABNT** spot-check on any dialogue touched by bridge edits.
8. [ ] **Self-audit** (§5) before save.

**Do not** in the same pass unless ordered: companion-tail dedupe, new scenes, chronology retcon, glossary renames.

---

## 4. Special cases

### Q0 `distress-vector`

- Has `## Annex: …` blocks (documentary inserts). **Remove** the `## Annex:` headers; lead in with prose (*The sarcophagus transcript, when Kadmos finally extracted it, ran:* …) or fold the block into narrative frame already present.
- `"..."` inside annex/record text stays **documentary** per `.cursorrules` §0.1.

### Documentary inserts mid-chapter

Registry excerpts, slate bullets, docket lists: **keep content**; drop wrapper headings; one sentence of **in-world framing** before the block if the cut would otherwise feel abrupt.

### Companion / coda block

Late **Merit**, **Valerius**, **Drusus**, etc. one-liners stay **after** narrative lands — still **no** `## VIII.` label above them. *Interest collecting teeth before receipts.* remains the coda spine per `PROSE-SCAFFOLD.md`.

### Ch.35 / Ch.38 liturgy

Do not alter ***We hold anyway*** instrument rules or Ch.38 finale liturgy while stripping headers.

---

## 5. Self-audit before marking a file done

- [ ] **Zero** `## I.`–style (or any titled `##`) headers in the body.
- [ ] **Zero** `---` between scenes inside the narrative.
- [ ] Scene turns readable **without** referring to old section names.
- [ ] No new US/UK comma-tags on dialogue; em-dash rules preserved.
- [ ] *Next:* link still points to correct successor per [`INDEX.md`](INDEX.md).
- [ ] Diff is **mostly** deletions + small bridge inserts — if whole paragraphs were rewritten, stop and reconcile with owner.

---

## 6. Progress tracker (39 files)

Mark `[x]` when structure pass is complete for that slug.

| # | Slug | File | Done |
|---|------|------|:----:|
| 0 | distress-vector | `Q0-prelude/distress-vector/chapter.md` | [ ] |
| 1 | mud-gospel | `Q1-moon-hunt/mud-gospel/chapter.md` | [x] |
| 2 | the-arrangement | `Q1-moon-hunt/the-arrangement/chapter.md` | [x] |
| 3 | dog-logic | `Q1-moon-hunt/dog-logic/chapter.md` | [x] |
| 4 | seventy-two | `Q1-moon-hunt/seventy-two/chapter.md` | [x] |
| 5 | bait-doctrine | `Q1-moon-hunt/bait-doctrine/chapter.md` | [x] |
| 6 | mirror-routes | `Q1-moon-hunt/mirror-routes/chapter.md` | [x] |
| 7 | living-specimen | `Q1-moon-hunt/living-specimen/chapter.md` | [x] |
| 8 | cord-weight | `Q1-moon-hunt/cord-weight/chapter.md` | [x] |
| 9 | second-quarter-brief | `Q1-moon-hunt/second-quarter-brief/chapter.md` | [x] |
| 10 | inverted-hive | `Q2-inverted-war/inverted-hive/chapter.md` | [x] |
| 11 | output-quota | `Q2-inverted-war/output-quota/chapter.md` | [x] |
| 12 | ring-of-teeth | `Q2-inverted-war/ring-of-teeth/chapter.md` | [x] |
| 13 | flare-geometries | `Q2-inverted-war/flare-geometries/chapter.md` | [x] |
| 14 | brood-signature | `Q2-inverted-war/brood-signature/chapter.md` | [x] |
| 15 | exanimus-choir | `Q2-inverted-war/exanimus-choir/chapter.md` | [x] |
| 16 | glass-overture | `Q2-inverted-war/glass-overture/chapter.md` | [x] |
| 17 | tertius-anvil | `Q2-inverted-war/tertius-anvil/chapter.md` | [x] |
| 18 | years-eight-to-fifteen | `Q2-inverted-war/years-eight-to-fifteen/chapter.md` | [x] |
| 19 | gulf-deployment | `Q3-gulf-and-beast/gulf-deployment/chapter.md` | [x] |
| 20 | skin-debt | `Q3-gulf-and-beast/skin-debt/chapter.md` | [x] |
| 21 | bridge-saints | `Q3-gulf-and-beast/bridge-saints/chapter.md` | [x] |
| 22 | maw-exercise | `Q3-gulf-and-beast/maw-exercise/chapter.md` | [x] |
| 23 | dynasty-last-command | `Q3-gulf-and-beast/dynasty-last-command/chapter.md` | [x] |
| 24 | incus-still-burns | `Q3-gulf-and-beast/incus-still-burns/chapter.md` | [x] |
| 25 | the-beast-chapter | `Q3-gulf-and-beast/the-beast-chapter/chapter.md` | [x] |
| 26 | vitreus-bleed | `Q3-gulf-and-beast/vitreus-bleed/chapter.md` | [x] |
| 27 | half-chapter-still-standing | `Q3-gulf-and-beast/half-chapter-still-standing/chapter.md` | [ ] |
| 28 | forward-to-the-crown | `Q3-gulf-and-beast/forward-to-the-crown/chapter.md` | [ ] |
| 29 | estuary-doctrine | `Q4-der-batav/estuary-doctrine/chapter.md` | [ ] |
| 30 | tide-names | `Q4-der-batav/tide-names/chapter.md` | [ ] |
| 31 | mirror-brood | `Q4-der-batav/mirror-brood/chapter.md` | [ ] |
| 32 | prism-war | `Q4-der-batav/prism-war/chapter.md` | [ ] |
| 33 | halo-mouth | `Q4-der-batav/halo-mouth/chapter.md` | [ ] |
| 34 | lecture-in-vacuum | `Q4-der-batav/lecture-in-vacuum/chapter.md` | [ ] |
| 35 | we-hold-anyway | `Q4-der-batav/we-hold-anyway/chapter.md` | [ ] |
| 36 | the-core-refuses | `Q4-der-batav/the-core-refuses/chapter.md` | [ ] |
| 37 | der-batav-council | `Q4-der-batav/der-batav-council/chapter.md` | [ ] |
| 38 | instrumentum-solum | `Q4-der-batav/instrumentum-solum/chapter.md` | [ ] |

---

## 7. Commit note (when owner orders save)

Suggested message shape:

`Mud Gospel: novel structure pass (strip sections, prose scene bridges).`

One chapter per commit keeps review and rollback clean unless owner orders a quarter batch.
