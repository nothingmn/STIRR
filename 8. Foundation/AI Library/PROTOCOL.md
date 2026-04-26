---
substrate: system
processing_mode: system
llm_access: unrestricted
llm_role: operations
---

# AI Library

Skills, personas, profiles, and workflows — the operational knowledge that drives LLM behavior within the vault.

## What belongs here

- Persona definitions and behavioral profiles
- Skill descriptions and capability records
- Workflow specifications and automation scripts
- Prompt templates and system instructions
- AI performance logs and refinement notes

## What does NOT belong here

- Note templates (those go to [[../Templates/PROTOCOL|Templates]])
- System configuration files (those go to [[../Config/PROTOCOL|Config]])
- Research about AI/ML (that goes to [[../../1. Study/Research/PROTOCOL|Research]])
- General reference about tools (that goes to [[../../2. Library/General Reference/PROTOCOL|General Reference]])

## Area-specific rules

1. **System-level access.** The LLM has unrestricted access to the AI Library. It may read and reference its own profiles and skills at any time, and may propose updates — though substantive persona changes should be human-approved.
2. **Personas are context-dependent.** A persona definition specifies which room/area it applies to. The LLM should switch persona based on context, following the LLM role specified in each area's PROTOCOL.md frontmatter.
3. **Skills are composable.** Skills should be defined as discrete, composable units. A workflow combines skills; a persona activates a set of skills. Avoid monolithic skill definitions.
4. **Document interactions.** When the LLM applies a skill or switches persona, it should briefly note the transition if it affects the human's experience. Transparency about operational mode builds trust.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Foundation Protocol]].