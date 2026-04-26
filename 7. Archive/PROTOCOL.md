---

substrate: llm-augmented
processing_mode: precision-retrieval
llm_access: permissive
llm_role: indexer
created: 2026-04-24
status: archived

type: note
---

# Archive Protocol

Mode: **PRECISION-RETRIEVAL** | Substrate: **llm-augmented** | LLM: **Indexer (permissive)**

Completed work, historical records, anything definitively finished. The Archive exists so active rooms do not accumulate dead weight. No new thinking happens here.

## Structure

```
7. Archive/
+-- _MoC.md                Room hub
+-- Completed Projects/    Finished project records
+-- Historical/            Closed chapters, former employers
+-- Clippings/             Web clippings, read-later material
+-- Obsolete/              Content kept for record, no longer active
```

## LLM Rules — Indexer

Operates on frozen content. No new tacit understanding can be displaced because the material is no longer being developed.

**May:**
- Tag and cross-reference archived material
- Surface relevant archived content when similar situations arise in active rooms
- Maintain archive MoCs and indexes
- Generate finding aids and summaries for retrieval
- Identify patterns across completed projects

**May NOT:**
- Modify archived content (the Archive is a historical record; edits alter the trace)
- Reopen archived projects (if something becomes relevant again, it migrates to an active room as a new project referencing the archived original)

## Frontmatter Template

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

## Sub-Area Protocols

- [[Completed Projects/PROTOCOL|Completed Projects Protocol]] — Finished projects, preserved for reference
- [[Historical/PROTOCOL|Historical Protocol]] — Closed chapters, former organizations, past roles
- [[Clippings/PROTOCOL|Clippings Protocol]] — Web clippings, read-later articles
- [[Obsolete/PROTOCOL|Obsolete Protocol]] — Deprecated content kept for audit trail
