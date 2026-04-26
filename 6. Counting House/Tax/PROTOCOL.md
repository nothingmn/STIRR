---

substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: clerk

type: note
created: 2026-04-25
---

# Tax

Tax filings and supporting documents — the compliance record for governmental obligations.

## What belongs here

- Filed tax returns and supporting schedules
- Correspondence with tax authorities
- Tax planning notes and projections
- Deduction and credit documentation
- Year-end tax preparation checklists

## What does NOT belong here

- General financial records (those go to [[../Accounts/PROTOCOL|Accounts Protocol]])
- Invoices (those go to [[../Invoicing/PROTOCOL|Invoicing Protocol]])
- Contracts (those go to [[../Legal/PROTOCOL|Legal Protocol]])
- Personal financial planning (those go to [[../../5. Quarters/Finance/PROTOCOL|Finance Protocol]])
- Regulatory filings unrelated to tax (those go to [[../Compliance/PROTOCOL|Compliance Protocol]])

## Area-specific rules

1. **Precision is non-negotiable.** The LLM may assist with organizing, categorizing, and formatting tax data, but all figures on filed returns must be human-verified.
2. **Retain everything.** Tax records must be retained for the legally mandated period (typically 7 years, varies by jurisdiction). Do not delete or archive prematurely.
3. **Supporting documents linked.** Every line item on a tax return should have its supporting document either linked or filed alongside. The LLM may help trace these links.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Counting House Protocol]].