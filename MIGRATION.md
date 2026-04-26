---
title: "STIRR — Migration Guide"
subtitle: "Interactive AI-Assisted Vault Migration"
version: 1.0
created: 2026-04-24
status: reference
substrate: system
processing_mode: system
llm_access: unrestricted
llm_role: operations
type: config
---

# Migration Guide

This document enables an AI agent to interactively migrate any knowledge base, repository, vault, or digital workspace into a STIRR structure.

It is designed for humans in the loop. The AI agent proposes; the human reviews and confirms. Nothing moves without your explicit approval.


## 1. How This Works

The migration has four phases:

1. **Analysis** -- The AI agent reads your existing structure, samples your content, and produces a classification map.
2. **Planning** -- The AI agent proposes a room-by-room migration plan with a LAYOUT.md tailored to your vault.
3. **Dry Run** -- The AI agent simulates the entire migration without touching any files. You see exactly what will happen.
4. **Execution** -- With your approval, the AI agent moves or copies files according to the plan. Room by room, with confirmation at each step.

You control what happens at every phase. The AI agent never acts without your confirmation.


## 2. Before You Begin

### 2.1 What You Need

- An existing knowledge base (Obsidian vault, folder of markdown files, git repository, or any collection of documents)
- An AI agent that can read files, move/copy files, and interact with you
- A backup of your source material (the AI agent will remind you about this)

### 2.2 What You Choose

- **Vault name**: The top-level folder for your new palace structure. Defaults to "The Citadel". You may choose any name.
- **Migration mode**: MOVE (files leave the source location and arrive at the target) or COPY (files are duplicated; originals remain untouched). You can choose per-room.
- **Migration order**: The default order is Foundation, Gatehouse, Study, Library, Workshop, Gallery, Counting House, Quarters, Archive. You may reorder.

### 2.3 What the AI Agent Needs

- Read access to your source files
- Write access to the target location
- The STIRR specification (STIRR.md) and this document (MIGRATION.md)
- The PROTOCOL.md for governance rules


## 3. Phase 1 — Analysis

The AI agent scans your source vault and produces a classification map. No files are moved.

### 3.1 Directory Enumeration

The agent enumerates every directory and file in your source, recording:

- Full path
- Depth (distance from root)
- File count (markdown files only; binary files noted but not classified by content)
- Subfolder count
- Inferred purpose (based on folder name and content sampling)

### 3.2 Content Sampling

For each directory with markdown files, the agent reads a sample (first 3-5 files, first 50 lines each). It records:

- Dominant content type (Learning, Reference, Artifact, or Effort -- see below)
- Existing frontmatter patterns (what fields are already in use)
- Link density (how many wikilinks per note, on average)
- Whether the folder is organized by topic, by time, by project, or ad hoc

### 3.3 Content Type Classification

Every file maps to one of four content types:

**Learning** (RANGE mode):
- Stream-of-consciousness notes, research in progress, half-formed ideas, drafts, questions, brainstorming
- Target: Study

**Reference** (PRECISION mode):
- Structured summaries, how-to guides, domain knowledge, technical docs, glossaries, cheat sheets, structured clippings
- Target: Library

**Artifact** (EVIDENCE mode):
- Meeting notes, reading logs, timestamps, datasheets, raw data, receipts, invoices, contracts
- Target: Library (reading artifacts), Counting House (financial/legal), Workshop or Gallery (project artifacts), Archive (historical)

**Effort** (BRIDGE mode):
- Active project tracking, decision logs, job search materials, resumes, WIP deliverables, active business operations
- Target: Gallery (if active), Archive (if completed)

### 3.4 Structural Pattern Detection

The agent specifically looks for these common patterns:

- **PARA** (Projects, Areas, Resources, Archive)
- **ACE** (Atlas, Calendar, Efforts)
- **Numbered-prefix** systems
- **Tag-heavy** vs **folder-heavy** organization
- **Daily notes** patterns
- **Business/work** directories
- **Personal/sanctuary** content
- **Maker/hobby** content
- **AI agent infrastructure** (skills, personas, workflows)
- **Loose files** at root level

### 3.5 Output: The Source Map

The agent produces a structured document:

```
Source: /path/to/your/existing/vault
Analyzed: 2026-04-24
Total directories: N
Total markdown files: M
Detected pattern: PARA (or ACE, or ad-hoc, or mixed)

Directory Map:
  path/to/dir             | files | type        | target_room          | confidence
  ------------------------|-------|-------------|----------------------|----------
  Projects/               |    12 | effort      | 4. Gallery           | high
  Areas/                  |    23 | reference   | 2. Library           | medium (some learning content detected)
  Resources/              |    45 | reference   | 2. Library           | high
  Archive/                |    18 | artifact    | 7. Archive           | high
  Daily Notes/            |    31 | artifact    | 0. Gatehouse/Daily   | high
  Personal/               |    15 | mixed       | 5. Quarters          | medium (split between Quarters and Study)
  ...
```

**The agent pauses here and presents the Source Map for your review.**


## 4. Phase 2 — Planning

With the Source Map reviewed, the agent produces a migration plan and generates a LAYOUT.md for your vault.

### 4.1 Room Assignment

For each source directory, the agent assigns a target room using these rules (evaluated in order):

| Source Pattern | Target Room | Subpath |
|---|---|---|
| Daily notes, journal, diary | 0. Gatehouse | Daily/ |
| Inbox, unsorted, quick notes | 0. Gatehouse | Inbox/ |
| Calendar events, deadlines | 0. Gatehouse | Calendar/ |
| Research, deep investigation | 1. Study | Research/ |
| Writing, essays, drafts | 1. Study | Writing/ |
| Emerging ideas, half-formed | 1. Study | Thought Streams/ |
| Cross-domain connections | 1. Study | Synthesis/ |
| Structured knowledge by topic | 2. Library | {Domain}/ |
| General reference | 2. Library | General Reference/ |
| Maker projects, hardware, DIY | 3. Workshop | {Project}/ |
| Project ideas (not started) | 3. Workshop | Project Ideas/ |
| Prototyping, experiments | 3. Workshop | Prototyping/ |
| Active projects with deadlines | 4. Gallery | {Project}/ |
| Job search, applications | 4. Gallery | Opportunities/ |
| Correspondence, emails | 4. Gallery | Correspondence/ |
| Health, medical, biometrics | 5. Quarters | Health/ |
| Family, relationships | 5. Quarters | People/ |
| Personal finance (non-business) | 5. Quarters | Finance/ |
| Home, property, household | 5. Quarters | Home/ |
| Recreation, hobbies, sports | 5. Quarters | Recreation/ |
| Business accounting, invoicing | 6. Counting House | Accounts/ |
| Tax documents | 6. Counting House | Tax/ |
| Contracts, legal | 6. Counting House | Legal/ |
| Completed projects | 7. Archive | Completed Projects/ |
| Historical, former employer | 7. Archive | Historical/ |
| Web clippings (not actively used) | 7. Archive | Clippings/ |
| Templates | 8. Foundation | Templates/ |
| AI skills, personas, workflows | 8. Foundation | AI Library/ |
| System config | 8. Foundation | Config/ |

### 4.2 Disambiguation

When a source folder maps to multiple rooms:

- "Projects" -> If maker/hardware -> Workshop. If deliverables/deadlines -> Gallery. If completed -> Archive.
- "Knowledge Base" -> If structured/retrievable -> Library. If exploratory/developing -> Study. If mixed, split by content type.
- "Personal" -> If health/family/home/recreation -> Quarters. If intellectual thinking/writing/research -> Study.
- "Business" -> If active operations/projects -> Gallery. If financial/legal/tax -> Counting House.

### 4.3 Split Planning

When a folder must be split across rooms, the agent records:

```
Source: Personal/
Split plan:
  - Personal/Health/ -> 5. Quarters/Health/ (3 files)
  - Personal/Family/ -> 5. Quarters/People/ (7 files)
  - Personal/Thinking/ -> 1. Study/Thought Streams/ (4 files)
  - Personal/Finance/ -> 5. Quarters/Finance/ (5 files)
```

### 4.4 LAYOUT.md Generation

The agent writes a LAYOUT.md at the root of your new vault. This document records:

- Your chosen vault name (defaults to "The Citadel")
- The complete room structure with your content mapped into it
- Any split decisions and their resolution
- Migration mode (MOVE or COPY) for each room
- Migration order
- Open questions or ambiguities that need your resolution

LAYOUT.md is YOUR migration blueprint. It documents exactly what will happen before it happens.

### 4.5 Interactive Confirmation

The agent presents:
1. The LAYOUT.md for your review
2. Any open questions or ambiguous classifications
3. The proposed migration order
4. The MOVE vs COPY decision for each room

**You review, modify, and approve. The agent does not proceed until you confirm.**


## 5. Phase 3 — Dry Run

The agent simulates the entire migration without touching any files. You see exactly what will happen.

### 5.1 Dry Run Procedure

For each room (in migration order):

1. The agent lists every file to be moved/copied and its destination
2. The agent flags any potential issues:
   - Files that don't match an obvious room
   - Name collisions (two files with the same name going to different rooms)
   - Embedded images or attachments that need special handling
   - Links that will break when files move
3. The agent shows the frontmatter that will be added to each file
4. The agent shows which MoC files will be created and what they will contain

### 5.2 Dry Run Output

```
=== DRY RUN: Room 1. Study ===

Files to migrate: 23
Mode: COPY

  Source                                    -> Target
  -----------------------------------------|------------------------------------------
  ./Research/ML-notes.md                    -> 1. Study/Research/ML-notes.md
  ./Research/Agile-AI-parallel.md           -> 1. Study/Research/Agile-AI-parallel.md
  ./Writing/blog-draft-conjugate.md         -> 1. Study/Writing/blog-draft-conjugate.md
  ...

Frontmatter to add:
  ML-notes.md: substrate=human-primary, processing_mode=range, llm_access=guarded, llm_role=interlocutor, status=draft

Potential issues:
  - ./Research/ML-reference-guide.md appears to be reference content (structured summary). Consider moving to Library instead.

MoC updates:
  - 1. Study/_MoC.md will link to Research/, Writing/, Thought Streams/, Synthesis/, Sources/

Continue? [y/n/modify]
```

**The agent pauses after each room's dry run. You approve, modify, or skip.**

### 5.3 Dry Run Verification

After all rooms are simulated, the agent reports:

- Total files to be migrated
- Total files that could not be classified (will remain in source or go to Gatehouse/Inbox)
- Total potential link breakages
- Total name collisions
- Total split decisions
- Rooms where COPY was chosen vs MOVE

**You give final approval before execution begins.**


## 6. Phase 4 — Execution

With your approval, the agent executes the migration room by room.

### 6.1 Per-Room Execution

For each room:

1. **Create the directory structure** (if not already created)
2. **Create the room MoC** (if not already present)
3. **Migrate files** (MOVE or COPY, per your choice)
4. **Apply frontmatter** to each migrated file
5. **Create migration stubs** at source locations (if MOVE mode: leave a note saying "Migrated to [[new location]]")
6. **Update the room MoC** with links to migrated content
7. **Report completion** with file count, any issues encountered, and link breakage count

### 6.2 Frontmatter Application

For each migrated file, the agent:

1. Reads the existing frontmatter (if any)
2. Preserves ALL existing frontmatter fields
3. Adds the four required STIRR fields: substrate, processing_mode, llm_access, llm_role
4. Adds room-specific fields (status, project, source, year, archived, etc.)
5. Adds migration provenance: `migrated_from: "original/path.md"`, `migrated_date: "YYYY-MM-DD"`

The agent does NOT modify the content of the file. Migration moves and tags. It does not rewrite, summarize, or restructure.

### 6.3 MOVE vs COPY

**MOVE**: The file is relocated to the target. A stub may be left at the source location.
- Use when you are confident in the mapping and want to clean up the source.
- The agent leaves a migration stub at the original location if the file has many incoming links.

**COPY**: The file is duplicated. The original remains untouched.
- Use when you want to test the new structure before committing.
- You can verify the new structure works, then delete originals later.

You choose per-room. You can COPY for the Study (to preserve the original while testing) and MOVE for the Archive (where you are confident and want to clean up).

### 6.4 Link Repair

After each room, the agent checks for broken links:

1. Wikilinks that no longer resolve (due to file movement)
2. Relative links with incorrect depth calculations
3. Embedded images that moved relative to their referencing notes

The agent proposes repairs. You approve.

### 6.5 Per-Room Confirmation

After each room completes, the agent pauses and reports:

```
=== Room 1. Study: MIGRATION COMPLETE ===

Files migrated: 23 (COPY mode)
Stubs created: 0
Links repaired: 4
Issues: 2 files appear to be reference content (flagged in dry run but not moved)

Proceed to next room (2. Library)? [y/n/modify]
```

**You confirm before the agent proceeds to the next room.**


## 7. Your Vault Name

The top-level folder defaults to "The Citadel". You may choose any name.

```
The Citadel/                    <- your chosen name
+-- _Palace MoC.md
+-- PROTOCOL.md
+-- STIRR.md
+-- MIGRATION.md
+-- LAYOUT.md                   <- generated during Phase 2
+-- 0. Gatehouse/
+-- 1. Study/
+-- ...
```

STIRR is the methodology. The Citadel (or your chosen name) is the palace you build with it.


## 8. Post-Migration Verification

After all rooms are migrated, the agent runs a verification check:

### 8.1 Structural Checks

- [ ] All 9 room directories exist with correct numeric prefixes
- [ ] Every room has a `_MoC.md` with correct frontmatter
- [ ] `_Palace MoC.md` exists and links to all rooms
- [ ] PROTOCOL.md exists at root

### 8.2 Content Checks

- [ ] Every source file has a corresponding target file (or is recorded as skipped)
- [ ] Target files have correct STIRR frontmatter fields
- [ ] No Room assignment violations (no Gallery files in the Study, etc.)
- [ ] Archive contains only completed/historical content
- [ ] Quarters contains only personal content

### 8.3 Link Checks

- [ ] No broken wikilinks
- [ ] Embedded images render
- [ ] Relative links within rooms work

### 8.4 Substrate Checks

- [ ] No file in the Study has `llm_role` other than `interlocutor` or `none`
- [ ] No file in the Quarters has `llm_role` other than `none`
- [ ] Every Foundation file has `substrate: system`
- [ ] Every Library file has `substrate: llm-augmented`

### 8.5 Cognitive Walkthrough

- [ ] Start at `_Palace MoC.md`. Can you navigate to every room?
- [ ] For each room: does the content match the room's declared processing mode?
- [ ] Is there content that feels misfiled? (Reference material in the Study, or developing thinking in the Library?)

**The agent presents verification results. You confirm or flag issues.**


## 9. Agent Behavior Rules

The AI agent executing this migration MUST follow these rules:

1. **Never act without confirmation.** Every phase, every room, every significant decision requires human approval.
2. **Never modify file content.** Migration moves and tags. It does not rewrite, summarize, or restructure.
3. **Respect substrate boundaries.** The agent is operating on the LLM substrate. It must not interpret, summarize, or restructure content in the Quarters or Study.
4. **Preserve everything.** Existing frontmatter is never deleted. Links are repaired, not broken. Stubs mark original locations when files are moved.
5. **Log everything.** Every moved file, every split decision, every ambiguity goes in the migration log section of LAYOUT.md.
6. **Default to COPY, not MOVE.** The user must explicitly choose MOVE. If unsure, COPY is safer.
7. **Fail safe.** If classification is ambiguous, leave the file where it is and flag it for review. It is better to have an unmigrated file than a misfiled one.
8. **Read PROTOCOL.md first.** The governance rules in PROTOCOL.md apply to the migration agent too. Even during migration, the Quarters are sanctuary.

## 10. Migration Log Template

The agent maintains a running log within LAYOUT.md:

```markdown
## Migration Log

### [Date] Phase 1 — Analysis
- Source: /path/to/vault
- Total directories: N
- Total markdown files: M
- Pattern detected: PARA / ACE / ad-hoc / mixed
- Ambiguities: N

### [Date] Phase 2 — Planning
- Vault name: The Citadel
- Migration order: Foundation, Gatehouse, Study, Library, Workshop, Gallery, Counting House, Quarters, Archive
- MOVE rooms: (list)
- COPY rooms: (list)
- Split decisions: (list)
- Open questions: (list)

### [Date] Phase 3 — Dry Run
- Total files to migrate: N
- Potential link breakages: N
- Name collisions: N
- Unclassifiable files: N

### [Date] Phase 4 — Execution

#### Room: Foundation (COPY)
- Files migrated: N
- Issues: (list)

#### Room: Gatehouse (COPY)
- Files migrated: N
- Issues: (list)

(continues per room...)

### [Date] Verification
- Structural: PASS / FAIL
- Content: PASS / FAIL
- Links: PASS / FAIL
- Substrate: PASS / FAIL
- Walkthrough: PASS / FAIL
```