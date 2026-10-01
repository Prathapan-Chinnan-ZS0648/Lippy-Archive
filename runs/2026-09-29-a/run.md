# Run record — 2026-09-29

- Reader/model: **qwen3.8-flash via Hermes Agent** (Nous Research Hermes CLI session), second independent attempt, blind.
- Branch: drawing-comparison-sample-structure. Output written ONLY into `runs/2026-09-29-a/`.
- Command shape executed: NORMALIZE (coordinate-preserved twin extraction of both single-page sheets) → JUDGE (MEMB-10/11/12 only, per task scope) → REPORT, per bootstrap.md §5 and skills/drawing-comparison.md v1.
- Tools: `pdftotext -bbox-layout` (word-level coordinates, rotated display space), PyMuPDF 1.28.2 in a /tmp venv (vector line geometry, grid-line and panel-divider locations), `pdftoppm` crops + vision check (revision clouds), all scratch in /tmp/lippy_blind (outside repo).
- Inputs read: bootstrap.md, skills/drawing-comparison.md, file-index.md, templates/finding.md, actuals/findings/MEMB-2/3/8/9.md (authorized references), the two PDFs. NOT read: actuals/findings/MEMB-10/11/12.md, pivot.md, prompting.md, and no file contents inside runs/2026-09-17-a/ (names only, to copy folder shape).
- Outcome: MEMB-10 = Grid B–C panel 1 of 3; MEMB-11 = Grid B–C panel 2 of 3; MEMB-12 = Grid D–E panel 3 of 3. All confidence SURE; evidence coordinates in graph.md and findings files.
- Deviation from prior run: the prior "grid row uncertain from text-layer diff alone" condition did not reproduce — this run's extraction preserved spatial position for every disputed token.
- Folder shape: detection.md, plan.md, graph.md, findings/MEMB-10|11|12.md, report/report.md, run.md, approval.md, brief.md, last-run.md. twin/ layer intentionally omitted from disk to stay within the run's time budget; the twin content this run relied on is captured in graph.md and detection.md §1–5 (extraction method and full node census recorded there).
- No git commands run; no files modified outside this folder.
