---
---

# Graph

The relationships this run's findings depend on: which sheet each tagged item was read
from, and how findings trace to the report. Unlike `drawing-comparison`, there is no second
document to check a unit against — this skill extracts from one drawing set only (see
`skills/bom-extraction.md` § The rule and `bootstrap.md` §2's `document-pairing:
single-document` declaration).

```text
documents/source/260374 COMBINED PID SET 6-1-26.pdf   (13 pages, single document, no supporting revision)
        │  each page read from its text layer (sparse) and a rendered raster (primary channel)
        ▼
runs/2026-09-30-a/twin/260374 COMBINED PID SET 6-1-26.pdf/page-001.md … page-013.md   (one twin page per sheet)
        │
        ▼
runs/2026-09-30-a/twin/derived/260374 COMBINED PID SET 6-1-26.pdf.md   (full tag inventory by sheet — 27 extracted + all named-not-extracted tags)
        │  every tag with its own full, legible spec is extracted once, at its "home" sheet
        ▼
runs/2026-09-30-a/findings/<tag>.md   (27 files — one per EQUIPMENT/SAFETY-RELIEF-VALVE/CONTROL-VALVE unit, per skills/bom-extraction.md's Finding shape)
        │
        ▼
runs/2026-09-30-a/report/report.md   (structured Bill of Materials — equipment/PSV/PCV tables, counts, coverage statement, flagged items — cites findings only)
```

A tag that recurs across sheets (e.g. `V-200`, named on its own home sheet and referenced
as a bare flow-destination label on three others) is not a separate node in this graph —
its finding's own "Also referenced on" field carries that cross-reference (`pivot.md` Entry
4). The instrument bubble population and the well-pad flowline list are counted and located
by sheet in `actuals/twin/derived/` but are not findings nodes in this graph — see
`actuals/report/report.md`'s "Coverage" section and `pivot.md` Entry 3 for why.
