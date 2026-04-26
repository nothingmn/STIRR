---

substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: clerk
created: 2026-04-24
status: record

type: note
---

# Counting House Protocol

Mode: **PRECISION** | Substrate: **llm-augmented** | LLM: **Clerk (permissive)**

Financial records, tax documents, invoicing, receipts, corporate documents, legal materials. Pure precision. Nothing exploratory. Everything is a record.

## Structure

```
6. Counting House/
+-- _MoC.md                Room hub
+-- Accounts/              By entity or fiscal year
+-- Invoicing/             Client invoicing records
+-- Tax/                   Tax filings and supporting documents
+-- Legal/                 Contracts, employment docs, legal matters
+-- Compliance/            Regulatory filings, audit records
```

## LLM Rules — Clerk

Handles the mechanical heart of financial record-keeping. Financial records are pure explicit data. The Conjugate Pair displacement risk is minimal because there is almost no tacit knowledge embedded in a receipt or an invoice.

**May:**
- Organize and categorize financial records by year, entity, and type
- Generate invoices, receipts, and financial summaries from templates
- Flag anomalies, missing records, and overdue items
- Cross-reference tax documents and identify deductible items
- Produce year-end reports and financial statements

**May NOT:**
- Make financial decisions (investment, pricing, strategy are judgment calls — tacit)
- Submit tax filings or legal documents autonomously (all regulatory filings require human review)
- Waive invoices or adjust terms without approval

The Clerk reads the artifacts of financial practice without asking you to explain your financial knowledge. It processes what happened. It does not try to understand why.

## Frontmatter Template

```yaml
---
substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: clerk
created: {{date}}
status: record
year: {{fiscal-year}}
---
```

## Sub-Area Protocols

- [[Accounts/PROTOCOL|Accounts Protocol]] — Business and freelance financial records
- [[Invoicing/PROTOCOL|Invoicing Protocol]] — Client invoicing records
- [[Tax/PROTOCOL|Tax Protocol]] — Tax records and filings
- [[Legal/PROTOCOL|Legal Protocol]] — Contracts, employment, legal matters
- [[Compliance/PROTOCOL|Compliance Protocol]] — Annual reporting, regulatory filings
