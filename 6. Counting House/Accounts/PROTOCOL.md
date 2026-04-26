---

substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: clerk

type: note
created: 2026-04-25
---

# Accounts

Financial accounts organized by entity or fiscal year — the Counting House's ledger.

## What belongs here

- Income and expense records by entity or fiscal year
- Bank and payment account summaries
- Financial statements and reconciliation notes
- Budget vs. actual tracking for business entities
- Cash flow records and projections

## What does NOT belong here

- Client invoices (those go to [[../Invoicing/PROTOCOL|Invoicing Protocol]])
- Tax filings and supporting documents (those go to [[../Tax/PROTOCOL|Tax Protocol]])
- Contracts and legal documents (those go to [[../Legal/PROTOCOL|Legal Protocol]])
- Personal financial records (those go to [[../../5. Quarters/Finance/PROTOCOL|Finance Protocol]])
- Regulatory filings (those go to [[../Compliance/PROTOCOL|Compliance Protocol]])

## Area-specific rules

1. **Precision required.** Financial records demand accuracy. The LLM may assist with categorization, formatting, and reconciliation — but all figures must be human-verified before being treated as authoritative.
2. **Reconcile regularly.** Account records should be reconciled against bank statements at least monthly. The LLM may flag discrepancies but may not resolve them without human direction.
3. **Retain records.** Do not delete account records, even for closed periods. They support tax preparation, audit, and historical analysis.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Counting House Protocol]].