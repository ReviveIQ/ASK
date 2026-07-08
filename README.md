# ASK — Access to Services through Knowledge

Repository for Remarkable Disability Services' response to **IFP 2026-AS-9400**
(Florida Developmental Disabilities Council) and the resulting ASK Web-based
Platform build.

## Contents

```
ASK/
├── prototype/
│   └── index.html          # Interactive front-end prototype (Work Sample 1)
├── proposal-documents/
│   ├── IFP-2026-AS-9400-Proposal-Narrative-DRAFT.docx
│   ├── IFP-2026-AS-9400-Work-Plan-COMPLETED.docx
│   ├── IFP-2026-AS-9400-Budget-Request-COMPLETED.docx
│   ├── IFP-2026-AS-9400-References-COMPLETED.docx
│   ├── IFP-2026-AS-9400-Scoring-Rubric-UPDATED.docx   # internal progress tracker
│   ├── templates/          # blank templates as issued by FDDC
│   └── source-ifp/         # original IFP + official Q&A, for reference
└── README.md
```

## Prototype

Open `prototype/index.html` directly in any browser — no build step, no
dependencies, no server required.

**What it demonstrates:**
- Full information architecture across all 9 ASK life domains (Diagnosis,
  Education, Employment, Asset Management, Health Insurance, Housing, Legal,
  Social Connection, Services & Supports)
- Three navigation pathways: by topic, by life stage, by family story
- Site-wide search across all decision aids and explainers
- A grounded AI assistant that answers only from a small in-prototype
  knowledge base and cites its source for every answer — demonstrating the
  citation-based, human-reviewable approach required by the IFP's Q&A
  responses (no live LLM call; this is a static demo of the intended behavior)

**What it is not:** a production build. No backend, no real content database,
no real AI model call. See "Proposed Technical Architecture" in the Proposal
Narrative for what the production system is scoped to use (PostgreSQL +
pgvector, S3, a headless CMS, and this same Git-based workflow for
application code).

## Proposal documents

The `proposal-documents/` folder contains the drafted response to the IFP.
Several sections still contain `[INSERT]` placeholders where organization-
specific facts (staff bios, real budget figures, real references) are
required before submission — see `IFP-2026-AS-9400-Scoring-Rubric-UPDATED.docx`
for a live-tracked status of every scoring criterion.

**Submission is due July 9, 2026, 4:00 p.m. EDT**, via FDDC's Dropbox link
(see the source IFP for the link — not reproduced here).

## Status

See the Scoring Rubric tracker for the authoritative, up-to-date status of
every rubric line item. As of this commit: 10 of 14 scoring lines fully
addressed; remaining gaps are budget figures, real references, and a few
staff bio details.
