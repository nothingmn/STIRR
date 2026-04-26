---

substrate: human-primary
processing_mode: mixed
llm_access: restricted
llm_role: none

type: note
created: 2026-04-25
---

# Finance

Personal financial planning, budgets, and monetary records — the household ledger.

## What belongs here

- Budget worksheets and spending logs
- Savings and investment notes
- Financial goal tracking
- Insurance and policy records
- Major purchase records and depreciation notes
- Personal financial planning documents

## What does NOT belong here

- Business/freelance accounting (that goes to [[../../6. Counting House/Accounts/PROTOCOL|Accounts Protocol]])
- Invoices to clients (those go to [[../../6. Counting House/Invoicing/PROTOCOL|Invoicing Protocol]])
- Tax filings (those go to [[../../6. Counting House/Tax/PROTOCOL|Tax Protocol]])
- Legal contracts (those go to [[../../6. Counting House/Legal/PROTOCOL|Legal Protocol]])
- Health expenses without financial context (those go to [[../Health/PROTOCOL|Health Protocol]])

## Area-specific rules

1. **Restricted LLM access.** The LLM does not read, generate, or modify financial notes. This area is human-only. The `llm_role: none` setting is intentional and non-negotiable.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Quarters Protocol]].