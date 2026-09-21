# Detection

Document quirks and edge cases detected while building the twin and reading these
documents, ahead of judgment. Recorded here per-run; anything that recurs across
independent samples is a candidate for `skills/<usecase>/PatternLog.md` (see
`Bootstrap.md` §8.2, the promotion bar).

| Quirk | Where observed | Handling |
|---|---|---|
| Self-annotation | The source document (revised issue) marks some of its own additions/changes with bracketed tags (e.g. a marker after new or modified text) in Definitions, Objectives, Scope of Work, Technical Requirements, Functional Requirements, Eligibility Criteria, Deliverables, Project Timeline, Evaluation Criteria, Insurance & Bonding, Commercial Terms, Terms & Conditions, and both appendices. | Used only as a cross-check, never as the sole basis for a verdict — every marked and unmarked clause was independently compared against the supporting document's text per `skills/version-compare/Skill.md`. Logged in `skills/version-compare/PatternLog.md` Entry 1 (not promoted — single sample so far). |
| Row renumbering | Several tables (Deliverables, Pricing Form, Appendix C) insert new rows partway through the sequence, shifting the numeric/lettered IDs of unrelated rows below the insertion point (e.g. `A-9` in the original becomes a different line item's position in the revised). | Compared rows by their content/label, not their positional ID, to avoid a false CHANGED verdict on a row that only moved position. |
| Absence without a marker | One checklist line in the supporting document (RFID/barcode certification) has no counterpart in the source document's checklist, and the source carries no `[REMOVED]`-style marker for it — the self-annotation convention marks additions/changes but not removals. | Detected only by confirming the supporting document's line was searched for and not found in the source; verdict REMOVED per skill rules, not inferred from any marker. |
| No printed page numbers | Neither PDF prints page numbers on its pages (aside from the table of contents' page references, which are followed but not machine-visible on the pages themselves). | Adopted the counting convention in `Bootstrap.md`: pages counted from page 1 of the file. |
