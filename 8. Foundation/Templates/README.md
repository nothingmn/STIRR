# Templates

Note templates for all rooms — the structural foundation of consistent note-taking. This area holds templates used across the vault: note structures for each room and area, frontmatter schemas, and boilerplate content that ensures consistency. Templates are system infrastructure; they define the shape notes take.

## What belongs here

- Note templates for each room and area in the vault
- Frontmatter schemas and property definitions
- Boilerplate content (headers, sections, prompts)
- Templater scripts and automation templates
- Template documentation and usage guides

## What does NOT belong here

- Actual notes using templates → those live in their proper rooms
- Configuration files for plugins → [[../Config/README.md|Config]]
- AI/LLM persona definitions → [[../AI Library/README.md|AI Library]]
- Content drafts → those belong in their respective rooms

## Tips

- **One template per room.** Each room and area should have at least one corresponding template. Templates are named to match their destination: `daily-note`, `research-note`, `invoice-record`, etc.
- **Frontmatter is canonical.** The frontmatter defined in a template is the canonical schema for notes in that area. Properties added ad hoc to individual notes should be evaluated for template inclusion.
- **Version templates.** When a template changes materially, increment a version in a comment within the template. This helps diagnose issues caused by notes using outdated template structures.
- **Document usage.** Each template should contain a brief comment or linked documentation explaining when and how to use it. A template without instructions is infrastructure without a user.

Room rules: [[../PROTOCOL|Templates Protocol]]