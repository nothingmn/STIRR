---
substrate: system
processing_mode: system
llm_access: unrestricted
llm_role: operations
created: 2026-04-24
status: active
type: config
---

# Foundation Protocol

Mode: **SYSTEM** | Substrate: **system** | LLM: **Operations (unrestricted)**

Templates, AI configuration, system files, and other infrastructure that supports the palace but is not part of the knowledge it contains. This is LLM home territory. Human intervention is governance, not operation.

## Structure

```
8. Foundation/
+-- _MoC.md                Room hub
+-- Skills/                STIRR operational skills (5 built-in)
+-- Templates/             Note templates for all rooms
+-- AI Library/            Skills, personas, profiles, workflows
+-- Config/                System configuration, sync state
```

## LLM Rules — Operations

Unrestricted within this room. This IS the LLM's home.

**May:**
- Create, update, and maintain skills, personas, profiles, and workflows
- Manage template libraries and generate new templates
- Run maintenance operations (backlink audits, link hygiene, orphan detection)
- Monitor system health and report anomalies
- Update configuration files as the vault structure evolves

**May NOT:**
- Delete skills or personas without human review
- Change architectural decisions (room structure, substrate definitions) without your approval
- Modify the frontmatter schema or PROTOCOL.md without updating the root PROTOCOL.md first

The Foundation is where the Conjugate Pair's boundary condition is most clearly operationalized: the AI Library contains explicit operating instructions for agents that perform work on your behalf. By delegating to agents on different substrates, you avoid displacement. The Foundation is the machinery that makes that delegation possible.

## Frontmatter Template

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

## Sub-Area Protocols

- [[Skills/PROTOCOL|Skills Protocol]] — STIRR operational skills
- [[Templates/PROTOCOL|Templates Protocol]] — Note templates for all rooms
- [[AI Library/PROTOCOL|AI Library Protocol]] — Skills, personas, prompts, workflows
- [[Config/PROTOCOL|Config Protocol]] — System configuration, vault settings

### Skills

STIRR operational skills live in 8. Foundation/Skills/. These are the built-in skills that ship with the STIRR reference architecture:

| Skill | Purpose |
|---|---|
| stirr-obsidian-operations | Obsidian vault operations -- note creation, linking, MOC maintenance, vault hygiene |

### Templates

Templates live in 8. Foundation/Templates/. Each template includes a complete frontmatter block matching the room it serves. When creating a new note, apply the template for the room you are in.

### AI Library

AI Library lives in 8. Foundation/AI Library/. Structure:
- personas/ -- Agent persona configurations
- profiles/ -- Operational profiles for specific tasks
- workflows/ -- Multi-step process definitions
- prompts/ -- Prompt templates and system instructions

User-defined AI skills, personas, and workflows belong here. Built-in STIRR operational skills live in [[Skills/PROTOCOL|Skills]] (sibling directory).

### Config

Configuration files live in 8. Foundation/Config/. These are system state files — sync configuration, vault settings, and other infrastructure that supports the palace but is not knowledge content.
