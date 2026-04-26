# AI Library

Skills, personas, profiles, and workflows — the operational knowledge that drives LLM behavior within the vault. This area holds LLM configuration and operational knowledge: persona definitions, skill descriptions, workflow specifications, and behavioral profiles. It is the system's self-knowledge: how the assistant operates, what it can do, and how it should behave in each context.

## What belongs here

- Persona definitions and behavioral profiles
- Skill descriptions and capability records
- Workflow specifications and automation scripts
- Prompt templates and system instructions
- AI performance logs and refinement notes

## What does NOT belong here

- Note templates → [[../Templates/README.md|Templates]]
- System configuration files → [[../Config/README.md|Config]]
- Research about AI/ML → [[../../1. Study/Research/README.md|Research]]
- General reference about tools → [[../../2. Library/General Reference/README.md|General Reference]]

## Tips

- **Personas are context-dependent.** A persona definition specifies which room/area it applies to. The assistant switches persona based on context, following the role specified in each area's PROTOCOL.md.
- **Skills are composable.** Skills should be defined as discrete, composable units. A workflow combines skills; a persona activates a set of skills. Avoid monolithic skill definitions.
- **Document interactions.** When the assistant applies a skill or switches persona, it should briefly note the transition if it affects your experience. Transparency about operational mode builds trust.
- **Iterate on performance.** The AI Library is not static. When a persona or skill proves inadequate, document the gap and refine. Include a `last_reviewed` date on persona and skill definitions.

Room rules: [[../PROTOCOL|AI Library Protocol]]