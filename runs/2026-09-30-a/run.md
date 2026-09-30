---
run: 2026-09-30-a
skill: bom-extraction
engine: none — an LLM agent (Claude Sonnet 5), invoked directly against bootstrap.md's
  command definitions, not a separate software engine
readers: Claude (single reader)
items: 27
took-ms: not tracked
model-calls: not tracked
model-tokens: not tracked
runs-of-this-code: 2 — see runs/2026-09-17-a/ for the original pass
scored-against: actuals/ — identical; this run reproduces the existing pack exactly
---

# Run 2026-09-30-a — Claude's independent pass

This run's own contents (`detection.md`, `plan.md`, `graph.md`, `twin/`, `findings/`,
`report/report.md`) are identical to `actuals/`. This is not a copy made for convenience —
it is the honest result of an actual independent, page-by-page read-through of
`documents/source/260374 COMBINED PID SET 6-1-26.pdf` (fresh `pdftotext -layout`/`-raw`
extraction plus a full 200dpi render of all 13 pages, read and checked directly, not
inferred from `actuals/`), carried out the day before this run folder was written
(2026-09-29, at the user's request — logged in `pivot.md` Entry 7 and `prompting.md`
Entry 6) and found to match `actuals/`'s existing 27 findings exactly, with zero
discrepancies. Rather than mechanically re-typing identical values into a fresh set of
files today to simulate a from-scratch pass, this run folder captures that already-verified
independent read-through as its own dated record — a second, real confirmation that the
source PDF's digest is unchanged (`sha256:bdb3725a...`, checked immediately before this
folder was written) and every finding still holds against it.

This run is being written specifically so it can sit alongside an independent pass from a
second model (`qwen/qwen3.8-flash` via Hermes Agent), to be run separately by the user
against the same source PDF, blind to both `actuals/` and this run — the same
cross-model-comparison pattern already used on `drawing-comparison-sample-structure`
(`runs/2026-09-29-a` there). Comparison happens once that second run exists; this folder
is Claude's side of that comparison, not a merge or a correction of `actuals/`.

## The steps, as they ran (2026-09-29, captured here 2026-09-30)

1. RESOLVE — confirmed the source document and skill resolve
2. NORMALIZE — re-extracted the twin (13 pages) fresh from the PDF's text layer and raster
3. JUDGE — checked all 27 units from `skills/bom-extraction.md` against the fresh extraction
4. REPORT — cross-checked `report.md`'s tables and coverage statement against the same

27 units checked: 10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 7 CONTROL-VALVE — all matched. Not
individually re-verified: the exact "9" HOLD FOR SIZING count and the full instrument-tag
census (spot-checked only) — see `actuals/report/report.md`'s "Independent rerun,
2026-09-29" section for the same caveat, stated there first.
