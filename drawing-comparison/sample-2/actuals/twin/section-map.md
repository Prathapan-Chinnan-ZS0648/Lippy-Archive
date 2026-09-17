# Section map — AD-3010-C-330030-SHT-004 Rev 3 / Rev 4 (both single-sheet A1, 1 page each)

Sheet-wide coordinate convention: display points on the rotated (landscape) page, x→right 0–2384, y→down 0–1684, taken from the PDF text layer via `pdftotext -bbox`. Areas, in document order:

| area | sheet region (pt) | what it states (Rev 4 / Rev 3) |
|---|---|---|
| Docusign header | y 10, x 17 | envelope ID line; ID differs by revision (furniture) |
| key plan + orientation | x<280, y 88–320 | PLANT/NORTH/TRUE NORTH arrows, prevailing wind 64.2°/70.8° — identical both revisions |
| NOTES box | x 1855–2340, y 61–460 | item 1 "FOR GENERAL NOTES … SEE SHEET 001." (out-of-pack cross-ref); Rev 4 adds SYMBOLOGY legend at y 481–518 |
| Reference drawings / documents table | x 1855–2200, y 584–611 | header only, no rows — identical |
| KEY PLAN band | x 1855–2340, y 871–1130 | key plan caption + 0–10 m scale bar + SCALE 1:100 — identical |
| PLAN EL. 111.500 (T.O.S.) | x 280–800, y 90–1600 | left plan strip: grid 1/2 × A–F, member/connection callouts (columns x≈482 / 594 / 742), braces, ladders. Rev-3 clouds (balloons "3") at (785–842,172), (1146–1213,1119–1271 shared w/ right plan) etc.; Rev-4 clouds: dim bands + member/bolt-count nodes (see findings) |
| LADDER-1/2 elevation band | x 1290–1470, y 230–440 | stair sections, grating lines, vertical dims 420/545 (Rev 3) → 500/515 (Rev 4); Rev-4 cloud balloon "4"(1355,402)+"(*)"(1371,398); Rev-3 balloon "3"(1345,338) |
| PLAN EL. 112.800 (T.O.S.) | x 1060–1580, y 140–1600 | right plan strip, mirror layout; HANDRAIL / BW·L80x80x8 node at x 1160–1240, y 1180–1250 (order flips between revs, values same); LADDER-3/4 band x 1290–1470, y 1250–1400 with dims 420/545 → 500/515 |
| revision-history table | x 1855–2332, y 1194–1286 | Rev 3: rows 3,2,1; Rev 4 adds row 4 (27.07.2026 ISSUED FOR CONSTRUCTION VPM AVH CVH JYM MM) |
| title block | x 1855–2384, y 1286–1640 | fields as per twins; changed: DRAWING TITLE text, REV. box value; unchanged: drawing no., contractor (TECNICAS REUNIDAS), project lines, A1, 14001-10222-2 |
| footer | y 1632–1646 | contract-specification + confidentiality lines — identical |

# Rev-3→Rev-4 change zones (the zone table from the coordinate cell-diff, /tmp/lippy-s2/zones.txt — authoritative list of candidate zones this pack was required to verify)

22 zones total; 6 are pure cloud/balloon clearance (values identical), 4 are the title-block/revision-table/notes/symbology administrative changes, 12 are structural-member zones. Every zone is mapped to a finding id in `actuals/findings/`. Balloon-marker inventory (verified against both text layers): Rev 3 carries 12 sheet "3" balloons (listed in the Rev 3 twin); Rev 4 carries 7 sheet "4" balloons — at (549,390), (1352,396), (562,660), (453,822), (561,1129), (1353,1355), (714,1322) — of which 3 carry a "(*)" asterisk: (534,385), (1367,393), (1363,1373).
