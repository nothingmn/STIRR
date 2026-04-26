---
title: "Skills — Protocol"
subtitle: "Room-Level LLM Governance"
version: 1.2
created: 2026-04-26
updated: 2026-04-26
substrate: system
processing_mode: system
llm_access: unrestricted
llm_role: operations
status: active
type: config
---

# Skills Protocol

Mode: **SYSTEM** | Substrate: **system** | LLM: **Operations (unrestricted)**

STIRR operational skills — reusable procedure definitions for AI agents. Each skill is a self-contained directory with a SKILL.md that defines triggers, steps, and guardrails.

## Structure

```
8. Foundation/Skills/
+-- PROTOCOL.md                  Area protocol (this file)
+-- README.md                    Area description and what belongs here
+-- _MoC.md                      Area navigation hub
+-- stirr-obsidian-operations/   Vault operations and hygiene
```

## LLM Rules — Operations

Unrestricted. The LLM may read, reference, and propose updates to any skill.

**May:**
- Read and apply any skill during relevant operations
- Propose updates to skill procedures when gaps are found
- Create new skills for operational patterns that recur
- Compose skills into workflows (a workflow combines multiple skills)

**May NOT:**
- Delete skills without human review
- Modify a skill's governance scope without updating PROTOCOL.md

## What belongs here

- STIRR operational skills (built-in)
- User-defined AI skills for vault operations
- Skill documentation and revision notes

## What does NOT belong here

- Persona definitions → [[../AI Library/PROTOCOL|AI Library Protocol]]
- Note templates → [[../Templates/PROTOCOL|Templates Protocol]]
- System configuration → [[../Config/PROTOCOL|Config Protocol]]

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Foundation Protocol]].