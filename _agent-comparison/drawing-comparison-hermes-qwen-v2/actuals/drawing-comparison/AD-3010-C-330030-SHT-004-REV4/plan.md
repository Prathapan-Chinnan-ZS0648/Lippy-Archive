---
skill: drawing-comparison
skill-version: 1
verified-by: author cross-check
verified-on: 2026-09-21
verification: corrected
---
# Plan of Action · this run

| # | Stage | Parameters for this pair |
|---|---|---|
| 1 | UNDERSTAND | Areas = title block / rev-table / notes / key-plan / plan-left (PL.111.500, cols 1/2 + mid line, bays A–F) / plan-right (PL.112.800) / two ladder dim bands; grain = one callout; ids = TITLE-n, REV-n, NOTE-n, MEMB-n, CTRL-n (Module 3) |
| 2 | ALIGN | Position pairing from `pdftotext -bbox` word coordinates (display-space pts), tolerance 30–60pt; never text-match alone (this sheet repeats "SW(50N 10V)" 8× and "SW(30N 10V)" 20×+); clouds/balloons used only as cross-evidence, never as the aligner |
| 3 | CLASSIFY | Four verdicts; UNCHANGED recorded as CTRL-n findings for the sampled control nodes (Module 1 "unchanged is a finding") |
| 4 | JUDGE | material true = member size, connection design, dimension/geometry; false = title wording, rev rows/boxes, marker layer, furniture |
| 5 | RETRIEVE | Old-side values pulled from `actuals/.../twin/` extraction only (Module 2 rule) |
| 6 | VALIDATE | Module 4 checklist (recorded in manifest.md) |
| 7 | GENERATE | `findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/<unit>.md`, Module 5 shape |

**Running-number rule (fixed here per Module 3's per-run recording requirement):** MEMB-1/2 = upper ladder dim pair, MEMB-3 = T171 member, MEMB-4/5 = the two Grid D weld-count changes (col 1 then col 2 — the skill's Module 3 example pins MEMB-4 to "Grid D col.1"), MEMB-6…12 = the seven count completions top→bottom reading order, MEMB-13/14 = lower ladder dim pair, MEMB-15/16 = added brace labels (west/east), MEMB-17 = revision-cloud marker-layer turnover.

**Scope waiver (Module 3):** the ~100 carry-forward callouts are not filed individually; they are covered by the full node table (twin/derived/diff-nodes.md — 53↔53, 44 SAME) sampled by CTRL-1…4.

**Verification plan:** every CHANGED/ADDED old and new value confirmed on two channels — the vector text layer of both files and the rendered raster (matched-region crops at 150–500 dpi: tesseract.js OCR + pure-pixel diff footprints for cloud graphics). Where the raster channel cannot read a glyph, the finding records `confidence: UNSURE` (Module 6 / absence-policy rule), never a guessed value.

**Sandbox note (user constraint):** output is confined to `_agent-comparison/drawing-comparison-hermes-qwen-v2/`; this run therefore mirrors §12's tree inside that folder and does not write the shared roots (`actuals/`, `findings/`, `reports/`, `prompt-log/`, `manifest/`, live `skills/`) — including `ENHANCE-SKILL`: observations are logged in prompt-log/ inside the sandbox, the live skill and patternLog.md are left untouched per the user's write fence. No HITL record is written: MANUAL VALIDATE is a human action and this agent will not forge one.
