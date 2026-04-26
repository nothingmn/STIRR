---
substrate: system
processing_mode: system
llm_access: unrestricted
llm_role: operations
---

# Templates

Note templates for all rooms — the structural foundation of consistent note-taking.

## What belongs here

- Note templates for each room and area in the vault
- Frontmatter schemas and property definitions
- Boilerplate content (headers, sections, prompts)
- Templater scripts and automation templates
- Template documentation and usage guides

## What does NOT belong here

- Actual notes using templates (those live in their proper rooms)
- Configuration files for plugins (those go to [[../Config/PROTOCOL|Config]])
- AI/LLM persona definitions (those go to [[../AI Library/PROTOCOL|AI Library]])
- Content drafts (those belong in their respective rooms)

## Area-specific rules

1. **System-level access.** The LLM has unrestricted access to templates. It may create, modify, and organize templates without additional permission — since templates shape structure, not content.
2. **One template per room.** Each room and area should have at least one corresponding template. Templates are named to match their destination: `daily-note`, `research-note`, `invoice-record`, etc.
3. **Frontmatter is canonical.** The frontmatter defined in a template is the canonical schema for notes in that area. Properties added ad hoc to individual notes should be evaluated for template inclusion.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Foundation Protocol]].