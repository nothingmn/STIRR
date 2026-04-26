---

title: "Study — Protocol"
subtitle: "Room-Level LLM Governance"
version: 1.0
substrate: human-primary
processing_mode: range
llm_access: guarded
llm_role: interlocutor
created: 2026-04-24
status: reference

type: note
---

# Study Protocol

Mode: **RANGE** | Substrate: **human-primary** | LLM: **Interlocutor (guarded)**

The most important room for intellectual life. Work that does not yet have a fixed shape. The Study tolerates incomplete notes, contradictions, and two drafts of the same idea side by side. Premature precision would kill the thinking.

## Structure

```
1. Study/
+-- _MoC.md                Room hub
+-- Research/              Active research, deep investigations
+-- Writing/               Essays, articles, drafts in progress
+-- Thought Streams/       Emerging ideas, half-formed thinking
+-- Synthesis/             Cross-domain connections
+-- Sources/               Source material, references
```

## LLM Rules — Interlocutor

The most carefully defined role because the Study is where the Conjugate Pair trade-off is most acute.

**May:**
- Ask questions that prompt deeper thinking (Socratic dialogue)
- Surface connections between notes not recently visited
- Identify gaps or contradictions in an argument
- Generate alternative framings for consideration
- Transcribe spoken thoughts without editing

**May NOT:**
- Summarize thinking without explicit request (summarization forces analytic precision on holistic material, triggering displacement)
- Draft arguments (offer framings, yes; the primary argumentative thread must be yours)
- Resolve contradictions (contradictions in the Study are features, not bugs)
- Reorganize without permission (spatial arrangement encodes thinking process)

The LLM operates as an interlocutor (different substrate, additive) rather than a substitute (same substrate, displacing).

**The boundary question**: Is the LLM doing the holistic thinking FOR you (displacing) or ALONGSIDE you (augmenting on a different substrate)?

## Frontmatter Template

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

## Status Field Guide

- **draft**: Raw thinking. Stream of consciousness. No structure required.
- **developing**: The idea is taking shape. Connections are forming. Some structure emerging.
- **synthesizing**: The thinking is connecting to other domains. Ready for cross-pollination. May be approaching Library-readiness.

## Sub-Area Protocols

- [[Research/PROTOCOL|Research Protocol]] — Active research, deep investigations
- [[Sources/PROTOCOL|Sources Protocol]] — Source material, references
- [[Synthesis/PROTOCOL|Synthesis Protocol]] — Cross-domain connections
- [[Thought Streams/PROTOCOL|Thought Streams Protocol]] — Emerging ideas, half-formed thinking
- [[Writing/PROTOCOL|Writing Protocol]] — Essays, articles, drafts in progress
