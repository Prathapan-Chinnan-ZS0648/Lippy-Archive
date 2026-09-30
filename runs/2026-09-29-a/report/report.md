# REPORT — BOM extraction, run 2026-09-29-a (blind independent pass)

Source: `documents/source/260374 COMBINED PID SET 6-1-26.pdf` (13 pages, REV. B,
"PIPING & INSTRUMENTATION", 3S Services; issued FOR APPROVAL).
sha256: `bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e`.
Skill: `skills/bom-extraction.md` (version 1). This run wrote nothing outside
`runs/2026-09-29-a/` and read none of `actuals/`, `pivot.md`, `prompting.md`,
`runs/2026-09-17-a/`, or `runs/2026-09-30-a/`.

## Totals

| category | units | of which UNSURE |
|---|---|---|
| EQUIPMENT | 10 | 1 (DR-3001) |
| SAFETY-RELIEF-VALVE | 10 | 0 |
| CONTROL-VALVE | 14 | 2 (KV-800, KV-805) |
| **Total individually extracted** | **34** | **3 (8.8%)** |

One finding file per unit under `findings/<tag>.md`, tag exactly as printed (stacked-bubble
forms written hyphenated per the skill's own example; see detection §7).

## EQUIPMENT (10)

| tag | description (as printed) | specification (as printed) | home sheet (page) | conf |
|---|---|---|---|---|
| V-200 | INTERMEDIATE PRESSURE BULK SEPARATOR | 72" ID X 18'-0" S/S; DESIGN 345 PSIG @ 200 F; OPER 250 PSIG; MAWP 345 PSIG @ 200 F; HOLD FOR INFO cloud | -005 (p6) | SURE |
| V-600A | TEST SEPARATOR #1 | 60" ID X 18'-0" S/S; DESIGN 825 PSIG @ 200 F; OPER 550 PSIG; MAWP 825 PSIG @ 200 F | -007 (p8) | SURE |
| V-700 | VENT STACK | 0'-6" ID; OPER 1 PSIG (no design/MAWP printed) | -010 (p11) | SURE |
| CA-800 | AIR COMPRESSOR | DUPLEX COMPRESSOR PACKAGE; IR 2-2545A10; 35 SCFM @ 125 PSIG; RECIEVER TANK 240 GAL - 250 MAWP; MOTOR 10 HP 230-460/3/60; START @ 90 / STOP @ 120 PSIG | -011 (p12) | SURE |
| F-803 | FILTER | GENERAL PURPOSE FILTER; IR FA110IG; 65 SCFM | -011 (p12) | SURE |
| F-804A | PRE-FILTER | OIL REMOVAL FILTER; IR FA110IH; 65 SCFM | -011 (p12) | SURE |
| DR-804 | AIR DRYER | DESSICANT AIR DRYER; IR D110IM; 65 SCFM | -011 (p12) | SURE |
| F-804B | POST-FILTER | DUST FILTER; IR FA110ID; 65 SCFM | -011 (p12) | SURE |
| V-805 | DRY AIR REVEIVER | 30" OD X 7'-0" (240 GAL); MAWP 200 PSIG; CARBON STEEL | -011 (p12) | SURE |
| DR-3001 | VENT MUFFLERS (OUTSIDE BUILDING) | no datasheet block on any sheet; tag+description only | -011 (p12) | UNSURE |

## SAFETY-RELIEF-VALVE (10) — all on sheets -005 / -007 / -011

| tag | size (in x out) | SET @ | capacity | HOLD state | home (page) |
|---|---|---|---|---|---|
| PSV-200 | 3"X4" | 345 PSIG | — | HOLD FOR SIZING | -005 (p6) |
| PSV-201 | 3"X4" | 362 PSIG | — | HOLD FOR SIZING | -005 (p6) |
| PSV-202 | 3"X4" | 380 PSIG | — | HOLD FOR SIZING | -005 (p6) |
| PSV-600A | 3"X4" | 720 PSIG | — | HOLD FOR SIZING | -007 (p8) |
| PSV-601A | 3"X4" | 738 PSIG | — | HOLD FOR SIZING | -007 (p8) |
| PSV-602A | 3"X4" | 756 PSIG | — | HOLD FOR SIZING | -007 (p8) |
| PSV-800 | — | 200 PSI | 173 SCFM | (f), no cloud | -011 (p12) |
| PSV-801A | — | 80 PSI | 74 SCFM | (f), no cloud | -011 (p12) |
| PSV-802A | — | 80 PSI | 74 SCFM | (f), no cloud | -011 (p12) |
| PSV-805 | 3/4"X1" | 200 PSIG | — | (f), no cloud | -011 (p12) |

## CONTROL-VALVE (14)

| tag | size | type/fail | SET @ | HOLD state | home (page) | conf |
|---|---|---|---|---|---|---|
| LCV-200 | 3" | V-BALL FO | — | HOLD FOR SIZING | -005 (p6) | SURE |
| LCV-201 | 3" | V-BALL FC | — | HOLD FOR SIZING | -005 (p6) | SURE |
| PCV-600A | 8" | V-BALL FO | 225 PSI | HOLD FOR SIZING | -007 (p8) | SURE |
| PCV-601A | 1/4" | — | 35 PSIG | no cloud | -007 (p8) | SURE |
| PCV-602A | 1/4" | — | 35 PSIG | no cloud | -007 (p8) | SURE |
| PCV-604A | 1/4" | — | 15 PSIG | no cloud | -007 (p8) | SURE |
| LCV-601A | 2" | V-BALL FO | — | HOLD FOR SIZING | -007 (p8) | SURE |
| LCV-602A | 2" | V-BALL FO | — | HOLD FOR SIZING | -007 (p8) | SURE |
| LCV-603A | 2" | V-BALL FO | — | HOLD FOR SIZING | -007 (p8) | SURE |
| PCV-201 | 8" | V-BALL FC | 310PSI (printed without space) | HOLD FOR SIZING | -009 (p10) | SURE |
| PCV-202 | 8" | V-BALL FO | 225 PSI | HOLD FOR SIZING | -009 (p10) | SURE |
| PCV-800 | pilot 1/2" | pilot-operated | 100 PSIG | no cloud | -011 (p12) | SURE |
| KV-800 | 1/2" | FC | — | (f) | -011 (p12) | UNSURE |
| KV-805 | 1/2" | FO | — | (f) | -011 (p12) | UNSURE |

## What is flagged, plainly

- **16 of the 24 valves** sit under HOLD FOR SIZING clouds, and the V-200 datasheet under a
  HOLD FOR INFO cloud. This is an approval-issue package with provisional sizing; the sizes
  and set points above are exactly what the drawing prints, not vendor-final values.
- **3 UNSURE findings** (8.8%): KV-800 / KV-805 (prefix absent from the set's own
  nomenclature sheets) and DR-3001 (tag and description legible on both channels, but no
  datasheet block exists anywhere in the set). No value was guessed to clear any of them.
- **Sheet cross-references are internally inconsistent** in several arrows (e.g. "TO FLR.
  VENT STACK D-260374-11-009" pointing at a stack actually on -010; "FROM/TO TEST 1 HEADER"
  cited as -002 while drawn on -001). Quoted as printed; see detection §5. Do not resolve
  flows from arrow sheet numbers — use line numbers.
- **V-600B / any "-B" series, PCV-603A**: implied by numbering but not drawn — not
  extracted (detection §8).

## COVERAGE STATEMENT (what this pass did and did not individually cover)

**Individually extracted:** every tagged EQUIPMENT, SAFETY-RELIEF-VALVE and CONTROL-VALVE
item that is drawn and legible anywhere in the 13-page set — 34 units above. All 13 pages
were read (200 dpi whole-page overviews plus 400 dpi crops of every datasheet block, valve
bubble and HOLD cloud on the 7 content sheets).

**Counted, NOT individually extracted (per the skill's declared first-pass scoping):**
- The **INSTRUMENT population** — approximately **90 bubbles** across sheets -001, -002,
  -005, -007, -009, -011 (families: PI/PAL/PAH/PALL/PIT, PY, LG, TI/TW/TE, LC/LSH/LAH/
  LSL/LAL, FI/FQI/FT/FE, PS/PSH/PSL/PSHH, HS/XS/XY, SV, AT, FCV/SDV/FQI of the -001
  injection loop, PLC). Enumerated per-sheet in the twin pages; no finding files written.
  Equipment/PSV/control coverage above is therefore **not** complete instrument coverage.
- **Specialty items** (e.g. "39SM-6" sample connections; LEGEND1 SP-format numbers) and
  **line materials/flags** (B7RL-C46, D2S-C6, BS2S, CSO, spec-break markers) — out of grain.

**Named or drawn but NOT extractable as BOM units (absence-policy; no tags printed):**
- Twelve separators numbered 1–12 on -001 (untagged).
- WASTE ACID TANK, CAUSTIC WASTE TANK, NEUTRALIZATION REACTOR, FEED TANK — named on -002
  arrows with home sheet -003 INTENTIONALLY BLANK.
- Flare header referenced on -009 arrows; home sheet -008 INTENTIONALLY BLANK.
- "(f) AFTERCOOLER" inside CA-800 (untagged package sub-item; covered by CA-800 line).
- Four blank sheets (-003, -004, -006, -008) carry no tags at all.

**Reading-channel honesty:** every value above is a direct read of the rendered drawing;
nothing was inferred from P&ID convention. Where a string exists in the PDF text layer
(the -005/-007/-010/-011 large header rows, DR-3001 label), the text layer confirmed the
visual read. A suggested -009 sheet title ("MOLT N-200-1218-1401") never re-confirmed at
crop level and is recorded UNSURE in the twin page — used in no finding.
