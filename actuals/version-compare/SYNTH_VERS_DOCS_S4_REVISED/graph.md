# Graph

The relationships this document's findings depend on: which sheet in the source workbook
was checked against which sheet in the supporting workbook, and which findings a report

```text
documents/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx   (6 sheets, per plan.md)
        │  5 sheets compared 1:1 by name against the supporting workbook
        │  1 sheet ("Cybersecurity Addendum") has NO counterpart at all
        ▼
documents/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx   (5 sheets)
        ▼
findings/version-compare/SYNTH_VERS_DOCS_S4_REVISED/<01..06>-*.md   (one file per sheet)
        │
        ▼
reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md   (verdict-count summary + thematic rollup)
```

This is the first sample in this project where a unit (here, a whole sheet) exists in the
source with **no counterpart sheet at all** in the supporting workbook — a step beyond
S2's "[Reserved]" case, where a same-numbered/titled section persisted with emptied
content. Every clause within the uncountered sheet (Cybersecurity Addendum) is ADDED
individually, per `findings/version-compare/SYNTH_VERS_DOCS_S4_REVISED/06-CybersecurityAddendum.md`.

Within the Requirements Matrix sheet, one requirement (R-07) has no counterpart in the
source workbook despite the source workbook's own annotation claiming it was "replaced
by" a new requirement (R-17) — the mapping was resolved by content (per skill Module 2
stage MAP), not by trusting that annotation, since R-17's actual wording is a distinct
requirement, not a reworded R-07. See
`findings/version-compare/SYNTH_VERS_DOCS_S4_REVISED/02-RequirementsMatrix.md`.
