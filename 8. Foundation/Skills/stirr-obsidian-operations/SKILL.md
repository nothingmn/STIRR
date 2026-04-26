---
name: stirr-obsidian-operations
version: 2.0
created: 2026-04-24
updated: 2026-04-26
substrate: system
processing_mode: system
llm_access: unrestricted
llm_role: operations
type: skill
tags: [stirr, obsidian, vault-operations, foundation]
---

# STIRR Obsidian Operations

Operations skill for working within an Obsidian vault that uses the STIRR architecture. Covers note creation, linking, tagging, MOC maintenance, and vault hygiene.

## Trigger

Use this skill when:
- Creating, modifying, or moving notes in a STIRR vault
- Maintaining MOC (Map of Content) files
- Running vault hygiene operations (backlinks, orphans, link audits)
- Converting content between rooms during migration
- Any agent needs to understand how Obsidian-specific features interact with STIRR governance

## Obsidian Conventions in STIRR

### Note Creation

1. **Identify the room.** Before creating a note, determine which STIRR room it belongs to. The room determines the frontmatter template, the processing mode, and the LLM governance rules.

2. **Apply the room template.** Each room has a frontmatter template defined in its PROTOCOL.md. Use it. Do not invent new substrate values or processing modes.

3. **Place the note.** Notes go in the room's folder hierarchy. If the note does not fit an existing subfolder, create one at depth 2+ (the furniture level). Depth 0-1 is locked.

4. **Title the note.** Descriptive, not abbreviated. No decorative icons or emojis in the title. If the note has a date, use ISO format at the start: `2026-04-24-meeting-notes.md`.

### Wikilinks and Markdown Links

STIRR uses relative wikilinks. This is a compatibility requirement — some markdown renderers fail on vault-absolute paths like `[[0. Gatehouse/Daily/README.md|Daily]]` but work correctly with relative paths like `[[Daily/README.md|Daily]]`.

### Conventions

- **Same-room links**: Use relative paths from the current file's directory. No room prefix needed.
  - From `1. Study/_MoC.md`: `[[Research/README.md|Research]]`, `[[Writing/README.md|Writing]]`
  - From `1. Study/Writing/PROTOCOL.md`: `[[../README.md|Study]]`, `[[../Research/README.md|Research]]`

- **Cross-room links**: Use relative paths with `../../` to escape the room directory. Include the room folder name (with numeric prefix) in the path.
  - From `1. Study/_MoC.md`: `[[../../2. Library/README.md|Library]]`
  - From `1. Study/Writing/README.md`: `[[../../../2. Library/General Reference/README.md|General Reference]]`

- **Directory targets**: Always link to `README.md` explicitly. Never target a bare directory.
  - `[[Inbox/README.md|Inbox]]` not `[[Inbox/]]`
  - `[[../../2. Library/README.md|Library]]` not `[[../../2. Library/]]`

- **File targets**: For files that are not directories (PROTOCOL.md, STIRR.md, specific notes), link directly.
  - `[[../PROTOCOL|Study Protocol]]`, `[[../../STIRR.md|STIRR]]`

- **Display text**: Use the short, human-readable name on the right side of `|`. Never repeat the full path.
  - `[[Research/README.md|Research]]` not `[[Research/README.md|1. Study/Research]]`

- **MOC table links**: Use `[[relative/path/README.md|Display Text]]`. No icons, no emojis, no leading symbols.
- **Links in prose**: Same conventions. Relative paths, README.md for directory targets.

- **Cross-vault links**: Use `[text](obsidian://open?vault=VaultName&file=path)` for links between STIRR vaults.

### Tags

Obsidian tags (`#tag`) should supplement, not replace, the frontmatter substrate system. Use tags for:
- **Topic classification** within a room (e.g., `#conjugate-pair`, `#esp32`)
- **Cross-room themes** (e.g., `#research-in-progress` for Study notes not yet in Library)
- **Lifecycle markers** (e.g., `#draft`, `#archived`)

Do NOT use tags to encode substrate or processing mode -- those belong in frontmatter.

### Frontmatter

Every note requires four frontmatter fields: `substrate`, `processing_mode`, `llm_access`, `llm_role`. Additional fields vary by room (see room PROTOCOL.md).

When an LLM creates or modifies a note, it MUST stamp `llm_role` with its current role in the frontmatter. This is the substrate audit trail.

## MOC Operations

### Structure of a MOC

A MOC (Map of Content) is a navigation hub for its room. It contains:
1. A brief statement of the room's purpose and processing mode
2. A table of areas within the room, with links
3. A "recent additions" or "needs classification" section (optional)

A MOC does NOT contain:
- Substantive content or analysis
- Long-form prose
- LLM-generated summaries of content in the room

### Creating a MOC

```markdown
# Room Name — Map of Content

Brief statement of room purpose.

| Area | Description |
|---|---|
| [[Area Name/README.md\|Area Name]] | What this area contains |

## Unclassified

- [[note-that-needs-a-home.md]]
```

### Updating a MOC

When adding content to a room:
1. If the content fits an existing area, add a link to that area's entry in the MOC
2. If the content requires a new area, add a row to the MOC table
3. New areas at depth 2+ are furniture -- create freely

When removing content from a room (migration to another room or archive):
1. Remove the link from the MOC
2. If the area is now empty, remove the row
3. Do NOT delete the empty folder -- leave it for future use or delete only with human approval

## Vault Hygiene

### Backlink Audit

Run after any migration or significant reorganization:

1. Search for wikilinks that point to moved or renamed notes
2. Update the links to reflect the new path
3. If the target no longer exists, flag for human review
4. Do not silently delete broken links

### Orphan Detection

1. Find notes with no incoming links and no MOC reference
2. Check if the note belongs in an existing room
3. If unclassified, place in `0. Gatehouse/Inbox/` for triage
4. Do not delete orphans without human approval

### Link Hygiene

1. Verify all `[[wikilinks]]` resolve to existing notes or directories
2. Verify all `[markdown](paths)` resolve to existing files
3. Flag cross-vault links for manual verification
4. Remove duplicate links in MOCs

### Vault Audit: Systematic Link and Format Check

Run this after any significant vault generation, migration, or bulk edit. The three failure patterns below were discovered during STIRR vault creation by a subagent that omitted room numeric prefixes from links and used malformed table delimiters.

**Step 1: Check for `||` table delimiters**

Search all `.md` files for lines starting with `||`. These are malformed markdown tables -- correct format uses single `|` pipes:

```
# WRONG
|| Column A | Column B ||
||---|---|
|| value1 | value2 ||

# CORRECT
| Column A | Column B |
|---|---|
| value1 | value2 |
```

Fix: replace all `||` at line start and end with `|`.

**Step 2: Check cross-room wikilinks for missing room prefixes**

Cross-room wikilinks that use a room name must include its numeric prefix. Same-room relative links do NOT need a prefix — that is correct.

For cross-room links (identifiable by `../../` relative paths that include a room name), check that the room folder name includes its numeric prefix. The room map:

- `0. Gatehouse/` (not `Gatehouse/`)
- `1. Study/` (not `Study/`)
- `2. Library/` (not `Library/`)
- `3. Workshop/` (not `Workshop/`)
- `4. Gallery/` (not `Gallery/`)
- `5. Quarters/` (not `Quarters/`)
- `6. Counting House/` (not `Counting House/`)
- `7. Archive/` (not `Archive/`)
- `8. Foundation/` (not `Foundation/`)

Search pattern: After `../../`, any path segment that matches a room name without its numeric prefix is suspect. Example: `[[../../Study/Writing]]` should be `[[../../1. Study/Writing/README.md|Writing]]`.

Same-room relative links (no `../../`) are ALWAYS correct without the prefix — do not flag them.

**Step 3: Check markdown links for URL-encoded spaces**

Markdown links using `%20` for spaces (e.g., `[General Reference](General%20Reference/)`) work in file systems but hurt readability. Convert to relative wikilinks: `[[General Reference/README.md|General Reference]]`.

**Step 4: Verify all wikilinks resolve**

Script approach:
1. Collect all actual directory and file paths in the vault
2. Extract all `[[path]]` and `[[path|display]]` wikilinks from all `.md` files
3. For each wikilink, strip the `.md` extension if present and check if a matching directory or file exists
4. Report any wikilink where no matching path is found

**Step 5: Verify markdown links resolve**

For each `[text](path)` link (excluding `http://`, `https://`, `#`, `obsidian://`), resolve the path relative to the linking file's directory and verify the target exists on disk.

### Template Maintenance

1. When room structure changes, update the room's frontmatter template in `8. Foundation/Templates/`
2. When frontmatter schema changes, update both the room template and the root PROTOCOL.md
3. Existing notes are NOT retroactively updated -- template changes apply to new notes only

## Pitfalls

- **Do not create notes in the vault root.** Every note belongs in a room. If you do not know which room, use `0. Gatehouse/Inbox/`.
- **Do not mix link formats.** Use `[[wikilink]]` throughout — for MOC tables, prose, and navigation. For directory targets, always link to `README.md` explicitly. Avoid markdown-style `[text](path)` links for internal navigation — they create fragile relative path dependencies and `%20` encoding.
- **Do not tag with substrate values.** `#human-primary` is redundant with `substrate: human-primary` in frontmatter.
- **Do not rename room folders.** The numeric prefix order encodes the governance gradient. Renaming breaks navigation and all wikilinks.
- **Cross-room links need room prefixes; same-room links do not.** From inside a room, `[[Research/README.md|Research]]` is correct (same-room, relative). But a cross-room link must include the prefix: `[[../../1. Study/Research/README.md|Research]]`, not `[[../../Study/Research/README.md|Research]]`. Subagents generating content frequently omit the prefix in cross-room links.
- **Do not use `||` table delimiters.** Markdown tables use single `|` pipes on each side. The `||col||` format is not valid markdown and will not render.
- **Do not target bare directories.** Always link to `README.md` explicitly: `[[Inbox/README.md|Inbox]]` not `[[Inbox/]]`.

## Verification

After any vault operation:
1. Confirm the note is in the correct room
2. Confirm the frontmatter matches the room template
3. Confirm the note is linked from its room's MOC
4. Confirm no broken links were introduced