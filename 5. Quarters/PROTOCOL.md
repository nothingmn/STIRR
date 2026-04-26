---

substrate: human-primary
processing_mode: mixed
llm_access: restricted
llm_role: none
created: 2026-04-24
status: reference

type: note
---

# Quarters Protocol

Mode: **MIXED** | Substrate: **human-primary** | LLM: **None (restricted)**

Everything personal but not primarily intellectual: health, family, finances, hobbies, the material conditions of life. The sanctuary of the palace.

## Structure

```
5. Quarters/
+-- _MoC.md                Room hub
+-- People/                Relationships, family, contacts
+-- Health/                Medical, sleep, biometric data
+-- Finance/               Personal financial planning
+-- Home/                  Property, appliances, household
+-- Recreation/            Hobbies, sports, outdoors, travel
+-- Living/                Day-to-day personal notes
```

## LLM Rules — None

The tightest LLM restrictions in the vault. Personal, tacit, emotionally embedded knowledge is the most vulnerable to analytic displacement.

**May:**
- Format and organize information on explicit request
- Calculate and tabulate when asked
- Search and retrieve within existing notes

**May NOT:**
- Initiate work in the Quarters without your request
- Offer interpretations of personal information
- Proactively suggest optimizations for personal life
- Generate content about relationships, health, or personal experience

The Quarters are the palace's sanctuary. The LLM does not enter uninvited.

## Frontmatter Template

```yaml
---
substrate: human-primary
processing_mode: mixed
llm_access: restricted
llm_role: none
created: {{date}}
---
```

## Sub-Area Protocols

- [[People/PROTOCOL|People Protocol]] — Relationships, family, contacts
- [[Health/PROTOCOL|Health Protocol]] — Medical, sleep, wellness data
- [[Finance/PROTOCOL|Finance Protocol]] — Personal tax, investments, household finances
- [[Home/PROTOCOL|Home Protocol]] — Household maintenance, device manuals
- [[Recreation/PROTOCOL|Recreation Protocol]] — Hobbies, sports, outdoor activities
- [[Living/PROTOCOL|Living Protocol]] — Day-to-day personal, shopping, household
