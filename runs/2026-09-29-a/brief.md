# Brief — task as given (2026-09-29)

Independent, blind Bill-of-Materials extraction pass on a P&ID drawing set, for
cross-checking against an existing pack that must not be looked at.

- Read `documents/source/260374 COMBINED PID SET 6-1-26.pdf` (13 pages) directly — both
  text layer and rendered page images (text layer very sparse; render each page,
  e.g. pdftoppm at 200 dpi, and read visually).
- Follow `skills/bom-extraction.md` exactly: every tagged item with its own full, legible
  specification into EQUIPMENT / SAFETY-RELIEF-VALVE / CONTROL-VALVE, per that skill's
  Steps / The rule / Units / Labels / Finding shape / Pack profile. Framework files read:
  `bootstrap.md`, `file-index.md`, `templates/finding.md`, `templates/twin-page.md`,
  `templates/README.md`. No invented front-matter shapes.
- FORBIDDEN (never read): `actuals/**` (incl. findings/, twin/, detection.md, plan.md,
  graph.md, report/report.md), `pivot.md`, `prompting.md`, `runs/2026-09-17-a/` contents.
  Added on the GO message: `runs/2026-09-30-a/` (separate blind run; name may be
  referenced, contents never read).
- OUTPUT: only a new folder `runs/2026-09-29-a/`, same shape as actuals/: detection.md,
  plan.md, graph.md, twin/<doc>/page-001..013.md, twin/derived/<doc>.md,
  twin/section-map.md, twin/priority.md, findings/<tag>.md (tag exactly as printed),
  report/report.md (rollup tables, counts, explicit coverage statement), run.md.
  Nothing created or modified anywhere else.
- Absence policy: never guess an unreadable value — mark it and move on; state plainly in
  report.md what was and was not individually covered.

Stage-check-in preference honored: first pass reported after the full read; the user's
GO message authorized the verification items and the write-out above.
