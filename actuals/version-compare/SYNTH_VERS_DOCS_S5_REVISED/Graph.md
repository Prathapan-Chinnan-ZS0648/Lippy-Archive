# Graph

The relationships this document's findings depend on: which slide in the source deck was
checked against which slide in the supporting deck, and which findings a report claim
traces back to.

```text
documents/source/SYNTH_VERS_DOCS_S5_REVISED.pptx   (12 slides, per Plan.md)
        │  11 slides mapped 1:1 by title/topic against the supporting deck
        │  (slide numbering shifts by one from "Eligibility Criteria" onward)
        │  1 slide ("EV Charging & Interconnection Requirements") has NO counterpart at all
        ▼
documents/supporting/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx   (11 slides)
        ▼
findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/<01..12>-*.md   (one file per slide)
        │
        ▼
reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/Report.md   (verdict-count summary + thematic rollup)
```

This is the first `.pptx` sample in this project, and the first sample where a whole
uncountered unit (a slide) is also accompanied by its own self-annotation naming itself
as new — see `findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/07-EvChargingAndInterconnectionRequirements.md`,
where the ADDED verdict rests on `SectionMap.md`'s independent slide-by-slide absence
check, not on the self-annotation's own claim (per skill Module 6).

The revision also inserts one new agenda line pointing at the new slide
(`findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/02-Agenda.md`) and one new row in the
Evaluation Criteria table alongside four redistributed existing weights
(`findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/10-EvaluationCriteria.md`) — both judged as
independent units from the slide/criterion they reference or sit beside, per Module 1's
one-clause-one-verdict grain.

Verdict totals across all 12 findings files: 38 CHANGED, 11 ADDED, 0 REMOVED,
24 UNCHANGED, 0 NOT ADDRESSED (73 clauses total).
