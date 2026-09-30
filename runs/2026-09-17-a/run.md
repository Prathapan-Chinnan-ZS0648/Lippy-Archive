---
run: 2026-09-17-a
skill: bom-extraction
engine: none — an LLM agent (Claude), invoked directly against bootstrap.md's command
  definitions, not a separate software engine
readers: Claude (single reader; no second, independent reader has run yet)
items: 27
took-ms: not tracked
model-calls: not tracked
model-tokens: not tracked
runs-of-this-code: 1 — this is the only pass so far
scored-against: actuals/ — not yet: nothing in actuals/ has been corrected by a human
  reviewer, so there is no score
---

# Run 2026-09-17-a

The findings under this run are what the agent produced, working directly from
`bootstrap.md`'s command definitions against `documents/`; the actuals beside them
(`actuals/`) are the same files, copied out for a person to confirm or correct. Until a
human reviewer does that, `actuals/` and this run are identical, and there is no
scorecard — matching the reference archive this project is modeled on, whose own
`runs/`/`actuals/` pair is in the same unreviewed state as of the date it was shared.

## The steps, as they ran

1. RESOLVE — read `file-index.md`, confirm the source document and skill resolve
   (`supporting_document_path: "n/a"`, declared valid by `skills/bom-extraction.md`'s
   `document-pairing: single-document` field, per `bootstrap.md` §2)
2. NORMALIZE — build the twin (13 pages, 1 document) and derive the read-through
3. JUDGE — apply `skills/bom-extraction.md` to the planned units, producing 27 findings
4. REPORT — assemble `report.md` from the 27 findings

27 units extracted: 10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 7 CONTROL-VALVE (see
`report.md`). The instrument bubble population and the well-pad flowline list were counted
and located by sheet but not individually extracted as findings this pass — see
`report/report.md`'s "Coverage" section and `pivot.md` Entry 3.
