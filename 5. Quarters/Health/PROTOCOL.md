---

substrate: human-primary
processing_mode: mixed
llm_access: restricted
llm_role: none

type: note
created: 2026-04-25
---

# Health

Medical records, sleep data, and biometric information — the body's documentation.

## What belongs here

- Medical records and appointment notes
- Sleep logs and biometric data exports
- Medication and supplement tracking
- Fitness and exercise logs
- Mental health notes and therapy records
- Symptom tracking and health timelines

## What does NOT belong here

- Personal financial records (those go to [[../Finance/PROTOCOL|Finance Protocol]])
- Recreational activity logs unless tied to health outcomes (those go to [[../Recreation/PROTOCOL|Recreation Protocol]])
- General daily notes about how you feel (those go to [[../Living/PROTOCOL|Living Protocol]])
- People notes about healthcare providers (those go to [[../People/PROTOCOL|People Protocol]])

## Area-specific rules

1. **Restricted LLM access.** The LLM does not read, generate, or modify health notes. This area is human-only. The `llm_role: none` setting is intentional and non-negotiable.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Quarters Protocol]].