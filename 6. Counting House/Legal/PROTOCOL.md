---

substrate: llm-augmented
processing_mode: precision
llm_access: permissive
llm_role: clerk

type: note
created: 2026-04-25
---

# Legal

Contracts, employment documents, and legal matters — the binding obligations and protections.

## What belongs here

- Contracts and agreements (signed and drafts)
- Employment documents (offer letters, NDAs, non-competes)
- Intellectual property records (trademarks, copyrights, patents)
- Dispute and litigation records
- Legal correspondence and attorney communications

## What does NOT belong here

- Tax filings (those go to [[../Tax/PROTOCOL|Tax Protocol]])
- Regulatory compliance filings (those go to [[../Compliance/PROTOCOL|Compliance Protocol]])
- General correspondence (those go to [[../../4. Gallery/Correspondence/PROTOCOL|Correspondence Protocol]])
- Personal financial records (those go to [[../../5. Quarters/Finance/PROTOCOL|Finance Protocol]])
- Property records (those go to [[../../5. Quarters/Home/PROTOCOL|Home Protocol]])

## Area-specific rules

1. **Do not modify signed documents.** Once a contract is signed, the file is immutable. Amendments and addenda are separate documents. The LLM must never alter a signed legal record.
2. **Version control for drafts.** Track contract draft versions explicitly: `v1`, `v2`, `final`, `signed`. Do not overwrite an earlier draft with a later one.
3. **Confidentiality flags.** Some legal documents are subject to NDA or privilege. Use frontmatter tags to flag confidentiality level and restrict LLM processing accordingly.

## Room protocol

For the full rules governing this room, see [[../PROTOCOL|Counting House Protocol]].