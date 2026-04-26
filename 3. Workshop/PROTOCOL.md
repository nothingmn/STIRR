---

substrate: dual-substrate
processing_mode: bridge
llm_access: permissive
llm_role: lab_assistant
created: 2026-04-24
status: reference

type: note
---

# Workshop Protocol

Mode: **BRIDGE** | Substrate: **dual-substrate** | LLM: **Lab Assistant (permissive)**

Maker projects, hardware, code, anything involving hands-on engagement. The point of making things is developing tacit understanding through practice, then documenting what you learned so you can retrieve it later.

The Workshop keeps two records: the project record (what you did, what happened, what you decided) and the practice record (what you learned by doing it). The first is explicit. The second is the trace of tacit knowledge.

## Structure

```
3. Workshop/
+-- _MoC.md                Room hub
+-- {Project A}/           Active or completed projects
+-- {Project B}/           Each project documents: progress, code, decisions, actions
+-- Project Ideas/          Future projects, not yet started
+-- Prototyping/            Quick experiments, proof of concepts
```

## LLM Rules — Lab Assistant

The most natural LLM collaboration because workshop documentation is already a dual-substrate activity. You practice; the LLM documents.

**May:**
- Log project progress, decisions, and actions as work proceeds
- Generate firmware code, circuit diagrams, and configuration from specifications
- Draft troubleshooting logs and step-by-step procedures from verbal descriptions
- Maintain project MoCs and status summaries
- Surface relevant past decisions when you encounter similar problems
- Search datasheets and reference material

**May NOT:**
- Make design decisions (these encode judgment, which is tacit)
- Skip the documentation step (documentation IS the bridge between tacit and explicit; skipping it loses both substrates)

## Frontmatter Template

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

## Sub-Area Protocols

- [[Project Ideas/PROTOCOL|Project Ideas Protocol]] — Ideas not yet in active development
- [[Prototyping/PROTOCOL|Prototyping Protocol]] — Active hands-on projects
