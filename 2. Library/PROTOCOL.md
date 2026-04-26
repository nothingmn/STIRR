---

substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: indexer
created: 2026-04-24
status: reference

type: note
---

# Library Protocol

Mode: **PRECISION** | Substrate: **llm-augmented** | LLM: **Indexer (permissive)**

Knowledge formalized and structured for retrieval. The explicit layer. Put things here when you need to find them again with high specificity. Every note should have a clear title, location, and relationship to neighbors.

## Structure

```
2. Library/
+-- _MoC.md                Room hub
+-- {Domain A}/              Subject-area wings (create as needed)
+-- {Domain B}/              Each domain gets its own wing when it becomes large enough
+-- General Reference/       Topics not yet warranting their own wing
```

The Library grows wings. When a topic accumulates enough notes to warrant its own sub-directory, promote it from General Reference to a named wing. There is no fixed threshold — you will know when a domain has enough material to stand on its own.

## LLM Rules — Indexer

Where the LLM adds the most value with the least risk. Library content is already explicit. The Conjugate Pair trade-off has already been paid.

**May:**
- Maintain and update MoCs and indexes
- Cross-reference related notes and surface connections
- Generate reference notes from explicit sources (with attribution)
- Draft summaries for retrieval purposes (summarizing explicit material for retrieval is NOT the same as summarizing holistic material for understanding)
- Tag and categorize incoming material
- Identify gaps in coverage

**May NOT:**
- Modify content that originated in the Study without explicit migration and review
- Create new analytical frameworks (the Library indexes; the Study thinks)
- Override human classification decisions (suggests locations; you confirm)

This is the Karpathy wiki model: LLMs maintain the explicit layer so you do not have to. The cognitive cost of maintaining structured reference material is low-value analytic work that displaces no tacit understanding.

## Frontmatter Template

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

## Sub-Area Protocols

- [[General Reference/PROTOCOL|General Reference Protocol]] — Topics not yet warranting their own wing

**Domain wings** (create as needed — see LAYOUT.md section 3):
- Add a domain wing when a subject area accumulates enough structured reference material to warrant its own sub-area
- Each wing gets its own directory, README.md, and PROTOCOL.md under 2. Library/
- General Reference holds everything that hasn't earned its own wing yet
