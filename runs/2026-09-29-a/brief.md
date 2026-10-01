---
kind: brief
written-at: 2026-09-29
written-by: operator
---

# Drawing comparison — MEMB-10/11/12 grid-row resolution (blind run 2026-09-29)

## What this is for

Confirm the grid positions of the three `MEMB-10`, `MEMB-11`, and `MEMB-12` findings — the
only units left at `confidence: UNSURE` after the original 2026-09-17 pass and the 2026-09-29
rerun. Reader/model: qwen3.8-flash via Hermes Agent, working blind (no access to the existing
`MEMB-10`/`MEMB-11`/`MEMB-12` findings, `pivot.md`, or `prompting.md`).

## The documents

- **Source — the later issue:** `AD-3010-C-330030-SHT-004-REV4.pdf`
- **Supporting — the earlier issue, for comparison only:** `AD-3010-C-330030-SHT-004-REV3.pdf`

## How to judge

Scope limited to MEMB-10, MEMB-11, MEMB-12 only. Use coordinate-preserved text extraction
(`pdftotext -bbox-layout`) and vector grid geometry (PyMuPDF) to locate each unit's grid row;
confirm with a rendered crop showing the revision cloud. Do not re-judge other units.
Authorized references: `actuals/findings/MEMB-2/3/8/9.md` (settled same-column findings).
Restricted: existing `MEMB-10/11/12` findings, `pivot.md`, `prompting.md`, and all file
contents inside `runs/2026-09-17-a/`.

## What to produce

Three findings (`findings/MEMB-10/11/12.md`) and one summary report (`report/report.md`).
