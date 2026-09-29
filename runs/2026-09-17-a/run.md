---
run: 2026-09-17-a
skill: drawing-comparison
engine: none — an LLM agent (Claude), invoked directly against bootstrap.md's command
  definitions, not a separate software engine
readers: Claude (single reader; no second, independent reader has run yet)
items: 22
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

1. RESOLVE — read `file-index.md`, confirm both documents and the skill resolve
2. NORMALIZE — build the twin (2 pages, 1 per document) and derive both read-throughs
3. JUDGE — apply `skills/drawing-comparison.md` to 22 planned units, producing 22 findings
4. REPORT — assemble `report.md` from the 22 findings

22 units judged: 4 ADDED, 15 CHANGED, 3 UNCHANGED, 0 REMOVED (see `report.md`). Two of the
22 findings and their neighbors were revisited on 2026-09-17 after an independent second
attempt at the same document pair flagged a missed pattern — see `prompting.md`'s
2026-09-17 entry at the project root for that correction; this run folder reflects the
corrected state, not the original first pass.
