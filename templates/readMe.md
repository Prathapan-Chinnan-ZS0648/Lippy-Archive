# templates/ — blank skeletons for a new sample

Every file a sample owns (`bootstrap.md` §12's diagram), blank, with every front-matter
field named. Onboarding a new sample means copying the relevant skeletons into its new
`<sample>/` folder and filling them in as the pipeline runs (§12.1) — never
inventing a front-matter field that isn't already named here.

| Template | Goes to |
|---|---|
| `detection.md` | `<sample>/actuals/detection.md` |
| `plan.md` | `<sample>/actuals/plan.md` |
| `graph.md` | `<sample>/actuals/graph.md` |
| `twinPage.md` | `<sample>/actuals/twin/<document>/<unit>.md` — one copy per unit |
| `sectionMap.md` | `<sample>/actuals/twin/sectionMap.md` |
| `finding.md` | `<sample>/actuals/findings/<unit>.md` — one copy per unit |
| `report.md` | `<sample>/actuals/report/report.md` |
| `manifest.md` | `<sample>/manifest.md` |
| `prompting.md` | `<sample>/prompting.md` |
| `manualValidate.md` | `<sample>/HITL/manualValidate.md` (only once `MANUAL VALIDATE` is first run for this sample — not created up front) |

A few of these templates carry fields specific to a *shape* rather than a specific use
case (e.g. `finding.md`'s verdict fields) — the applicable `skills/<usecase>/skill.md`'s
own "required output shape" (its Module 5 or equivalent) is always the final authority on
exactly which fields a finding needs; treat the bracketed placeholders here as a floor,
not a ceiling, and add whatever the resolved skill's own output requirements name.

`templates/` itself is never a live sample. Nothing in it is ever read as if it were real
input, and `RESOLVE` (`bootstrap.md` §5) never resolves against it.
