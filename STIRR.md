---

title: "STIRR"
subtitle: "Substrate-Aware Knowledge Architecture"
version: 1.1
created: 2026-04-24
updated: 2026-04-26
status: canonical
substrate: human-primary
processing_mode: architectural_blueprint
llm_access: unrestricted
llm_role: co-architect

type: note
---

# STIRR

From dioptric — seeing through two media simultaneously. A dioptric lens corrects for the distortion that occurs when light passes between substrates (air to water, air to glass). This methodology recognizes that knowledge passing between human and LLM substrates suffers refractive distortion, and designs architecture to correct for it.

STIRR is a substrate-aware knowledge architecture for personal and organizational knowledge systems. It fuses two established frameworks:

- **The Conjugate Pair**: Precision and range in knowledge are constitutively incompatible. When you sharpen the explicit representation, you narrow the tacit original. The displacement is structural, not qualitative — it occurs whenever holistic and analytic processing compete for the same cognitive substrate.

- **The Method of Loci (Mind Palace)**: Spatial memory is the strongest memory system humans have. A knowledge system that feels like walking through a building — where each room has a distinct character, purpose, and path of approach — uses the cognitive hardware you already have.

STIRR adds what neither framework provides alone: a governance model for the second processing substrate. When an LLM enters a knowledge system, it adds a parallel processing capacity that can either augment or displace human understanding. The difference depends on architecture. STIRR provides that architecture.


## 1. First Principles

### 1.1 The Conjugate Pair Constraint

Precision and range in knowledge are constitutively incompatible. Formalizing knowledge sharpens the explicit representation at the cost of the holistic original. This is not a metaphor. It is a structural constraint supported by evidence from cognitive science (verbal overshadowing), organizational behavior (process debt, safety culture displacement), and education (metacognitive laziness from AI offloading).

The constraint holds when holistic and analytic processing compete for the same substrate. It does not hold when they operate on different substrates. This boundary condition is the key to the entire method.

### 1.2 The Loci Principle

Spatial memory outperforms categorical memory. A knowledge system organized as traversable architecture — rooms with distinct purposes, connected by walkable paths — leverages the brain's native navigation system. You do not search for a fact. You walk to the room where that kind of fact lives.

The Method of Loci provides three additional principles:

- **Domain Separation**: Different types of knowledge inhabit different rooms. Emotional memory stays separate from structured knowledge.
- **Walking Over Teleporting**: How you arrive at knowledge matters. Continuous spatial movement strengthens recall. The path encodes context.
- **Depth Locking**: Deeper structure is more permanent. The building does not move. The furniture can rearrange.

### 1.3 The Substrate Principle

When an LLM enters a knowledge system, it adds a second processing substrate. Whether this substrate augments or displaces the human substrate depends on where the LLM operates and what it is permitted to do.

- An LLM summarizing holistic research notes IS ON THE HUMAN SUBSTRATE. It is performing analytic processing on material that required holistic processing to produce. This triggers the Conjugate Pair displacement.
- An LLM maintaining a reference index IS ON ITS OWN SUBSTRATE. It is performing analytic processing on analytic material. The human substrate is not engaged. No displacement.
- An LLM documenting practice while a human practices IS ON ITS OWN SUBSTRATE. Dual-substrate operation where each does what the other cannot. No displacement.
- An LLM interpreting personal experience IS ON THE HUMAN SUBSTRATE. Personal, tacit, emotionally embedded knowledge is the most vulnerable to displacement. High risk.

The Substrate Principle is the STIRR correction: it identifies where refractive distortion will occur and designs architecture to prevent it.


## 2. Architectural Principles

These are the design rules. Every placement decision should satisfy them.

### 2.1 Domain Separation

Different processing modes inhabit different rooms. The vault never mixes exploratory thinking with reference retrieval in the same space. Each room signals its dominant mode through name, structure, and frontmatter.

### 2.2 Walking, Not Teleporting

How you arrive at a note matters. The path through the vault should feel like walking through a building, not jumping to coordinates. Folder hierarchy encodes proximity. Notes that are conceptually adjacent should be folder-adjacent.

### 2.3 Depth Locking

Depth 0 is the building. Depth 1 is the rooms. Depth 2+ is the furniture. The building and the rooms change rarely. The furniture can rearrange freely.

### 2.4 Precision Here, Range There — Never Both

Every room has a dominant processing mode:

- **Range rooms** (The Study, The Observatory): Holistic, exploratory, connective. Incomplete notes are features. Contradictions are features. Mess is tolerated because the mode requires it.
- **Precision rooms** (The Library, The Counting House): Analytic, indexed, retrievable. Every note has a clear title, location, and relationship to neighbors. Order is demanded because the mode requires it.
- **Bridge rooms** (The Workshop, The Gallery): Places where tacit converts to explicit and explicit becomes tacit through practice. The transition zone where the Conjugate Pair trade-off is actively managed.
- **System rooms** (The Foundation): Infrastructure territory. The LLM substrate is primary here. Human intervention is governance, not operation.

### 2.5 Hub-and-Spoke Navigation

Each major domain radiates from a central hub (its MoC). You enter the room, orient at the hub, then move to the specific area. This provides a fixed entry point that reduces disorientation and supports consistent retrieval paths.

### 2.6 Substrate Declaration

Every note carries frontmatter that declares its substrate. This is not just metadata — it is a cognitive and computational signal. It tells the human reader what mode to be in. It tells any AI agent what it is permitted to do. The substrate tag is the refractive index of the medium. It tells you how light will bend when it passes through.


## 3. The Palace Map

```
The Palace (Vault Root)
|
+-- 0. Gatehouse/                    The entry — daily notes, capture, inbox
+-- 1. Study/                        Thinking, writing, synthesis (RANGE)
+-- 2. Library/                      Structured knowledge (PRECISION)
+-- 3. Workshop/                     Hands-on practice (BRIDGE)
+-- 4. Gallery/                       Active projects and work (BRIDGE)
+-- 5. Quarters/                     Personal life (MIXED)
+-- 6. Counting House/               Business, financial, legal (PRECISION)
+-- 7. Archive/                      Completed and historical (PRECISION-RETRIEVAL)
+-- 8. Foundation/                   System infrastructure (SYSTEM)
|
+-- LAYOUT.md                        Architectural blueprint (customized per vault)
+-- _Palace MoC.md                   The foyer — hub linking to all rooms
```

The numeric prefixes serve a single purpose: file explorer sort order. The numbers order the rooms from most-frequented (daily entry) to least-frequented (archive, infrastructure). They are not a ranking of importance.


## 4. Substrate Definitions

### 4.1 human-primary

The human substrate carries the essential cognitive work. LLM may assist but does not displace. The Conjugate Pair boundary condition: the LLM operates on a different substrate, so explicit documentation happens without displacing tacit understanding — but only if the LLM does not attempt to do the holistic thinking for you.

### 4.2 llm-augmented

The LLM substrate handles organization and retrieval. The human makes all judgment calls. This is the "read what workers did rather than asking workers to explain what they know" insight: the LLM processes artifacts of practice. The human retains judgment.

### 4.3 dual-substrate

Both substrates are active and legitimate. The human develops tacit understanding through practice; the LLM records the trace of that practice. Each operates on its own substrate without displacing the other. This is the Conjugate Pair's boundary condition in its most productive form.

### 4.4 system

Infrastructure. The LLM substrate is primary here. Human intervention is configuration and governance, not ongoing operation.


## 5. Room Descriptions

### 5.0 Gatehouse — The Entry

**Mode**: Capture | **Substrate**: human-primary | **LLM**: Scribe (permissive)

Everything enters here first. Some of it moves to other rooms. Some ages into archive. The gatehouse is not a long-term home for anything.

```
0. Gatehouse/
+-- Daily/                Daily notes, journal entries
+-- Inbox/                Uncaptured material, quick notes
+-- Calendar/             Time-bound items, deadlines, events
```

**LLM Scribe** may: capture incoming material, suggest which room an item belongs to, append timestamps and metadata. The LLM never shapes content itself. It does not summarize, rephrase, or interpret. The Scribe captures and suggests — you decide and classify.

Forcing classification at the moment of capture is an analytic act that displaces the holistic intuition that told you the thing was worth capturing. The Scribe automates the mechanical parts of capture without attempting the cognitive part.

```yaml
# Frontmatter template
---
substrate: human-primary
processing_mode: capture
llm_access: permissive
llm_role: scribe
created: {{date}}
status: inbox
---
```

---

### 5.1 Study — Thinking, Writing, Synthesis

**Mode**: RANGE | **Substrate**: human-primary | **LLM**: Interlocutor (guarded)

The most important room for intellectual life. Work that does not yet have a fixed shape: research in progress, essays being written, cross-domain connections emerging. The Study tolerates incomplete notes, contradictions, and two drafts of the same idea side by side. Premature precision would kill the thinking.

```
1. Study/
+-- _MoC.md                  Room hub — links to all areas
+-- Research/                 Active research, deep investigations
+-- Writing/                  Essays, articles, drafts in progress
+-- Thought Streams/          Emerging ideas, half-formed thinking
+-- Synthesis/                Cross-domain connections
+-- Sources/                  Source material, references
```

**LLM Interlocutor** is the most carefully defined role because the Study is where the Conjugate Pair trade-off is most acute.

The LLM may:
- Ask questions that prompt deeper thinking (Socratic dialogue)
- Surface connections between notes not recently visited
- Identify gaps or contradictions in an argument
- Generate alternative framings for consideration
- Transcribe spoken thoughts without editing

The LLM may NOT:
- Summarize thinking without explicit request (summarization forces analytic precision on holistic material, triggering displacement)
- Draft arguments (offer framings, yes; the primary argumentative thread must be yours)
- Resolve contradictions (contradictions in the Study are features, not bugs)
- Reorganize without permission (spatial arrangement encodes thinking process)

The LLM operates as an interlocutor (different substrate, additive) rather than a substitute (same substrate, displacing). The boundary: is the LLM doing the holistic thinking for you (displacing) or alongside you (augmenting on a different substrate)?

```yaml
---
substrate: human-primary
processing_mode: range
llm_access: guarded
llm_role: interlocutor
created: {{date}}
status: draft | developing | synthesizing
---
```

---

### 5.2 Library — Structured Knowledge

**Mode**: PRECISION | **Substrate**: llm-augmented | **LLM**: Indexer (permissive)

Knowledge formalized and structured for retrieval. The explicit layer. Put things here when you need to find them again with high specificity. Every note should have a clear title, location, and relationship to neighbors.

```
2. Library/
+-- _MoC.md                  Room hub
+-- {Domain A}/              Subject-area wings (create as needed)
+-- {Domain B}/              Each domain gets its own wing
+-- {Domain C}/              When a domain becomes large enough
+-- General Reference/       Topics not yet warranting their own wing
```

**LLM Indexer** is where the LLM adds the most value with the least risk. Library content is already explicit — the Conjugate Pair trade-off has already been paid. The LLM cannot displace tacit understanding that has already been converted to explicit form.

The LLM may:
- Maintain and update MoCs and indexes
- Cross-reference related notes and surface connections
- Generate reference notes from explicit sources (with attribution)
- Draft summaries for retrieval purposes (summarizing explicit material for retrieval is not the same as summarizing holistic material for understanding)
- Tag and categorize incoming material
- Identify gaps in coverage

The LLM may NOT:
- Modify content that originated in the Study without explicit migration and review
- Create new analytical frameworks (the Library indexes; the Study thinks)
- Override human classification decisions (suggests locations; you confirm)

This is the Karpathy wiki model: LLMs maintain the explicit layer so you do not have to. The cognitive cost of maintaining structured reference material is low-value analytic work that displaces no tacit understanding.

```yaml
---
substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: indexer
created: {{date}}
status: reference
source: {{origin}}
---
```

---

### 5.3 Workshop — Hands-On Practice

**Mode**: BRIDGE | **Substrate**: dual-substrate | **LLM**: Lab Assistant (permissive)

Maker projects, hardware, code, anything involving hands-on engagement. The Conjugate Pair bridge room par excellence: the point of making things is developing tacit understanding through practice, then documenting what you learned so you can retrieve it later.

The Workshop keeps two records: the project record (what you did, what happened, what you decided) and the practice record (what you learned by doing it). The first is explicit. The second is the trace of tacit knowledge — it cannot re-create the tacit understanding, but it marks where it formed and what shaped it.

```
3. Workshop/
+-- _MoC.md                  Room hub
+-- {Project A}/             Active or completed projects
+-- {Project B}/             Each project documents: progress, code, decisions, actions
+-- Project Ideas/            Future projects, not yet started
+-- Prototyping/              Quick experiments, proof of concepts
```

**LLM Lab Assistant** is the most natural LLM collaboration because workshop documentation is already a dual-substrate activity. You practice; the LLM documents.

The LLM may:
- Log project progress, decisions, and actions as work proceeds
- Generate firmware code, circuit diagrams, and configuration from specifications
- Draft troubleshooting logs and step-by-step procedures from verbal descriptions
- Maintain project MoCs and status summaries
- Surface relevant past decisions when you encounter similar problems
- Search datasheets and reference material

The LLM may NOT:
- Make design decisions (these encode judgment, which is tacit)
- Skip the documentation step (documentation IS the bridge between tacit and explicit; skipping it loses both substrates)

The documentation is the trail, not the territory. Future-you can re-walk the path and re-develop the tacit understanding faster than starting from scratch.

A project folder that records the sequence of work — the decisions, the dead ends, the revisions — supports walking. A project folder that only contains the final result forces teleporting. Walking builds understanding. Teleporting builds dependency.

```yaml
---
substrate: dual-substrate
processing_mode: bridge
llm_access: permissive
llm_role: lab_assistant
created: {{date}}
status: active | paused | completed
project: {{project-name}}
---
```

---

### 5.4 Gallery — Active Projects and Work

**Mode**: BRIDGE | **Substrate**: dual-substrate | **LLM**: Project Coordinator (permissive)

Work in motion: job searches, active business operations, deliverables in progress. Items enter when a project starts and exit when it completes (moving to Archive or Library). The Gallery never accumulates permanent residents.

```
4. Gallery/
+-- _MoC.md                  Room hub
+-- {Project A}/             Active projects with deadlines
+-- {Project B}/             Each tracks status, deadlines, deliverables
+-- Correspondence/           Drafts and sent communications
+-- Opportunities/           Applications, proposals, leads
```

**LLM Project Coordinator** handles operational overhead while you focus on judgment and execution.

The LLM may:
- Track deadlines, application status, and follow-up schedules
- Draft and format resumes, cover letters, and correspondence (you review and approve)
- Maintain project MoCs with current status
- Schedule and log meetings
- Generate reports and summaries from project data

The LLM may NOT:
- Make strategic career or business decisions (these encode professional judgment, which is tacit)
- Send correspondence under your name without review (Gallery output represents you)
- Independently modify active project scope or direction

Coordination work is explicit and mechanical — perfect LLM territory. Strategic work is tacit and judgmental — strictly human.

```yaml
---
substrate: dual-substrate
processing_mode: bridge
llm_access: permissive
llm_role: project_coordinator
created: {{date}}
status: active | waiting | completed
project: {{project-name}}
deadline: {{date or none}}
---
```

---

### 5.5 Quarters — Personal Life

**Mode**: MIXED | **Substrate**: human-primary | **LLM**: None (restricted)

Everything personal but not primarily intellectual: health, family, finances, hobbies, the material conditions of life.

```
5. Quarters/
+-- _MoC.md                  Room hub
+-- People/                  Relationships, family, contacts
+-- Health/                  Medical, sleep, biometric data
+-- Finance/                 Personal financial planning
+-- Home/                    Property, appliances, household
+-- Recreation/              Hobbies, sports, outdoors, travel
+-- Living/                  Day-to-day personal notes
```

**LLM None** — the tightest LLM restrictions in the vault. Personal, tacit, emotionally embedded knowledge is the most vulnerable to analytic displacement.

The LLM may:
- Format and organize information on explicit request
- Calculate and tabulate when asked
- Search and retrieve within existing notes

The LLM may NOT:
- Initiate work in the Quarters without your request
- Offer interpretations of personal information
- Proactively suggest optimizations for personal life
- Generate content about relationships, health, or personal experience

The Conjugate Pair trade-off is most damaging in precisely these domains: the most holistic, most tacit, most personally embedded knowledge is the most vulnerable to analytic displacement. The Quarters protect the human substrate by limiting the LLM substrate's access.

The Quarters are the palace's sanctuary. The LLM does not enter uninvited.

```yaml
---
substrate: human-primary
processing_mode: mixed
llm_access: restricted
llm_role: none
created: {{date}}
---
```

---

### 5.6 Counting House — Business, Financial, Legal

**Mode**: PRECISION | **Substrate**: llm-augmented | **LLM**: Clerk (permissive)

Financial records, tax documents, invoicing, receipts, corporate documents, legal materials. Pure precision. Nothing exploratory. Everything is a record.

```
6. Counting House/
+-- _MoC.md                  Room hub
+-- Accounts/                By entity or fiscal year
+-- Invoicing/               Client invoicing records
+-- Tax/                     Tax filings and supporting documents
+-- Legal/                   Contracts, employment docs, legal matters
+-- Compliance/              Regulatory filings, audit records
```

**LLM Clerk** handles the mechanical heart of financial record-keeping. Financial records are pure explicit data — numbers, dates, line items, categories. The Conjugate Pair displacement risk is minimal because there is almost no tacit knowledge embedded in a receipt or an invoice.

The LLM may:
- Organize and categorize financial records by year, entity, and type
- Generate invoices, receipts, and financial summaries from templates
- Flag anomalies, missing records, and overdue items
- Cross-reference tax documents and identify deductible items
- Produce year-end reports and financial statements

The LLM may NOT:
- Make financial decisions (investment, pricing, strategy are judgment calls — tacit)
- Submit tax filings or legal documents autonomously (all regulatory filings require human review)
- Waive invoices or adjust terms without approval

The Clerk reads the artifacts of financial practice without asking you to explain your financial knowledge. It processes what happened. It does not try to understand why.

```yaml
---
substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: clerk
created: {{date}}
status: record
year: {{tax-or-fiscal-year}}
---
```

---

### 5.7 Archive — Completed and Historical

**Mode**: PRECISION-RETRIEVAL | **Substrate**: llm-augmented | **LLM**: Indexer (permissive)

Completed work, historical records, anything definitively finished. The Archive exists so active rooms do not accumulate dead weight. No new thinking happens here.

```
7. Archive/
+-- _MoC.md                  Room hub
+-- Completed Projects/      Finished project records
+-- Historical/               Closed chapters, former employers
+-- Clippings/               Web clippings, read-later material
+-- Obsolete/                 Content kept for record, no longer active
```

**LLM Indexer** operates on frozen content — no new tacit understanding can be displaced because the material is no longer being developed.

The LLM may:
- Tag and cross-reference archived material
- Surface relevant archived content when similar situations arise in active rooms
- Maintain archive MoCs and indexes
- Generate finding aids and summaries for retrieval
- Identify patterns across completed projects

The LLM may NOT:
- Modify archived content (the Archive is a historical record; edits alter the trace)
- Reopen archived projects (if something becomes relevant again, it migrates to an active room as a new project referencing the archived original)

The Archive is the Memory Palace's cellar. You visit rarely, but it holds the structural evidence of what was built above. The LLM makes the cellar navigable.

```yaml
---
substrate: llm-augmented
processing_mode: precision-retrieval
llm_access: permissive
llm_role: indexer
created: {{date}}
archived: {{date}}
status: archived
origin_room: {{original-room-name}}
---
```

---

### 5.8 Foundation — System Infrastructure

**Mode**: SYSTEM | **Substrate**: system | **LLM**: Operations (unrestricted)

Templates, AI configuration, system files, and other infrastructure that supports the palace but is not part of the knowledge it contains. This is LLM infrastructure territory. Human intervention is governance, not operation.

```
8. Foundation/
+-- _MoC.md                  Room hub
+-- Skills/                AI operational skills (vault operations, hygiene, audits)
+-- Templates/                Note templates for all rooms
+-- AI Library/               Personas, profiles, workflows
+-- Config/                   System configuration, sync state
```

**LLM Operations** is unrestricted within this room. This IS the LLM's home territory.

The LLM may:
- Create, update, and maintain skills, personas, profiles, and workflows
- Manage template libraries and generate new templates
- Run maintenance operations (backlink audits, link hygiene, orphan detection)
- Monitor system health and report anomalies
- Update configuration files as the vault structure evolves

The LLM may NOT:
- Delete skills or personas without human review
- Change architectural decisions without your approval
- Modify the frontmatter schema or substrate definitions without updating PROTOCOL.md first

The Foundation is where the Conjugate Pair's boundary condition is most clearly operationalized: the AI Library contains explicit operating instructions for agents that perform work on your behalf — work that, if you performed it yourself, would develop tacit understanding in you. By delegating to agents on different substrates, you avoid the displacement. The Foundation is the machinery that makes that delegation possible.

```yaml
---
substrate: system
processing_mode: system
llm_access: unrestricted
llm_role: operations
created: {{date}}
status: active | deprecated
type: skill | persona | profile | workflow | template | config
---
```


## 6. LLM Governance Model

### 6.1 The Governance Gradient

Rooms are organized along a gradient from most human-protected to most LLM-autonomous:

```
HUMAN-PROTECTED                          LLM-AUTONOMOUS
    |                                        |
    Quarters - Study - Gatehouse - Workshop - Library - Counting House - Archive - Foundation
    |           |        |           |          |            |              |           |
 restricted  guarded permissive permissive permissive   permissive    permissive   unrestricted
```

This is not a permission hierarchy. It is a substrate compatibility map:

- **Restricted (Quarters)**: LLM substrate is incompatible with the dominant knowledge type. Personal, tacit, emotionally embedded knowledge is most vulnerable to displacement. The LLM may only perform mechanical operations on explicit request.

- **Guarded (Study)**: LLM substrate is compatible but dangerous. The Study holds holistic, developing knowledge that can be displaced by analytic intrusion. The LLM operates as an interlocutor — different substrate, additive — but never as a substitute.

- **Permissive (Gatehouse, Workshop, Gallery, Library, Counting House, Archive)**: LLM substrate is compatible. The knowledge is already explicit (cannot be further displaced), the room is a bridge (dual-substrate operation is the point), or the room is a capture zone (the LLM acts as a scribe). The LLM operates freely within its defined role.

- **Unrestricted (Foundation)**: The LLM substrate IS the primary substrate. Human intervention is governance, not operation.

### 6.2 The Boundary Condition as Firewall

The Conjugate Pair boundary condition — displacement does not occur when processing happens on different substrates — is the firewall rule:

1. **LLM summarizing research notes in Study**: ON THE HUMAN SUBSTRATE. Analytic processing on holistic material. Displacement. This is why the Interlocutor role prohibits summarization without explicit request.

2. **LLM maintaining Library index**: ON THE LLM SUBSTRATE. Analytic processing on analytic material. The human substrate is not engaged. No displacement.

3. **LLM documenting workshop practice**: ON THE LLM SUBSTRATE. Recording the trace of practice while the human practices on the human substrate. Dual-substrate. No displacement.

4. **LLM interpreting personal experience**: ON THE HUMAN SUBSTRATE. Analytic processing on holistic personal experience. Displacement risk is high. This is why the Quarters restrict LLM access.

### 6.3 Enforcement Principles

The frontmatter tags are not just documentation. They are enforcement signals. Any AI agent operating in this vault must:

1. **Read the frontmatter before acting.** If `llm_access: restricted`, do not initiate. If `llm_access: guarded`, operate only in the Interlocutor role. If `llm_role` is specified, stay within that role.

2. **Respect substrate boundaries.** An agent operating in a `human-primary` room must not attempt holistic thinking. It may ask questions, surface connections, transcribe — but not summarize, decide, or resolve.

3. **Log LLM contributions.** When an LLM modifies or creates content, the note's frontmatter records `llm_role` at the time of contribution. Future readers know which substrate shaped the content.

4. **Never cross the Quarters boundary without invitation.** The Quarters are the palace's sanctuary. The LLM does not enter uninvited.


## 7. Frontmatter Schema

### 7.1 Required Fields

| Field | Values | Purpose |
|---|---|---|
| substrate | human-primary, llm-augmented, dual-substrate, system | Declares which processing substrate carries the essential work |
| processing_mode | capture, range, precision, bridge, mixed, precision-retrieval, system | Signals the cognitive mode required to work with this note |
| llm_access | restricted, guarded, permissive, unrestricted | Defines the LLM permission boundary |
| llm_role | none, scribe, interlocutor, indexer, lab_assistant, project_coordinator, clerk, operations | Names the LLM's functional role in this context |
| created | ISO date | When the note was created |
| status | varies by room | Current lifecycle state |

### 7.2 Room-Specific Fields

| Room | Additional Fields |
|---|---|
| Gatehouse | (none beyond required) |
| Study | status: draft / developing / synthesizing |
| Library | source: origin of the material |
| Workshop | project: project name |
| Gallery | project: project name, deadline: date or none |
| Quarters | (none beyond required) |
| Counting House | year: tax or fiscal year |
| Archive | archived: date, origin_room: original room name |
| Foundation | type: skill / persona / profile / workflow / template / config |

### 7.3 The Substrate Tag as Refractive Index

In optics, the refractive index of a medium tells you how light will bend when it passes through. A dioptric lens corrects for the distortion at the boundary between two media with different refractive indices.

In STIRR, the substrate tag is the refractive index. It tells you — and any AI agent — how knowledge will be distorted when it passes between substrates. A note tagged `substrate: human-primary` signals that the knowledge within was formed on the human substrate and may be distorted if processed analytically. A note tagged `substrate: llm-augmented` signals that the knowledge is already explicit and can be processed freely.

Reading the substrate tag before acting is the STIRR correction. It is the lens that bends light back to true at the boundary between two media.


## 8. MoC Architecture

### 8.1 The Foyer

The vault root has a `_Palace MoC.md` that links to every room's MoC. This is the foyer of the palace — the place you stand to orient yourself before walking to any room.

### 8.2 Room Hubs

Every room has a `_MoC.md` at its root. The MoC is the hub in the hub-and-spoke structure. It is the first thing you see when you enter the room, and it links to every major area within.

### 8.3 The Walking Path

```
_Palace MoC.md (vault root)
  -> 0. Gatehouse/_MoC.md
  -> 1. Study/_MoC.md
  -> 2. Library/_MoC.md
  -> 3. Workshop/_MoC.md
  -> 4. Gallery/_MoC.md
  -> 5. Quarters/_MoC.md
  -> 6. Counting House/_MoC.md
  -> 7. Archive/_MoC.md
  -> 8. Foundation/_MoC.md
```

You always know where you are in the palace because you entered through the foyer, walked to a room, and oriented at its hub.


## 9. Naming Conventions

### 9.1 Folders

- Room-level folders use numeric prefix for sort order: `0.`, `1.`, `2.`, etc.
- Within rooms, no numeric prefix needed — alphabetical sort is fine
- Exception: MoC files always start with `_MoC.md` to sort to top

### 9.2 Notes

- Descriptive, not abbreviated: full clear name, not cryptic shorthand
- Research sections may use numeric prefixes: `01 - Topic.md`, `02.1 - Subtopic.md`
- Dates in ISO format when needed: `2026-04-24-meeting-notes.md`

### 9.3 Links

- Clean `[[text]]` format without leading icons or decorative elements
- MoC links use `[text](path)` format in tables, no icons


## 10. STIRR in Practice

### 10.1 How the Structure Prevents Displacement

The structure prevents Conjugate Pair displacement in three ways:

1. **Spatial signaling**: The room name tells you the mode. You do not need to figure out which mode you are in — the architecture tells you.

2. **Substrate separation**: By giving different processing modes different rooms (and different substrates), tacit understanding in the Study is not threatened by the precision of records in the Counting House because they live in different rooms and you process them in different modes.

3. **Trail preservation**: The Workshop's documentation practice preserves the trace of tacit knowledge without trying to capture the tacit knowledge itself. The explicit record marks the path. Re-walking the path re-develops the tacit understanding. The record does not replace the understanding. It makes the understanding re-developable.

### 10.2 The Vault as STIRR Instrument

A dioptric lens does not eliminate refraction. It corrects for it at the boundary. STIRR does not eliminate the Conjugate Pair trade-off. It corrects for it at the boundary between human and LLM substrates.

The vault is an instrument for managing the passage of knowledge between substrates. Each room is a medium with a known refractive index. The frontmatter schema is the optical specification. The MoC architecture is the optical path. The LLM governance model is the correction.

Used correctly, knowledge passes between substrates with minimal distortion. The tacit remains tacit in the rooms where it needs to be tacit. The explicit becomes explicit in the rooms where it needs to be explicit. The LLM augments where augmentation is safe and stays out where it is not.

This is STIRR: see through two media simultaneously, and correct for the distortion at the boundary.


## 11. Implementation

### 11.1 Do Not Migrate All At Once

Move content one room at a time. Start with the Study (your core intellectual work). Then the Library. Then the Workshop. Each migration is a walk through the palace that builds spatial memory of the new structure.

### 11.2 Preserve Backlinks

When files move, backlinks break. After migrating each room, run a backlink audit.

### 11.3 The Foundation Stays

System configuration (.obsidian, .stfolder, .trash, templates) does not move during migration.

### 11.4 Templates Update After Migration

Templates reference room locations. After structure is in place, update template paths.

### 11.5 LAYOUT.md Is a Living Document

Once the restructure is complete and stable, the implementation sections can be simplified. The architectural description becomes the permanent reference. The blueprint becomes the building.

### 11.6 Adopt Frontmatter Incrementally

Do not attempt to tag every existing note with the new frontmatter schema at once. Apply it to new notes immediately. Tag existing notes as you encounter them during normal work. The substrate tags spread through the vault the way light fills a room — gradually, from the points where it matters most.