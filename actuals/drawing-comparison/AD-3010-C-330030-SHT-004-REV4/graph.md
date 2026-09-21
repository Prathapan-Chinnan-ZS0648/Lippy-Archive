# Graph

The relationships this run's findings depend on: which callout in the source document was
checked against which callout in the supporting document, and which findings a report
claim traces back to.

```text
documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf   (22 units, per actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/plan.md)
        │  each unit compared 1:1 against, by grid position + member/field identity
        ▼
documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf   (same grid, same sheet layout)
        │
        ▼
findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/<Title1|Rev1|Note1|Memb1..16|Ctrl1..3>.md   (one file per unit, verdict + grid cite + both-sided quote — unit tags e.g. MEMB-13 stay as-is in content, only filenames are CamelCase)
        │
        ▼
reports/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/report.md   (verdict-count summary + materiality rollup — cites findings only)
```

Unlike `version-compare`'s S1 sample, the source and supporting documents here do **not**
share an identical clause structure to walk 1:1 — the great majority of the sheet's member
callouts were left unclassified (§`plan.md`), so this graph covers only the 22 callouts
actually judged, not every callout on the sheet. A callout with no counterpart at the same
grid position in the supporting sheet would be judged ADDED (source-only) or REMOVED
(supporting-only) per `skills/drawing-comparison/skill.md`, not assumed absent from the
graph; no such case occurred among the 22 units in this run — `MEMB-6` and `MEMB-7` are
ADDED (new braces with no prior grid occupant), not "no counterpart found."
