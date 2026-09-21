---
item: MEMB-18
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: CHANGED
material: no
group: revision-cloud marker layer, both views
addressed: true
verdict: CHANGED
old-position: Rev 3: twelve revision-cloud balloons "3" at (836,172), (1202,181), (1151,227), (1428,263), (1177,355), (1345,338), (1281,477), (1194,1114), (1163,1194), (1425,1232), (1288,1366), (1283,413)
new-position: Rev 4: seven clouds, balloons "4" at (549,390), (1352,396), (562,660), (453,822), (561,1129), (1353,1355), (714,1322); three of them carry "(*)" at (534,385), (1367,393), (1363,1373)
verified-by: author cross-check — balloon tokens counted from both word layers (single-glyph tokens at non-text positions, verified against zone table); "(\*)" legend glyphs read c87–89 on the Rev-4 render; cloud arc presence/extent inferred from pixel-diff footprints (see section-map), cloud outlines themselves are vector graphics no OCR channel can read — treated as a marker-layer statement, not per-pixel verification
verified-on: 2026-09-16
confidence: SURE
---
# MEMB-18

**Revision-cloud marker layer: 12 old clouds cleared, 7 new drawn, 3 asterisked**
CHANGED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1: twelve "3" balloon markers (positions above) — the clouds of the Rev-3 issue itself, still drawn on the Rev-3 sheet.

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: none of the twelve "3" balloons remain; seven "4" balloons mark the new clouds; "(*)" asterisks on three of them — (549,390) the T171 (-175) member, (1352,396) the upper dim band, (1353,1355) the lower dim band.

## What changed
Full replacement of the revision-marker layer: old-issue clouds cleared (this is what reflows a few labels — see CTRL-1/CTRL-2), new-issue clouds drawn around: (-175) member, both dim bands, the mid-line count band (562,660), the C-D connection cluster (453,822), the D-E count band (561,1129) and the E-F node (714,1322). Note the two weld-count changes: the 58N node falls inside the (453,822)-clouded cluster; the 63N node (742,859) has NO balloon and no pixel-diff arc near it (MEMB-8) — the pack's cloud-untagged case.

## Why it matters
material=no (markers, not geometry) but this inventory is the audit trail of what the issuing designer thought had changed; it disagrees with the actual value diff in one place (the untagged 63N) and agrees with it everywhere else — precisely the check a drawing-comparison run must be able to pass. The three (*) clouds per NOTE-2 flag their contents as already communicated outside the formal revision.
