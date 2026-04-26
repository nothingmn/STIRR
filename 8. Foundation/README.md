# The Foundation

Templates, AI configuration, system files, and other infrastructure that supports the palace but is not part of the knowledge it contains. This is LLM home territory -- the machinery that makes the rest of the palace work. You govern; the LLM operates. Human intervention is governance, not operation.

## How this room works

SYSTEM mode, system substrate, LLM unrestricted. The Operations role has the freest rein in the vault because this room IS the LLM's domain. It creates and maintains skills, personas, profiles, and workflows; manages template libraries; runs maintenance operations; monitors system health; and updates configuration. It may not delete skills or personas without human review, change architectural decisions without your approval, or modify the frontmatter schema or PROTOCOL.md without updating root documents first.

## What you do here

- **You govern. The LLM operates.** This is your control room, but the machinery runs itself.
- **Templates define how every note starts.** Changes to templates propagate across the entire vault. Review them carefully.
- **AI Library contains skills, personas, and workflows** that other rooms invoke. Changes here affect the entire palace's LLM behavior.
- **Config files should rarely need your attention.** The Operations role handles routine maintenance.
- **Do not delete skills or personas** without understanding what other rooms depend on them.

## What moves out

- Templates are used by every room in the vault (referenced, not moved)
- Skills and personas are invoked by agents across the palace (referenced, not moved)
- The Foundation is infrastructure -- its contents stay put and are referenced elsewhere

## Areas

- [[Templates/README.md|Templates]] -- Note templates for all rooms
- [[AI Library/README.md|AI Library]] -- Skills, personas, profiles, workflows
- [[Config/README.md|Config]] -- System configuration, sync state

LLM governance: [[PROTOCOL|Foundation Protocol]]