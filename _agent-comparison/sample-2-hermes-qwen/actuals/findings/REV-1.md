---
item: REV-1
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: ADDED
material: no
group: title-block-rev-table
addressed: true
verdict: ADDED
old-position: — Rev-3's table has three rows (3,2,1) at y 1212/1229/1246; the band y 1187–1212 holds no text at all in Rev 3 (crop-exact pdftotext of that band on the Rev-3 file returns empty)
new-position: row 1 of the table, y 1196, x 1862–2315: "4 | 27.07.2026 | ISSUED FOR CONSTRUCTION | VPM | AVH | CVH | JYM | MM"
verified-by: author cross-check — text layer (all 9 tokens with coordinates); crop extraction of the row band from both files (Rev-4 yields "4 / 27.07.2026 / ISSUED FOR CONSTRUCTION", Rev-3 empty); raster OCR of Rev-4 row-4 band reads "ISSUED" "FOR" "CONSTRUCTION" at c96–97 (the small date glyphs did not OCR cleanly at any dpi tried)
verified-on: 2026-09-16
confidence: SURE
---
# REV-1

**Revision-history table, row 4**
ADDED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1 — no counterpart; table top row was "3 | 20.04.2026 | ISSUED FOR CONSTRUCTION | VPM FEN VRR NHP MM"

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: "4 | 27.07.2026 | ISSUED FOR CONSTRUCTION | VPM | AVH | CVH | JYM | MM"

## What changed
One row added; rows 3, 2, 1 carry through byte-identical (verified — see CTRL band reads: both revisions' row bands read "20.04.2026" "04.02.2026" at c88–97). The description of the new row is again "ISSUED FOR CONSTRUCTION" — this is the second IFC issue of the sheet; the check/approval initials differ from row 3 (AVH/CVH/JYM vs FEN/VRR/NHP), documenting a fresh sign-off.

## Why it matters
material=no as fabrication data (per the skill rule, a revision-table row is tracked "exactly as version-compare's administrative/date fields rule requires"), but it is the authoritative statement of what this reissue is: a corrective second IFC dated 27.07.2026. A run asked "what is Rev 4?" should rest on this row, and a run that cites REV3 as current fails the superseded-document test.
