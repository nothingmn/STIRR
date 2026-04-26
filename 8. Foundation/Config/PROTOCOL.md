---

substrate: system
processing_mode: system
llm_access: unrestricted
llm_role: operations

type: note
created: 2026-04-25
---

# Config

System configuration, sync state, and operational settings — the vault's control panel.

## What belongs here

- Plugin configuration files and settings exports
- Sync state records and conflict logs
- Vault metadata (folder structure, naming conventions)
- Operational parameters and environment descriptions
- System health and diagnostic records

## What does NOT belong here

- Note templates (those go to [[../Templates/PROTOCOL|Templates Protocol]])
- AI persona and skill definitions (those go to [[../AI Library/PROTOCOL|AI Library Protocol]])
- Personal preferences not tied to system operation (those go to [[../../5. Quarters/Living/PROTOCOL|Living Protocol]])
- Reference material about tools (that goes to [[../../2. Library/General Reference/PROTOCOL|General Reference Protocol]])

## Area-specific rules

1. **System-level access.** The LLM has unrestricted access to Config files. It may read, generate, and modify configuration in support of vault operations — including sync resolution and plugin setup.
2. **Backup before change.** Before modifying a configuration file, preserve the prior version. Use `config-name.bak` or git history. Configuration errors can break the vault; recoverability is essential.
3. **Document changes.** When a configuration is changed, record what changed and why. A changelog or commit message is mandatory, not optional.
4. **Separate secrets.** API keys, tokens, and passwords must not be stored in Config files within the synced vault. Use environment variables or a dedicated secrets manager.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Foundation Protocol]].