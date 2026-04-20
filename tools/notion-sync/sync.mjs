/**
 * Incremental Markdown → Notion sync (tag-to-tag git diff).
 * Mirrors repo folders as Notion pages; each .md file is a subpage of its folder.
 * Respects Notion ~3 req/s average: delay + Retry-After on 429.
 *
 * **Local-only:** loads `tools/notion-sync/.env` if present (does not push to GitHub).
 *
 * Env: NOTION_TOKEN, NOTION_PARENT_PAGE_ID, NOTION_NEWS_PAGE_ID, TAG_REF (or GITHUB_REF)
 * Optional: NOTION_PATH_PREFIX (default codex-batavi), NOTION_TITLE_PROPERTY (default title),
 *           NOTION_ROOT_FOLDER_TITLE (default "Codex Batavi" for the prefix root segment),
 *           NOTION_API_VERSION (default 2025-09-03) — must support POST /v1/pages/{id}/move for reparenting
 *           NOTION_FORCE_FULL_SYNC=1 — process all tracked .md under prefix (ignore tag diff; recovery / reparent-all)
 */

import fs from "fs";
import path from "path";
import { execSync } from "child_process";
import { Client } from "@notionhq/client";

const ROOT = process.cwd();

/** Load tools/notion-sync/.env — values only apply if not already set in the shell. */
function loadLocalEnv(rootDir) {
  const envPath = path.join(rootDir, ".env");
  if (!fs.existsSync(envPath)) return;
  const text = fs.readFileSync(envPath, "utf8");
  for (let line of text.split("\n")) {
    line = line.trim();
    if (!line || line.startsWith("#")) continue;
    const eq = line.indexOf("=");
    if (eq <= 0) continue;
    const key = line.slice(0, eq).trim();
    let val = line.slice(eq + 1).trim();
    if (
      (val.startsWith('"') && val.endsWith('"')) ||
      (val.startsWith("'") && val.endsWith("'"))
    ) {
      val = val.slice(1, -1);
    }
    if (process.env[key] === undefined || process.env[key] === "") {
      process.env[key] = val;
    }
  }
}

loadLocalEnv(ROOT);
const MAP_PATH = path.join(ROOT, "page-map.json");
const PREFIX = (process.env.NOTION_PATH_PREFIX || "codex-batavi").replace(/\/$/, "");
const PREFIX_SEGMENTS = PREFIX.split("/").filter(Boolean);
const TITLE_PROP = process.env.NOTION_TITLE_PROPERTY || "title";
const ROOT_FOLDER_TITLE = process.env.NOTION_ROOT_FOLDER_TITLE || "Codex Batavi";
const NOTION_API_VERSION = process.env.NOTION_API_VERSION || "2025-09-03";

const DELAY_MS = 350;

const SMALL_WORDS = new Set([
  "a",
  "and",
  "as",
  "at",
  "but",
  "by",
  "da",
  "das",
  "de",
  "do",
  "dos",
  "e",
  "el",
  "en",
  "in",
  "la",
  "las",
  "lo",
  "los",
  "nor",
  "o",
  "of",
  "or",
  "os",
  "the",
  "to",
  "y",
]);

let lastCall = 0;
async function throttle() {
  const now = Date.now();
  const wait = Math.max(0, DELAY_MS - (now - lastCall));
  if (wait) await new Promise((r) => setTimeout(r, wait));
  lastCall = Date.now();
}

async function notionCall(fn) {
  for (;;) {
    await throttle();
    try {
      return await fn();
    } catch (e) {
      const status = e.status ?? e.statusCode;
      if (e.code === "rate_limited" || status === 429) {
        const sec = Number(e.headers?.get?.("retry-after") || e.headers?.["retry-after"] || 2);
        console.warn(`Notion rate limited; waiting ${sec}s`);
        await new Promise((r) => setTimeout(r, sec * 1000));
        continue;
      }
      throw e;
    }
  }
}

function normalizePageId(id) {
  return String(id).replace(/[^0-9a-f-]/gi, "").trim();
}

function uuidKey(id) {
  return normalizePageId(id).replace(/-/g, "").toLowerCase();
}

/** Notion expects `{ type, page_id }` for page parents (create + move). */
function parentPagePayload(pageId) {
  const id = normalizePageId(pageId);
  return { type: "page_id", page_id: id };
}

function readMap() {
  try {
    const raw = fs.readFileSync(MAP_PATH, "utf8");
    return JSON.parse(raw || "{}");
  } catch {
    return {};
  }
}

function writeMap(map) {
  fs.writeFileSync(MAP_PATH, JSON.stringify(map, null, 2) + "\n", "utf8");
}

function sh(cmd) {
  return execSync(cmd, { encoding: "utf8", cwd: path.resolve(ROOT, "../..") }).trim();
}

function currentTag() {
  const ref = process.env.TAG_REF || process.env.GITHUB_REF || "";
  const m = ref.replace(/^refs\/tags\//, "");
  if (!m) throw new Error("TAG_REF or GITHUB_REF with refs/tags/... is required");
  return m;
}

function previousTag(current) {
  try {
    const out = sh(`git tag -l 'v*' --sort=-version:refname`);
    const tags = out.split("\n").filter(Boolean);
    const idx = tags.indexOf(current);
    if (idx >= 0 && tags[idx + 1]) return tags[idx + 1];
    return tags.find((t) => t !== current) || "";
  } catch {
    return "";
  }
}

function includePath(rel) {
  if (!rel.endsWith(".md")) return false;
  const norm = rel.replace(/^\.\//, "");
  return norm === PREFIX || norm.startsWith(PREFIX + path.sep) || norm.startsWith(PREFIX + "/");
}

function parseDiff(prev, current) {
  if (!prev) {
    const files = sh(`git ls-files "${PREFIX}"`).split("\n").filter(includePath);
    return files.map((file) => ({ status: "M", file }));
  }
  const range = `${prev}..${current}`;
  let raw;
  try {
    raw = sh(`git diff --name-status -M15% ${range}`);
  } catch {
    raw = "";
  }
  const changes = [];
  for (const line of raw.split("\n")) {
    if (!line.trim()) continue;
    const tab = line.split("\t");
    const status = tab[0];
    if (status.startsWith("R")) {
      if (tab.length >= 3) {
        const from = tab[1];
        const to = tab[2];
        if (includePath(from) || includePath(to)) changes.push({ status: "R", from, to });
      }
    } else if (status === "A" || status === "M" || status === "D") {
      const file = tab[1];
      if (includePath(file)) changes.push({ status, file });
    }
  }
  return changes;
}

/** codex-batavi/foo/bar.md → [codex-batavi, codex-batavi/foo] */
function directoryChainForFile(fileRelPath) {
  const parts = fileRelPath.split("/");
  const dirs = [];
  for (let i = 1; i < parts.length; i++) {
    dirs.push(parts.slice(0, i).join("/"));
  }
  return dirs;
}

function beautifySlug(slug) {
  const parts = slug.split("-").filter(Boolean);
  return parts
    .map((w, i) => {
      if (/^\d+$/.test(w)) return w;
      const lower = w.toLowerCase();
      if (i > 0 && SMALL_WORDS.has(lower)) return lower;
      if (w.length === 0) return w;
      return w.charAt(0).toUpperCase() + w.slice(1).toLowerCase();
    })
    .join(" ");
}

/** Last path segment of a dir key → display title */
function titleForDirKey(dirKey) {
  const segments = dirKey.split("/").filter(Boolean);
  const last = segments[segments.length - 1] || "";
  const prefixLast = PREFIX_SEGMENTS[PREFIX_SEGMENTS.length - 1];
  if (segments.length === PREFIX_SEGMENTS.length && last === prefixLast) {
    return ROOT_FOLDER_TITLE;
  }
  return beautifySlug(last);
}

function stripInlineMdForTitle(s) {
  return s
    .replace(/\*\*([^*]+)\*\*/g, "$1")
    .replace(/\*([^*]+)\*/g, "$1")
    .replace(/`([^`]+)`/g, "$1")
    .trim();
}

/** Prefer first Markdown H1; else beautify filename slug */
function extractFileTitle(md, relPath) {
  const lines = md.replace(/\r\n/g, "\n").split("\n");
  for (const line of lines) {
    const t = line.trim();
    if (!t) continue;
    const m = t.match(/^#\s+(.+)$/);
    if (m) return stripInlineMdForTitle(m[1]).slice(0, 2000);
    break;
  }
  const base = path.posix.basename(relPath, ".md");
  return beautifySlug(base).slice(0, 2000);
}

/** Drop leading # line so body does not duplicate the Notion page title */
function bodyMarkdownSkipFirstH1(md) {
  const lines = md.replace(/\r\n/g, "\n").split("\n");
  let i = 0;
  while (i < lines.length && lines[i].trim() === "") i++;
  if (i < lines.length && /^#\s+/.test(lines[i])) {
    i++;
    while (i < lines.length && lines[i].trim() === "") i++;
    return lines.slice(i).join("\n");
  }
  return md;
}

function mdToBlocks(md, titleFallback) {
  const lines = md.replace(/\r\n/g, "\n").split("\n");
  const blocks = [];
  const flushParagraph = (buf) => {
    const t = buf.join("\n").trim();
    if (!t) return;
    for (const chunk of chunkText(t, 1900)) {
      blocks.push({
        object: "block",
        type: "paragraph",
        paragraph: { rich_text: rich(chunk) },
      });
    }
  };
  let para = [];
  for (const line of lines) {
    const h = line.match(/^(#{1,3})\s+(.*)$/);
    if (h) {
      flushParagraph(para);
      para = [];
      const level = h[1].length;
      const text = h[2].trim();
      const types = [, "heading_1", "heading_2", "heading_3"];
      const type = types[level] || "heading_3";
      blocks.push({
        object: "block",
        type,
        [type]: { rich_text: rich(text.slice(0, 1900)) },
      });
      continue;
    }
    if (line.trim() === "") {
      flushParagraph(para);
      para = [];
      continue;
    }
    para.push(line);
  }
  flushParagraph(para);
  if (blocks.length === 0) {
    blocks.push({
      object: "block",
      type: "paragraph",
      paragraph: { rich_text: rich(titleFallback || "(empty)") },
    });
  }
  return blocks;
}

function rich(content) {
  return [{ type: "text", text: { content } }];
}

function chunkText(s, max) {
  if (s.length <= max) return [s];
  const out = [];
  for (let i = 0; i < s.length; i += max) out.push(s.slice(i, i + max));
  return out;
}

function chunkBlocks(arr, size = 90) {
  const o = [];
  for (let i = 0; i < arr.length; i += size) o.push(arr.slice(i, i + size));
  return o;
}

function titlePropPayload(title) {
  return {
    [TITLE_PROP]: {
      title: [{ type: "text", text: { content: title.slice(0, 2000) } }],
    },
  };
}

async function clearPageChildren(notion, pageId) {
  let cursor = undefined;
  do {
    const res = await notionCall(() =>
      notion.blocks.children.list({ block_id: pageId, start_cursor: cursor, page_size: 100 })
    );
    for (const b of res.results) {
      await notionCall(() => notion.blocks.delete({ block_id: b.id }));
    }
    cursor = res.has_more ? res.next_cursor : undefined;
  } while (cursor);
}

async function appendBlocks(notion, pageId, blocks) {
  for (const batch of chunkBlocks(blocks, 90)) {
    await notionCall(() =>
      notion.blocks.children.append({
        block_id: pageId,
        children: batch,
      })
    );
  }
}

async function ensureFolderPage(notion, map, parentNotionId, dirKey) {
  const existing = map[`dir:${dirKey}`];
  if (existing) {
    return existing;
  }
  const title = titleForDirKey(dirKey);
  const page = await notionCall(() =>
    notion.pages.create({
      parent: parentPagePayload(parentNotionId),
      properties: titlePropPayload(title),
    })
  );
  map[`dir:${dirKey}`] = page.id;
  console.log(`Created folder page ${dirKey} → ${page.id} (“${title}”)`);
  return page.id;
}

/** Ensure codex-batavi → … → parent of file exists; return Notion id of immediate folder */
async function ensureFolderChain(notion, map, workspaceRootId, fileRelPath) {
  const dirs = directoryChainForFile(fileRelPath);
  let parentId = workspaceRootId;
  for (const dirKey of dirs) {
    parentId = await ensureFolderPage(notion, map, parentId, dirKey);
  }
  return parentId;
}

/**
 * Notion does not reparent via PATCH /pages/{id}. Use POST /pages/{id}/move.
 * @see https://developers.notion.com/reference/move-page
 */
async function notionMovePage(pageId, newParentId) {
  if (!pageId || !newParentId) return;
  if (uuidKey(pageId) === uuidKey(newParentId)) return;

  const token = process.env.NOTION_TOKEN;
  const id = normalizePageId(pageId);
  for (let attempt = 0; attempt < 6; attempt++) {
    await throttle();
    const res = await fetch(`https://api.notion.com/v1/pages/${id}/move`, {
      method: "POST",
      headers: {
        Authorization: `Bearer ${token}`,
        "Notion-Version": NOTION_API_VERSION,
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        parent: parentPagePayload(newParentId),
      }),
    });
    if (res.status === 429) {
      const ra = Number(res.headers.get("retry-after") || 2);
      console.warn(`Move rate limited; waiting ${ra}s`);
      await new Promise((r) => setTimeout(r, ra * 1000));
      continue;
    }
    if (!res.ok) {
      const body = await res.text();
      throw new Error(`Notion move failed HTTP ${res.status}: ${body}`);
    }
    console.log(`Moved page ${id} under parent ${normalizePageId(newParentId)}`);
    return;
  }
  throw new Error("Notion move failed after retries (429)");
}

async function getParentPageIdIfAny(notion, pageId) {
  const p = await notionCall(() => notion.pages.retrieve({ page_id: normalizePageId(pageId) }));
  if (p.parent?.type === "page_id") return p.parent.page_id;
  return null;
}

/**
 * Reparent if needed. PATCH parent does not work; uses /move. On failure, recreates page under correct parent.
 */
async function ensureFilePageParent(notion, map, relPath, pageId, folderParentId, title) {
  let parent = await getParentPageIdIfAny(notion, pageId);
  if (parent && uuidKey(parent) === uuidKey(folderParentId)) {
    return pageId;
  }

  try {
    await notionMovePage(pageId, folderParentId);
    return pageId;
  } catch (e) {
    console.warn(`Move failed for ${relPath}, recreating under correct folder: ${e.message}`);
    await notionCall(() =>
      notion.pages.update({
        page_id: normalizePageId(pageId),
        archived: true,
      })
    );
    delete map[relPath];
    const page = await notionCall(() =>
      notion.pages.create({
        parent: parentPagePayload(folderParentId),
        properties: titlePropPayload(title),
      })
    );
    map[relPath] = page.id;
    console.log(`Recreated empty file page ${relPath} → ${page.id} under correct folder (content next)`);
    return page.id;
  }
}

async function createOrUpdateFilePage(notion, map, workspaceRootId, relPath, action) {
  const abs = path.resolve(path.resolve(ROOT, "../.."), relPath);
  const md = fs.readFileSync(abs, "utf8");
  const title = extractFileTitle(md, relPath);
  const bodyMd = bodyMarkdownSkipFirstH1(md);
  const blocks = mdToBlocks(bodyMd, title);
  const folderParentId = await ensureFolderChain(notion, map, workspaceRootId, relPath);

  let pageId = map[relPath];

  if (!pageId && action === "update") {
    action = "create";
  }

  if (action === "create" || !pageId) {
    const page = await notionCall(() =>
      notion.pages.create({
        parent: parentPagePayload(folderParentId),
        properties: titlePropPayload(title),
      })
    );
    pageId = page.id;
    map[relPath] = pageId;
    await appendBlocks(notion, pageId, blocks);
    console.log(`Created file page ${relPath} → ${pageId} (“${title}”)`);
    return;
  }

  pageId = await ensureFilePageParent(notion, map, relPath, pageId, folderParentId, title);
  await notionCall(() =>
    notion.pages.update({
      page_id: normalizePageId(pageId),
      properties: titlePropPayload(title),
    })
  );
  await clearPageChildren(notion, pageId);
  await appendBlocks(notion, pageId, blocks);
  console.log(`Updated file page ${relPath} → ${pageId} (“${title}”)`);
}

async function archivePage(notion, map, relPath) {
  const pageId = map[relPath];
  if (!pageId) {
    console.warn(`No map entry for deleted file ${relPath}; skip archive`);
    return;
  }
  await notionCall(() =>
    notion.pages.update({
      page_id: pageId,
      archived: true,
    })
  );
  delete map[relPath];
  console.log(`Archived Notion page for ${relPath}`);
}

async function appendNews(notion, newsPageId, tag, summaryLines) {
  const when = new Date().toISOString().slice(0, 10);
  const heading = `Release ${tag} — ${when}`;
  const blocks = [
    { object: "block", type: "divider", divider: {} },
    {
      object: "block",
      type: "heading_2",
      heading_2: { rich_text: rich(heading) },
    },
    ...summaryLines.slice(0, 99).map((line) => ({
      object: "block",
      type: "bulleted_list_item",
      bulleted_list_item: { rich_text: rich(line.slice(0, 1900)) },
    })),
  ];
  await appendBlocks(notion, newsPageId, blocks);
  console.log(`Appended News section for ${tag}`);
}

async function main() {
  const token = process.env.NOTION_TOKEN;
  const parentIdRaw = process.env.NOTION_PARENT_PAGE_ID || "";
  const newsIdRaw = process.env.NOTION_NEWS_PAGE_ID || "";
  if (!token || !parentIdRaw || !newsIdRaw) {
    console.error("Missing NOTION_TOKEN, NOTION_PARENT_PAGE_ID, or NOTION_NEWS_PAGE_ID");
    process.exit(1);
  }
  const workspaceRootId = normalizePageId(parentIdRaw);
  const newsPageId = normalizePageId(newsIdRaw);

  const notion = new Client({ auth: token, notionVersion: NOTION_API_VERSION });

  const tag = currentTag();
  const prev = previousTag(tag);
  const forceFull =
    process.env.NOTION_FORCE_FULL_SYNC === "1" || /^true$/i.test(process.env.NOTION_FORCE_FULL_SYNC || "");
  console.log(`Sync tag ${tag}; previous=${prev || "(none — full tree)"}`);
  if (forceFull) {
    console.log("NOTION_FORCE_FULL_SYNC: syncing every tracked markdown file under prefix (not diff-only)");
  }

  const map = readMap();
  let changes;
  if (forceFull) {
    const files = sh(`git ls-files "${PREFIX}"`).split("\n").filter(includePath);
    changes = files.map((file) => ({ status: "M", file }));
  } else {
    changes = parseDiff(prev, tag);
  }
  const newsLines = [];

  for (const ch of changes) {
    if (ch.status === "R") {
      const oldId = map[ch.from];
      if (oldId) {
        map[ch.to] = oldId;
        delete map[ch.from];
        const abs = path.resolve(path.resolve(ROOT, "../.."), ch.to);
        const md = fs.readFileSync(abs, "utf8");
        const title = extractFileTitle(md, ch.to);
        const newFolderId = await ensureFolderChain(notion, map, workspaceRootId, ch.to);
        const blocks = mdToBlocks(bodyMarkdownSkipFirstH1(md), title);
        const pageId = await ensureFilePageParent(notion, map, ch.to, oldId, newFolderId, title);
        await notionCall(() =>
          notion.pages.update({
            page_id: normalizePageId(pageId),
            properties: titlePropPayload(title),
          })
        );
        await clearPageChildren(notion, pageId);
        await appendBlocks(notion, pageId, blocks);
        newsLines.push(`Renamed: ${ch.from} → ${ch.to}`);
        console.log(`Renamed file page map ${ch.from} → ${ch.to} (“${title}”)`);
      } else {
        newsLines.push(`Rename (no map): ${ch.from} → ${ch.to} — treating as create`);
        await createOrUpdateFilePage(notion, map, workspaceRootId, ch.to, "create");
      }
      continue;
    }
    if (ch.status === "D") {
      newsLines.push(`Deleted: ${ch.file}`);
      await archivePage(notion, map, ch.file);
      continue;
    }
    if (ch.status === "A") {
      newsLines.push(`Added: ${ch.file}`);
      await createOrUpdateFilePage(notion, map, workspaceRootId, ch.file, "create");
      continue;
    }
    if (ch.status === "M") {
      newsLines.push(`Updated: ${ch.file}`);
      await createOrUpdateFilePage(notion, map, workspaceRootId, ch.file, map[ch.file] ? "update" : "create");
    }
  }

  if (newsLines.length === 0) newsLines.push("(no matching markdown changes in path prefix)");

  await appendNews(notion, newsPageId, tag, newsLines);
  writeMap(map);
  console.log("Done. page-map.json updated.");
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
