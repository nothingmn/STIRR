---

substrate: dual-substrate
processing_mode: bridge
llm_access: permissive
llm_role: project_coordinator
created: 2026-04-24
status: reference

type: note
---

# Gallery Protocol

Mode: **BRIDGE** | Substrate: **dual-substrate** | LLM: **Project Coordinator (permissive)**

Work in motion: job searches, active business operations, deliverables in progress. Items enter when a project starts and exit when it completes. The Gallery never accumulates permanent residents.

## Structure

```
4. Gallery/
+-- _MoC.md                Room hub
+-- {Project A}/           Active projects with deadlines
+-- {Project B}/           Each tracks status, deadlines, deliverables
+-- Correspondence/         Drafts and sent communications
+-- Opportunities/          Applications, proposals, leads
```

## LLM Rules — Project Coordinator

Handles operational overhead while you focus on judgment and execution.

**May:**
- Track deadlines, application status, and follow-up schedules
- Draft and format resumes, cover letters, and correspondence (you review and approve)
- Maintain project MoCs with current status
- Schedule and log meetings
- Generate reports and summaries from project data

**May NOT:**
- Make strategic career or business decisions (these encode professional judgment, which is tacit)
- Send correspondence under your name without review (Gallery output represents you)
- Independently modify active project scope or direction

Coordination work is explicit and mechanical — perfect LLM territory. Strategic work is tacit and judgmental — strictly human.

## Frontmatter Template

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

## Sub-Area Protocols

- [[Correspondence/PROTOCOL|Correspondence Protocol]] — Outgoing communications, letters, emails
- [[Opportunities/PROTOCOL|Opportunities Protocol]] — Active opportunities with deadlines
