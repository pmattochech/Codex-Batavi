# Notion sync (tag-triggered)

Pushes **Markdown under `codex-batavi/`** to Notion when you publish a **git tag** matching `v*` (for example `v1.4.0`). Only files that **changed between the previous tag and the new tag** are synced (plus **full import** on the **first** tag, when no earlier `v*` tag exists).

### Folder hierarchy in Notion

The sync **mirrors directories** under your path prefix:

- `NOTION_PARENT_PAGE_ID` = workspace “root” (e.g. a page named *Codex*).
- The first folder (e.g. `codex-batavi`) becomes a **child page** of that root, titled **`NOTION_ROOT_FOLDER_TITLE`** (default **Codex Batavi**).
- Each deeper folder (`chronicles`, `00-foundation-war`, …) is a **Nested page** under its parent folder.
- Each `.md` file is a **subpage of its immediate folder** (not all siblings under the root).

Titles:

- **Files**: taken from the **first Markdown `#` heading** when present (stripped of `*…*` / `**…**`), otherwise a beautified **Title Case** version of the filename (`chapter-34-lecture-in-vacuum` → `Chapter 34 Lecture in Vacuum`, with short words like *in*, *de*, *e* left lowercase when not first).
- **Folders**: beautified **last segment** of the path (`00-foundation-war` → `00 Foundation War`; `enciclopedia-biologica-e-bestiario` → `Enciclopedia Biologica e Bestiario`).
- The **first `#` line is omitted from the page body** so the title is not duplicated as a heading block.

If you already synced with the **flat** layout, the next run **creates folder pages** and **moves** file pages under the correct folder.

**Important:** Reparenting uses Notion’s **`POST /v1/pages/{page_id}/move`** endpoint — **not** `PATCH` (which does not change parent). The script sets **`NOTION_API_VERSION`** (default `2025-09-03`) on all API calls. If move returns **404**, set repository variable **`NOTION_API_VERSION`** to a newer value from [Notion’s version list](https://developers.notion.com/reference/versioning) (e.g. `2026-03-11`). If move still fails, the script **archives** the old page and **creates** a new one under the right folder (same title/body; Notion URL changes).

## Git tags: who creates them?

**Git does not create version tags by itself.** A tag is just a named pointer to a commit; nothing in stock Git analyzes “kind of update” or bumps semver.

Typical options:

| Approach | How it works |
|----------|----------------|
| **Manual** | `git tag -a v1.2.0 -m "Release notes"` then `git push origin v1.2.0` |
| **GitHub Release UI** | Creating a release can create the tag for you |
| **Automation** | **semantic-release**, **release-please**, or CI that reads [Conventional Commits](https://www.conventionalcommits.org/) and opens a PR / tags on merge |

For this repo, the workflow runs on **`push` of tags `v*`**, so **you (or a bot) must create and push that tag** when you want a Notion publish.

## Notion limits (important)

Notion documents an integration limit of **about 3 requests per second on average** (burst allowed); over-limit responses use **HTTP 429** and often **`Retry-After`**. The sync script **throttles** between calls and **retries** on 429.

There is **no documented fixed “monthly cap”** in the same sense as some other APIs; staying under the per-second average and handling 429 is what matters. Very large first-time imports (many files) will take time because each page costs several API calls.

## One-time Notion setup

1. Create an **internal integration** at [notion.so/my-integrations](https://www.notion.so/my-integrations) and copy the **secret**.
2. In your Notion workspace, create (or pick):
   - A **parent page** where Codex child pages will live.
   - A **News** page (empty is fine): the workflow **appends** a dated **Release `v…`** section listing added/updated/deleted/renamed paths for that tag.
3. **Share both pages** with the integration (**Invite** the integration or add it via connections), with **full access** as required for editing.
4. Copy each page’s ID from its URL:  
   `https://www.notion.so/<workspace>/<TITLE>-<PAGE_ID>` (32 hex characters, with hyphens when using the API).

### Title property name

Subpages usually use the default **Title** property, which maps to API property name **`title`**. If your parent uses a different schema, set repository variable **`NOTION_TITLE_PROPERTY`** (workflow passes it via env — add to workflow `env` if you use vars).

## GitHub repository configuration

Add **secrets** (Settings → Secrets and variables → Actions):

| Secret | Purpose |
|--------|---------|
| `NOTION_TOKEN` | Integration secret |
| `NOTION_PARENT_PAGE_ID` | Parent page for Codex synced pages |
| `NOTION_NEWS_PAGE_ID` | News page (changelog append target) |

Optional **variables**:

| Variable | Default | Purpose |
|---------|---------|---------|
| `NOTION_PATH_PREFIX` | `codex-batavi` | Repo-relative prefix of Markdown to sync |
| `NOTION_TITLE_PROPERTY` | `title` | Notion title property API name |
| `NOTION_ROOT_FOLDER_TITLE` | `Codex Batavi` | Title for the page representing the **prefix root folder** (`codex-batavi`) |
| `NOTION_API_VERSION` | `2025-09-03` | Notion API version header (must support **Move page** for reparenting) |
| `NOTION_FORCE_FULL_SYNC` | *(empty)* | Set to `1` or `true` to sync **every** tracked `.md` under the prefix for that run (ignores tag diff). Use after pipeline/script fixes so all pages reparent without dummy content commits. Remove or clear after the run. |

## State file: `page-map.json`

- **Files**: maps `path/to/file.md` → **Notion page id**.
- **Folders**: maps `dir:path/to/folder` → **Notion page id** (keys are always POSIX paths under the prefix, e.g. `dir:codex-batavi/chronicles/00-foundation-war`).
- The Action **commits** updates to `tools/notion-sync/page-map.json` after a successful sync (message contains `[skip ci]` — adjust if you use other CI triggers).
- If branch protection blocks `github-actions` pushes, use a **PAT** with `contents: write` or relax rules for this path.

## Local run

From repo root, with secrets as env vars:

```bash
cd tools/notion-sync
npm install
TAG_REF=refs/tags/v1.0.0 NOTION_TOKEN=secret NOTION_PARENT_PAGE_ID=... NOTION_NEWS_PAGE_ID=... node sync.mjs
```

(`sync.mjs` uses the parent of `tools/notion-sync` as the git repo root.)

### Test with a **new local tag** (no push)

Use this when you want the same behavior as CI (`currentTag` + `previousTag` for News), but on your machine:

```bash
cd /path/to/Codex-Batavi
git status   # commit or stash so HEAD is clean if you like
git pull --tags
# pick a new version not already used, e.g. v0.0.3-notion-test
git tag -a v0.0.3-notion-test -m "Notion sync test"
cd tools/notion-sync
npm install
export NOTION_TOKEN="secret_..."
export NOTION_PARENT_PAGE_ID="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
export NOTION_NEWS_PAGE_ID="yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy"
export TAG_REF="refs/tags/v0.0.3-notion-test"
# optional: reparent every md without changing file contents
export NOTION_FORCE_FULL_SYNC=1
node sync.mjs
```

Then either delete the test tag (`git tag -d v0.0.3-notion-test`) or push it only when satisfied (`git push origin v0.0.3-notion-test`).

**CI note:** A **new tag on GitHub** only syncs Markdown files that **changed between that tag and the previous `v*` tag**. If you only changed `tools/notion-sync/` and no `codex-batavi/**/*.md`, the workflow would update almost nothing. For a **one-shot full reparent**, set repository variable **`NOTION_FORCE_FULL_SYNC`** to `1` for that release, push the tag, then **clear** the variable so later tags stay incremental again.

## Markdown support (current)

The converter is **intentionally small**: headings `#`–`###` and paragraphs. Complex Markdown (tables, links, nested lists, code fences) is flattened into paragraph text or can be extended later (e.g. Notion block types or a richer parser).

## Rename and delete behavior

- **Delete**: path removed in git → Notion page **archived**, entry removed from `page-map.json`.
- **Rename** (git similarity detect): map entry moved to new path; title updated; body refreshed from disk.

Adjust rename sensitivity in `sync.mjs` (`-M15%` in `git diff`).
