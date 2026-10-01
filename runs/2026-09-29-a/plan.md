---
skill: drawing-comparison
version: 1
steps: 3
confidence: HIGH
verified-by: qwen3.8-flash via Hermes Agent (blind run)
verified-on: 2026-09-29
---

# Plan — blind run 2026-09-29

Scope: resolve the exact grid position of the three file-unconfirmed weld/bolt-count additions on the UC203x203x46 midpoint column line, filed as MEMB-10, MEMB-11, MEMB-12.

Units judged (grain = one callout; view = Plan EL. 111.500 (T.O.S.), midpoint column line):
- MEMB-10 — Grid B–C panel 1 of 3 (node y≈577)
- MEMB-11 — Grid B–C panel 2 of 3 (node y≈662)
- MEMB-12 — Grid D–E panel 3 of 3 (node y≈1173)

Reference (settled, not re-judged): MEMB-2/3 = C–D panels 1/2 (nodes 832/917); MEMB-8 = D–E, upper changed node 1088.
Method: coordinate-preserved text extraction (pdftotext -bbox-layout) + vector grid-line geometry (PyMuPDF) + rendered-crop visual check (pdftoppm + vision). Full six-addition census in detection.md §5.
