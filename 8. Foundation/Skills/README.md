# Skills

Composable LLM skill definitions — discrete, reusable units of operational knowledge that drive assistant behavior within the vault. This area holds skill definitions: self-contained packages of instructions, scripts, and templates that can be composed into workflows and activated by personas. Each skill is a directory containing a SKILL.md and optional supporting files.

## What belongs here

- Skill definitions (SKILL.md + supporting files)
- Skill compositions and dependency maps
- Skill test scripts and validation logic

## What does NOT belong here

- Persona definitions and behavioral profiles → [[../AI Library/README.md|AI Library]]
- Note templates → [[../Templates/README.md|Templates]]
- System configuration → [[../Config/README.md|Config]]

## Tips

- **Skills are composable.** A workflow combines skills; a persona activates a set of skills. Avoid monolithic skill definitions.
- **Self-contained.** Each skill directory should contain everything needed to execute that skill — instructions, scripts, templates.
- **Document dependencies.** If a skill depends on another skill or a persona, state it explicitly in SKILL.md.
- **Iterate on performance.** When a skill proves inadequate, document the gap and refine. Include a `last_reviewed` date.

Room rules: [[../PROTOCOL|Skills Protocol]]