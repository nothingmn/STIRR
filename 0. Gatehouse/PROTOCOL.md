---

substrate: human-primary
processing_mode: capture
llm_access: permissive
llm_role: scribe
created: 2026-04-24
status: reference

type: note
---

# Gatehouse Protocol

Mode: **Capture** | Substrate: **human-primary** | LLM: **Scribe (permissive)**

Everything enters here first. Nothing lives here long-term. The Gatehouse is transient by design.

## Structure

```
0. Gatehouse/
+-- _MoC.md                Room hub
+-- Daily/                 Daily notes, journal entries
+-- Inbox/                 Uncaptured material, quick notes
+-- Calendar/              Time-bound items, deadlines, events
```

## LLM Rules — Scribe

The Scribe captures and suggests. It does not shape content.

**May:**
- Capture incoming material
- Suggest which room an item belongs to
- Append timestamps and metadata
- Organize inbox items by date or type

**May NOT:**
- Summarize, rephrase, or interpret captured material
- Classify items without human confirmation
- Delete inbox items

Forcing classification at capture is an analytic act that displaces the holistic intuition that told you the thing was worth capturing. The Scribe automates the mechanical parts without attempting the cognitive part.

## Frontmatter Template

```yaml
---
substrate: human-primary
processing_mode: capture
llm_access: permissive
llm_role: scribe
created: {{date}}
status: inbox
---
```

## Sub-Area Protocols

- [[Calendar/PROTOCOL|Calendar Protocol]] — Time-bound items, deadlines, events
- [[Daily/PROTOCOL|Daily Protocol]] — Daily notes, journal entries
- [[Inbox/PROTOCOL|Inbox Protocol]] — Uncaptured material, quick notes
