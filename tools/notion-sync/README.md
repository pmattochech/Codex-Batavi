# Notion sync (local)

Syncs **Markdown under `codex-batavi/`** to Notion from your machine. **No GitHub Actions** — the script only talks to **Notion** and reads **git** for diffs; it never pushes to GitHub.

By default it uses **tag-to-tag** diff: only files that changed between the **previous** and **current** `v*` tag (see `TAG_REF`). Use **`NOTION_FORCE_FULL_SYNC=1`** in `.env` to sync every tracked `.md` once.

### Folder hierarchy & titles

- **Folders** → Notion folder pages; **each `.md`** → subpage of its folder.
- **File titles** from the first `#` heading when possible; **folder titles** from beautified slugs.
- Reparenting uses Notion **`POST /v1/pages/{id}/move`**. Set **`NOTION_API_VERSION`** (default `2025-09-03`) if you get move errors; try `2026-03-11` from [Notion versioning](https://developers.notion.com/reference/versioning).

## Configure: `.env`

1. Copy `cp .env.example .env`
2. Fill in values. **`tools/notion-sync/.env` is gitignored** — do not commit it.
3. **Share** your Notion parent page and News page with the integration ([My integrations](https://www.notion.so/my-integrations)).

| Variable | Required | Description |
|----------|----------|-------------|
| `NOTION_TOKEN` | yes | Integration secret |
| `NOTION_PARENT_PAGE_ID` | yes | Top parent page UUID (from URL) |
| `NOTION_NEWS_PAGE_ID` | yes | News / changelog page UUID |
| `TAG_REF` | yes* | e.g. `refs/tags/v1.0.0` — must exist in local git for diff math |
| `NOTION_PATH_PREFIX` | no | Default `codex-batavi` |
| `NOTION_TITLE_PROPERTY` | no | Default `title` |
| `NOTION_ROOT_FOLDER_TITLE` | no | Default `Codex Batavi` |
| `NOTION_API_VERSION` | no | Default `2025-09-03` |
| `NOTION_FORCE_FULL_SYNC` | no | `1` or `true` = sync all `.md` under prefix |

\*Or set `GITHUB_REF` instead of `TAG_REF` (e.g. in CI elsewhere).

## Run

```bash
cd tools/notion-sync
npm install
node sync.mjs
```

`sync.mjs` resolves the **git repo root** as the parent of `tools/notion-sync` (your `Codex-Batavi` folder). Ensure `git tag -l` includes the tag named in `TAG_REF`.

## State: `page-map.json`

Maps repo paths and `dir:…` keys to Notion page IDs. Commit it to the repo if you want history shared across machines; otherwise keep it local only.

## Notion rate limits

About **3 requests/second** on average; the script throttles and retries **429** / `Retry-After`.

## Git tags

**Git does not auto-tag.** Create tags yourself, e.g. `git tag -a v1.0.0 -m "…"`.
