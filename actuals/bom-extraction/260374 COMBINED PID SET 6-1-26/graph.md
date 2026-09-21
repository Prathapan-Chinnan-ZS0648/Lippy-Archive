# Graph

The relationships this run's findings depend on: which tag was read from which sheet, and
which findings a report claim traces back to. Unlike `version-compare`/
`drawing-comparison`, there is no second document and no ALIGN stage — every unit traces
to exactly one source document.

```text
documents/bom-extraction/source/260374 COMBINED PID SET 6-1-26.pdf   (27 units extracted, per actuals/bom-extraction/260374 COMBINED PID SET 6-1-26/plan.md; supporting_document_path: "n/a", no second document exists for this use case)
        │  each unit read from its home sheet's datasheet block
        ▼
findings/bom-extraction/260374 COMBINED PID SET 6-1-26/<tag>.md   (one file per unit, description + specification + source + also-referenced-on + notes)
        │
        ▼
reports/bom-extraction/260374 COMBINED PID SET 6-1-26/report.md   (Bill of Materials table + coverage statement — cites findings only)
```

This graph covers only the 27 tags extracted as findings, not the drawing's full tag
population — the instrument bubble population (well over 100 tags) and a 12-line
flowline list are counted and located by sheet in `twin/derived/260374 COMBINED PID SET
6-1-26.md`, but do not appear as nodes in this graph, per
`skills/bom-extraction/skill.md` Module 3's coverage-scoping rule. A future pass that
extracts the instrument population would add those units to `plan.md` and this graph
before filing their findings — never the reverse.
