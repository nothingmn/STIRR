---

substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: clerk

type: note
created: 2026-04-25
---

# Invoicing

Client invoicing records — what was billed, to whom, and whether it was paid.

## What belongs here

- Invoices issued to clients (by number and date)
- Payment receipts and confirmation records
- Outstanding receivables and aging reports
- Invoice templates and rate schedules
- Write-off and bad debt records

## What does NOT belong here

- General account balances (those go to [[../Accounts/PROTOCOL|Accounts Protocol]])
- Tax records (those go to [[../Tax/PROTOCOL|Tax Protocol]])
- Contracts (those go to [[../Legal/PROTOCOL|Legal Protocol]])
- Expense records not tied to invoicing (those go to [[../Accounts/PROTOCOL|Accounts Protocol]])
- Correspondence about invoices (that goes to [[../../4. Gallery/Correspondence/PROTOCOL|Correspondence Protocol]])

## Area-specific rules

1. **Sequential numbering.** Every invoice gets a unique sequential number. Do not reuse numbers or leave gaps without explanation.
2. **Link to accounts.** Paid invoices should link to the corresponding Account entry. The LLM may assist in maintaining these cross-references.
3. **Retain all invoices.** Even voided and written-off invoices remain here with their status. The paper trail must be complete.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Counting House Protocol]].