# Detection — 260374 COMBINED PID SET 6-1-26.pdf

Quirks and edge cases found ahead of judgment (bootstrap.md §11). Run: 2026-09-29-a, blind independent pass.
Source: `documents/source/260374 COMBINED PID SET 6-1-26.pdf`, sha256 `bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e`, 13 pages, 792x1224 pt, page rot 270 (rendered landscape).

## 1. Text layer is near-useless for content; extraction is perception-led
`pdftotext -layout` yields only the "ISSUED MAY 29, 2026 FOR APPROVAL" stamp, 3S Services boilerplate, and a few large titles (V-200, V-600A, V-700, CA-800/F-803/F-804A/DR-804/F-804B/V-805 header row, "DESICCANT AIR DRYER (f)", "V-805 (f)", "VENT MUFFLERS (OUTSIDE BUILDING) DR-3001 (f)"). Every value in this pack was read from renders (200 dpi overviews + 400 dpi region crops, visual reading). The text layer was used as the confirming second channel wherever it surfaced a string.

## 2. Non-sequential sheet order (pack-profile: non-sequential-sheet-order)
PDF page order does NOT match drawing numbers:
p1=LEGEND1, p2=LEGEND2, p3=-001, p4=-002, p5=-003, p6=-005, p7=-006, p8=-007, p9=-008, p10=-009, p11=-010, p12=-011, p13=-004.
Sheet -004 is the LAST page; no sheet -012 exists. "Page N" is never cited as a proxy for drawing number N.

## 3. Four blank sheets
-003 (p5), -006 (p7), -008 (p9) and -004 (p13) each read "INTENTIONALLY BLANK" (large centered text, confirmed visually).

## 4. Off-page connectors reference equipment on blank sheets
-002 (p4) carries arrows: "TO WASTE ACID TANK D-260374-11-003", "TO CAUSTIC WASTE TANK D-260374-11-003", "TO NEUTRALIZATION REACTOR D-260374-11-003" — but sheet -003 is INTENTIONALLY BLANK. No tag numbers are printed for these tanks/reactor anywhere in the set, so per the absence-policy they are NOT extracted as BOM units; they are recorded here as named-but-never-tagged destinations.

## 5. Internally inconsistent sheet cross-references (quoted as printed)
- -001 (p3) arrow "TO TEST 1 HEADER D-260374-11-002" and -007 (p8) "FROM TEST 1 HEADER D-260374-11-002" — yet the TEST 1 HEADER is drawn on -001 itself and "TEST 1 HEADER" appears on -001 as the large line label of header line 10"-AC004-3100 / 300# B2R-C46.
- -009 (p10) arrow "TO FLR. VENT STACK D-260374-11-009" references its own sheet number, but the vent stack (V-700) is on -010.
Readers must not rely on connector sheet numbers; flow identity was confirmed by line numbers (e.g. 10"-PG-132-A4 appears on both -009 and -010).

## 6. Untagged repeated equipment (pack-profile: repeated-tag-no-datasheet / absence-policy)
-001 draws twelve well/test separators as generic vessel symbols numbered 1–12 with 4"X3" reducers and 3"/1" valves each. None carries a letter-number tag; they are not BOM units. Recorded here so a later revision that tags them is detectable.

## 7. Legend-dependent prefixes (pack-profile: legend-dependent-tag)
- `CA-800` and `DR-804`/`DR-3001` use two-letter prefixes NOT present in LEGEND1's "TYPICAL EQUIPMENT NUMBER" table (which has C = COMPRESSOR, FAN, BLOWER, ETC. and D = DRIVER). They are classified EQUIPMENT from their own datasheet headers / descriptions on -011, not from generic convention.
- `KV-800` / `KV-805` prefixes are not in LEGEND2's "TYPICAL IDENTIFIERS FOR P&ID'S" list either; extracted as CONTROL-VALVE with `confidence: UNSURE` (stated size + fail position, but nomenclature unconfirmed).
- Bubbles print tags stacked without a hyphen ("PSV" over "200"). The hyphenated form (PSV-200) is the standard single-line reading and is used for filenames per the skill's own example; the stacked print form is noted in each finding.

## 8. Numbering gaps that are real, not misreads
- PCV-603A does not appear on -007 (sequence runs 601A, 602A, 604A).
- All -007 item suffixes carry "A" (V-600A, PSV-600A…), implying a reserved B-series (Test Separator #2) that is NOT drawn anywhere in the set (-008, the referenced sheet, is blank). Not extracted.

## 9. HOLD clouds pervade the valve population (pack-profile: hold-for-sizing)
Every PSV in the set, every LCV/PCV except the small IA pilot valves (PCV-601A/602A/604A), and the V-200 datasheet itself sit under revision clouds reading "HOLD FOR SIZING" (V-200 datasheet: "HOLD FOR INFO"). Sizes and set points are the designer's provisional values; flagged in every affected finding's Notes. Do not treat neighbouring line sizes as item ratings.

## 10. Package sub-items (pack-profile: package-sub-item)
-011 draws an "(f) AFTERCOOLER" inside the CA-800 package boundary with no tag of its own, and a horizontal receiver tank inside CA-800 that carries PSV-800. The aftercooler is not a BOM line; the receiver tank is covered by the CA-800 datasheet line "RECIEVER TANK: 240 GAL - 250 MAWP" (quoted spelling "RECIEVER" as printed).

## 11. "(f)" marker
Package items are labelled "(f)" (e.g. "V-805 (f)", "DR-3001 (f)", "(f) AFTERCOOLER"). The set's legend does not define "(f)"; quoted as printed, meaning not interpreted.

## 12. Note-vs-bubble mismatch on -011
NOTE 2 on -011 reads "LOCATE PIT-300B & PIT-300C AT FURTHEST END OF HEADERS" while the drawn bubbles are PIT 800B and PIT 800C. Quoted as printed; likely stale note text.

## 13. Title block has no SHEET TITLE field
Every sheet's title block carries only DWG. NO / REV. / SCALE / PLOT SCALE / AFE / LOCATION (last two blank). The large "titles" seen on -005/-007/-010/-011 are equipment datasheet header rows or line labels, not title-block fields. No large title was legible on -001, -002, or -009 in any crop; an early full-page read suggested "MOLT N-200-1218-1401" for -009 — NOT confirmed by any targeted crop, so it is recorded as UNSURE and used nowhere.

## 14. Revision state
All sheets REV. B; revision table: A 05/29/26 ISSUED FOR APPROVAL; B 06/01/26 ISSUED FOR APPROVAL. Stamp: "ISSUED MAY 29, 2026 FOR APPROVAL". Engineer: R. DRAKE; CHECKED: J. ALEMAN (as read on -005/-010 title blocks).

## 15. Out-of-scope populations counted, not extracted
- Instrument bubbles (PI/PIT/LG/TI/TW/TE/LC/LSH/LAL/FI/FQI/FT/FE/PY/PSHH/LSL/HS/XS/XY/AT/SV/PLC and the -001 injection-skid loop FQI 504 etc.): approximately 90 across the content sheets; counted for coverage, not individually detailed (skill's declared first-pass scoping).
- Specialty items (e.g. "39SM-6" sample connections; LEGEND1 "TYPICAL SPECIALTY ITEM NUMBER" SP-001 form) and line materials (B7RL-C46, D2S-C6, BS2S, 3/4" CSO): not equipment/PSV/control items; not extracted.
