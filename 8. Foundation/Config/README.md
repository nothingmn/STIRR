# Config

System configuration, sync state, and operational settings — the vault's control panel. This area holds system configuration files: plugin settings, sync state records, vault metadata, and operational parameters. Config is the machine room of the Foundation — it keeps the vault running correctly.

## What belongs here

- Plugin configuration files and settings exports
- Sync state records and conflict logs
- Vault metadata (folder structure, naming conventions)
- Operational parameters and environment descriptions
- System health and diagnostic records

## What does NOT belong here

- Note templates → [[../Templates/README.md|Templates]]
- AI persona and skill definitions → [[../AI Library/README.md|AI Library]]
- Personal preferences not tied to system operation → [[../../5. Quarters/Living/README.md|Living]]
- Reference material about tools → [[../../2. Library/General Reference/README.md|General Reference]]

## Tips

- **Backup before change.** Before modifying a configuration file, preserve the prior version. Use `config-name.bak` or git history. Configuration errors can break the vault; recoverability is essential.
- **Document changes.** When a configuration is changed, record what changed and why. A changelog or commit message is mandatory, not optional.
- **Sync awareness.** Config changes may affect sync behavior. When modifying sync settings, note potential impacts on other devices or collaborators.
- **Separate secrets.** API keys, tokens, and passwords must not be stored in Config files within the synced vault. Use environment variables or a dedicated secrets manager.

Room rules: [[../PROTOCOL|Config Protocol]]