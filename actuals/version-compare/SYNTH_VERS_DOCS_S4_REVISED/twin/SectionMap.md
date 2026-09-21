# Section map

This sample is a multi-sheet spreadsheet workbook (`.xlsx`), not a paginated document —
the unit of location is a **sheet**, not a page. Maps each sheet to its presence/absence
in each workbook.

| Unit (sheet) | SYNTH_VERS_DOCS_S4_REVISED.xlsx (source) | SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx (supporting) |
|---|---|---|
| Cover | present | present |
| Requirements Matrix | present (22 rows, 17 requirement IDs) | present (19 rows, 15 requirement IDs) |
| Pricing Form | present (13 rows, 11 line items) | present (10 rows, 8 line items) |
| Reference Form | present (11 rows, 3 reference columns filled) | present (10 rows, headers only, unfilled) |
| Project Timeline | present (11 rows) | present (10 rows) |
| Cybersecurity Addendum | present (9 rows, 5 requirement IDs) — **new sheet, no counterpart** | absent |

This is the first sample in this project where the unit-to-unit mapping includes a sheet
present in the source workbook with **no counterpart sheet at all** in the supporting
workbook (as opposed to S2's "[Reserved]" case, where a same-numbered section persisted
with different content) — see `actuals/SYNTH_VERS_DOCS_S4_REVISED/Detection.md`.
