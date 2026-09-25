---
document: 260374 COMBINED PID SET 6-1-26.pdf
role: source
for-document: sha256:bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e
verified-by: single-reader cross-check
verified-on: 2026-09-17
confidence: SURE
---
# 260374 COMBINED PID SET 6-1-26.pdf — AKUs and questions

Per `skills/_shared/engineeringDrawingReading.md` rule 8 and `skills/bom-extraction/
skill.md`'s AKU-driven retrieval: this use case has no supporting document
(`fileIndex.md`'s `supporting_document_path: "n/a"`), so its one document is the
**source**, and its derived summary records the AKU identified at each tag and the two
questions formulated for it — a classification question (asked of this drawing's own
Legend1/Legend2 sheets) and a specification question (asked of the tag's home sheet) —
never a plain content summary, since a source document's own derived summary is where
FORMULATE becomes a visible artifact.

The 27 tags marked **[F]** below are extracted in full as findings in
`findings/bom-extraction/260374 COMBINED PID SET 6-1-26/` — that is the authoritative,
one-file-per-unit set to count BOM line items against, and the only tags that carry a
formulated question pair below. Every other tag is named for coverage-checking (per
`skills/bom-extraction/skill.md` Module 3's coverage-scoping rule) but is not an AKU this
pass processed, so it carries no question.

## By sheet

### Page 1–2 · D-260374-11-LEGEND1 / LEGEND2
Reference/decoder sheets. No tags to extract — this is the document every classification
question on this page is itself asked against.

### Page 3 · D-260374-11-001 — Well-pad gathering manifold
- 12 numbered well flowlines: `PF-170`–`PF-177`, `PF-221`–`PF-223` (line numbers, not equipment/valve/PSV tags — no AKU formulated)
- `AT-001`/`AT-Q01`, `AT-002`/`AT-Q02` — H2S alarm/indication (INSTRUMENT, not individually extracted this pass)
- Loop `504` instrument/control tags (INSTRUMENT/CONTROL-VALVE, not individually extracted this pass)

### Page 4 · D-260374-11-002 — Interconnect piping
- `AT-005`/`AT-Q05` — H2S alarm/indication (INSTRUMENT, not individually extracted this pass)

### Page 5 · D-260374-11-003 — intentionally blank

### Page 6 · D-260374-11-005 — V-200

| Tag | Classification question (asked of Legend1/Legend2) | Specification question (asked of this home sheet) |
|---|---|---|
| `EQUIP-V-200` [F] | What equipment category does this drawing set's legend assign to a `V-` prefixed tag? | What description, size, design/operating/MAWP pressure, and any flagged notes does this sheet state for `V-200`? |
| `PSV-200` [F] | What category does the legend assign to a `PSV` (ISA-style) prefixed tag? | What size, set pressure, and flagged notes does this sheet state for `PSV-200`? |
| `PSV-201` [F] | What category does the legend assign to a `PSV` prefixed tag? | What size, set pressure, and flagged notes does this sheet state for `PSV-201`? |
| `PSV-202` [F] | What category does the legend assign to a `PSV` prefixed tag? | What size, set pressure, and flagged notes does this sheet state for `PSV-202`? |

Remaining tags on this sheet (`PAH-200`, `PIT-200`, `LSH-201`, `LAH-201`, `LSL-201`,
`LAL-201`, `LG-200`, `TI-200`, `TW-200`, `LC-200`, `ZI-201`, `FE-200`, `FIT-200`, `FI-200`,
`FQ-200`, `LCV-200`, `LCV-201`) are INSTRUMENT/CONTROL-VALVE tags not individually
extracted this pass — no question formulated for them.

### Page 7 · D-260374-11-006 — intentionally blank

### Page 8 · D-260374-11-007 — V-600A

| Tag | Classification question | Specification question |
|---|---|---|
| `EQUIP-V-600A` [F] | What equipment category does the legend assign to a `V-` prefixed tag? | What description, size, design/operating/MAWP pressure, and flagged notes does this sheet state for `V-600A`? |
| `PSV-600A` [F] | What category does the legend assign to a `PSV` prefixed tag? | What size, set pressure, and flagged notes does this sheet state for `PSV-600A`? |
| `PSV-601A` [F] | What category does the legend assign to a `PSV` prefixed tag? | What size, set pressure, and flagged notes does this sheet state for `PSV-601A`? |
| `PSV-602A` [F] | What category does the legend assign to a `PSV` prefixed tag? | What size, set pressure, and flagged notes does this sheet state for `PSV-602A`? |
| `PCV-600A` [F] | What category does the legend assign to a `PCV` prefixed tag? | What service, size, and set-point does this sheet state for `PCV-600A`? |
| `PCV-601A` [F] | What category does the legend assign to a `PCV` prefixed tag? | What service, size, and set-point does this sheet state for `PCV-601A`? |
| `PCV-603A` [F] | What category does the legend assign to a `PCV` prefixed tag? | What service, size, and set-point does this sheet state for `PCV-603A`? |
| `PCV-604A` [F] | What category does the legend assign to a `PCV` prefixed tag? | What service, size, and set-point does this sheet state for `PCV-604A`? |

Remaining tags on this sheet (29 INSTRUMENT/CONTROL-VALVE tags, e.g. `FT-600A`,
`SV-601A`, `LCV-602A`) are not individually extracted this pass — no question formulated.

### Page 9 · D-260374-11-008 — intentionally blank

### Page 10 · D-260374-11-009 — IP/Test gas metering

| Tag | Classification question | Specification question |
|---|---|---|
| `PCV-201` [F] | What category does the legend assign to a `PCV` prefixed tag? | What service, size, and set-point does this sheet state for `PCV-201`? |
| `PCV-202` [F] | What category does the legend assign to a `PCV` prefixed tag? | What service, size, and set-point does this sheet state for `PCV-202`? |

Remaining tags on this sheet (`PY-201`, `FT-200`, `FE-200`, `TE-200`, `TW-200`, `TW-201`,
`PAH-201`, `PAL-201`, `PIT-201`, `PI-201`, `PY-202`, `PAH-202`, `PALL-202`, `PIT-202`,
`PI-202`) are INSTRUMENT tags not individually extracted this pass.

### Page 11 · D-260374-11-010 — V-700

| Tag | Classification question | Specification question |
|---|---|---|
| `EQUIP-V-700` [F] | What equipment category does the legend assign to a `V-` prefixed tag? | What description, size, and rating does this sheet state for `V-700`? |

### Page 12 · D-260374-11-011 — CA-800 package

| Tag | Classification question | Specification question |
|---|---|---|
| `EQUIP-CA-800` [F] | What category does the legend assign to a `CA-` prefixed tag (this project's own two-letter equipment prefix)? | What type, mfg/model, capacity, and motor rating does this sheet state for `CA-800`? |
| `EQUIP-F-803` [F] | What category does the legend assign to an `F-` prefixed tag? | What type, mfg/model, and capacity does this sheet state for `F-803`? |
| `EQUIP-F-804A` [F] | What category does the legend assign to an `F-` prefixed tag? | What type, mfg/model, and capacity does this sheet state for `F-804A`? |
| `EQUIP-DR-804` [F] | What category does the legend assign to a `DR-` prefixed tag? | What type, mfg/model, and capacity does this sheet state for `DR-804`? |
| `EQUIP-F-804B` [F] | What category does the legend assign to an `F-` prefixed tag? | What type, mfg/model, and capacity does this sheet state for `F-804B`? |
| `EQUIP-V-805` [F] | What category does the legend assign to a `V-` prefixed tag? | What size, rating, and material does this sheet state for `V-805`? |
| `EQUIP-DR-3001` [F] | What category does the legend assign to a `DR-` prefixed tag, and what does the `(f)` flag on this one mean per the legend's abbreviation table? | What size/capacity, if any, does this sheet state for `DR-3001` beyond the `(f)` flag? |
| `PSV-800` [F] | What category does the legend assign to a `PSV` prefixed tag? | What set pressure and capacity does this sheet state for `PSV-800`? |
| `PSV-801A` [F] | What category does the legend assign to a `PSV` prefixed tag? | What set pressure and capacity does this sheet state for `PSV-801A`? |
| `PSV-802A` [F] | What category does the legend assign to a `PSV` prefixed tag? | What set pressure and capacity does this sheet state for `PSV-802A`? |
| `PSV-805` [F] | What category does the legend assign to a `PSV` prefixed tag? | What size and set pressure does this sheet state for `PSV-805`? |
| `PCV-800` [F] | What category does the legend assign to a `PCV` prefixed tag? | What service and set-point does this sheet state for `PCV-800`? |

Remaining tags on this sheet (26 INSTRUMENT tags, e.g. `HS-800`, `XS-801`, `PI-800A`) are
not individually extracted this pass.

### Page 13 · D-260374-11-004 — intentionally blank

## Totals

- AKUs with a formulated question pair (extracted findings): **27** (10 EQUIPMENT, 10
  SAFETY-RELIEF-VALVE, 7 CONTROL-VALVE)
- Tags named above but not treated as AKUs this pass, no question formulated: 12
  well-flowline numbers + roughly 100 INSTRUMENT tags + 5 CONTROL-VALVE/SHUTDOWN-VALVE
  tags with no stated set-point

**Note on this file's relationship to the existing 27 findings:** these questions are
written from the same source-side tag identities `plan.md` and the findings already
establish — they do not restate or imply any specification value, and none of the 27
findings' own Tag/Description/Specification content was changed to produce this file. See
`skills/bom-extraction/patternLog.md` for the entry recording this reformatting.
