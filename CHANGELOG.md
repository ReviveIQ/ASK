# Changelog

All notable changes to the ASK prototype and proposal documents.

## Unreleased

### Prototype — read-aloud (text-to-speech)
- Added a "Read this page aloud" control (bottom-left, every page) using the
  browser's built-in Web Speech API — no external service or API key
  required, works offline
- Includes pause/resume, stop, and an adjustable reading speed (Slow/Normal/
  Fast), since speed control matters for users who read with difficulty
- Automatically stops reading when navigating to a different page, so it
  never reads stale content
- Strips decorative/hidden elements from the read-aloud text so icons aren't
  announced

### Prototype — navigation and governance pages
- Made the "ASK Resource Hub" header a working link back to the home page
  (previously static text with no way to return home except back-button)
- Added four new footer-linked pages: Terms of Use, Privacy Policy,
  Accessibility Statement, and Non-Discrimination Notice
  - Privacy Policy's AI data-handling section and the Accessibility
    Statement's current-status section are written in full, sourced
    directly from FDDC's official Q&A and the prototype's actual verified
    implementation
  - All other legal-specific content is explicitly marked `[INSERT]` with a
    visible "needs legal review" banner — not fabricated legal text
- Confirmed all 8 decision aids are indexed and discoverable via site-wide
  search (Asset Management, Housing, Services & Supports, Social
  Connection, Diagnosis, Education, Employment, Health)

### Prototype — accessibility (keyboard, screen reader, voice control)
- Added keyboard operability to all interactive elements (topic tiles, module
  rows, accordion headers, story cards, life-stage cards) via a shared
  `enhanceInteractiveElements()` helper — previously these were unreachable
  and inoperable by keyboard alone
- Added a skip-to-main-content link and wrapped page content in a `<main>`
  landmark for screen reader navigation
- Added `aria-live` regions to search results and the AI chat log so screen
  readers announce dynamic content updates
- Added `aria-expanded` / `aria-controls` to all 5 accordion components
  (Asset Management, Housing, Services & Supports, Social Connection, and
  the shared renderer used by Diagnosis, Education, Employment, and Health)
  so expand/collapse state is announced correctly
- Added `aria-label`s to previously unlabeled icon-only controls (search
  clear button, chat close button) so voice control software (e.g. Dragon)
  and screen readers can reference them
- Marked purely decorative icons `aria-hidden="true"` throughout
- Added visible focus-ring styling (`:focus-visible`) across all interactive
  elements

### Infrastructure
- Renamed `prototype/` to `docs/` and enabled GitHub Pages (Branch: main,
  Folder: /docs) — prototype now has a live URL at
  https://reviveiq.github.io/ASK/

### Proposal documents
- Updated Section 1 (Rubric 2.3) to cite the prototype's concrete,
  implemented accessibility features (keyboard operability, screen reader
  landmarks, voice control labels, and the read-aloud function) as verified
  evidence, distinct from the still-pending formal third-party audit
- Updated Section 1 (Rubric 2.1) to reference the live prototype URL and
  correct the domain count from 3 to all 9 ASK life domains
- Updated Section 1 (Rubric 2.3) with an honest accessibility-experience
  disclosure: no prior formal Section 508/WCAG audit, backed by relevant
  adjacent experience (Zoom-based accessible programming) and a concrete
  plan to engage a named third-party accessibility testing subcontractor
- Updated the Accessibility Testing budget line to reflect the named
  subcontractor plan
- Filled Work Plan Template with month-by-month plan covering all 4 Scope of
  Work items
- Filled Budget Request Template with narrative for all line items
  (dollar figures still pending)
- Filled References Template (real references still pending)
- Drafted full 5-section Proposal Narrative, mapped directly to every
  Scoring Rubric line item
- Incorporated Remarkable Disability Services' real organizational
  background, staff, and the Needs Nest prior-work history into Section 1
  and Section 2
- Incorporated FDDC's official Q&A responses (AI data handling, 62-file
  content count, US-only hosting requirement) into the narrative and budget
- Added a live-tracked Scoring Rubric status document

### Prototype
- Initial build: landing page, Asset Management domain (topic, decision aid,
  explainer), grounded AI assistant demo
- Added life-stage navigation (5 stages)
- Added Housing and Legal & Decision-Making Supports domains
- Added Services & Supports and Social & Community Inclusion domains
- Added Diagnosis & Early Support, Education, Employment & Volunteering,
  and Health Insurance domains — all 9 IFP life domains now represented
- Made life-stage detail view fully data-driven, pulling curated modules
  from across all 9 domains instead of a single hardcoded domain
- Added site-wide search (title/domain/keyword matching) with live results
  dropdown, available from every page
- Added a fallback from empty search results directly into the AI assistant,
  pre-filled with the user's search query
