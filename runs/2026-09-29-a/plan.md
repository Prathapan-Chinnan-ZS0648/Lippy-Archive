# Plan — run 2026-09-29-a

Grain (skill bom-extraction): one unit per tagged procurable/installable item, classified
EQUIPMENT / SAFETY-RELIEF-VALVE / CONTROL-VALVE. Unit id = tag exactly as printed (stacked
bubble "PSV/200" → hyphenated PSV-200; see detection §7).

## Units to judge (34)

### EQUIPMENT (10)
| unit | home sheet | page |
|---|---|---|
| V-200 | D-260374-11-005 | 6 |
| V-600A | D-260374-11-007 | 8 |
| V-700 | D-260374-11-010 | 11 |
| CA-800 | D-260374-11-011 | 12 |
| F-803 | D-260374-11-011 | 12 |
| F-804A | D-260374-11-011 | 12 |
| DR-804 | D-260374-11-011 | 12 |
| F-804B | D-260374-11-011 | 12 |
| V-805 | D-260374-11-011 | 12 |
| DR-3001 | D-260374-11-011 | 12 |

### SAFETY-RELIEF-VALVE (10)
| unit | home sheet | page |
|---|---|---|
| PSV-200 | -005 | 6 |
| PSV-201 | -005 | 6 |
| PSV-202 | -005 | 6 |
| PSV-600A | -007 | 8 |
| PSV-601A | -007 | 8 |
| PSV-602A | -007 | 8 |
| PSV-800 | -011 | 12 |
| PSV-801A | -011 | 12 |
| PSV-802A | -011 | 12 |
| PSV-805 | -011 | 12 |

### CONTROL-VALVE (14)
| unit | home sheet | page | confidence |
|---|---|---|---|
| LCV-200 | -005 | 6 | SURE |
| LCV-201 | -005 | 6 | SURE |
| PCV-201 | -009 | 10 | SURE |
| PCV-202 | -009 | 10 | SURE |
| PCV-600A | -007 | 8 | SURE |
| PCV-601A | -007 | 8 | SURE |
| PCV-602A | -007 | 8 | SURE |
| PCV-604A | -007 | 8 | SURE |
| LCV-601A | -007 | 8 | SURE |
| LCV-602A | -007 | 8 | SURE |
| LCV-603A | -007 | 8 | SURE |
| PCV-800 | -011 | 12 | SURE |
| KV-800 | -011 | 12 | UNSURE (prefix not in nomenclature) |
| KV-805 | -011 | 12 | UNSURE (prefix not in nomenclature) |

## Explicitly NOT units this run (absence-policy)
- Twelve separators 1–12 on -001: drawn but untagged → excluded (detection §6).
- WASTE ACID TANK / CAUSTIC WASTE TANK / NEUTRALIZATION REACTOR / FEED TANK: named on
  -002 arrows, no tag printed, home sheet -003 blank → excluded (detection §4).
- V-600B and any "B"-series test-separator items: not drawn anywhere → excluded.
- "(f) AFTERCOOLER" on -011: untagged package sub-item → excluded (detection §10).
- ~90 instrument bubbles (PI/PIT/LG/TI/TE/LC/LSH/LSL/LAL/LAH/FI/FQI/FT/FE/PY/PSHH/HS/XS/XY/
  AT/SV/PLC/FQI-504…): category INSTRUMENT, counted not detailed (skill scoping note;
  detection §15).
- Specialty items (39SM-6 …) and line materials (B7RL-C46, D2S-C6, BS2S, CSO): out of grain.

## Method
Read every page: pdftotext -layout (sparse, second channel) + pdftoppm 200 dpi full-page
overview + 400 dpi targeted crops for every datasheet block, HOLD cloud, bubble and callout.
No value recorded that was not legibly read; unreadables marked, not guessed.
