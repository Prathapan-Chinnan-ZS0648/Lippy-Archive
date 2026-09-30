---
sample: 260374 COMBINED PID SET 6-1-26
use-case: bom-extraction
skill-version: v1
based-on: actuals/findings/ (27 unit files, per actuals/plan.md)
source: documents/source/260374 COMBINED PID SET 6-1-26.pdf
supporting: n/a — single-document extraction, see skills/bom-extraction.md
state: draft — pending a second, named human reviewer; not yet signed off
---

# Bill of Materials — 260374 Combined P&ID Set, Rev B (06/01/2026)

Source: `documents/source/260374 COMBINED PID SET 6-1-26.pdf` (13 pages, 3S Services, LLC,
"Issued for Approval")

This is the structured BOM output for this drawing set: every tagged item with a full,
legible specification, extracted from its home sheet. It is **not** a complete tag index of
the drawing — see "Coverage" below.

## Equipment

| Tag | Description | Type / Size | Design / Operating / MAWP | Mfg/Model | Capacity | Sheet |
|---|---|---|---|---|---|---|
| V-200 | Intermediate pressure bulk separator | 72" ID x 18'-0" S/S | 345 PSIG @ 200F / 250 PSIG / 345 PSIG @ 200F | — | — | p.6, D-260374-11-005 |
| V-600A | Test separator #1 | 60" ID x 18'-0" S/S | 825 PSIG @ 200F / 550 PSIG / 825 PSIG @ 200F | — | — | p.8, D-260374-11-007 |
| V-700 | Vent stack | 0'-6" ID | — / 1 PSIG / — | — | — | p.11, D-260374-11-010 |
| CA-800 | Air compressor | Duplex compressor package | — | IR 2-2545A10 | 35 SCFM @ 125 PSIG (per pump); 10 HP motor ea. | p.12, D-260374-11-011 |
| F-803 | Filter | General purpose filter | — | IR FA110IG | 65 SCFM | p.12, D-260374-11-011 |
| F-804A | Pre-filter | Oil removal filter | — | IR FA110IH | 65 SCFM | p.12, D-260374-11-011 |
| DR-804 | Air dryer | Desiccant air dryer | — | IR D110IM | 65 SCFM | p.12, D-260374-11-011 |
| F-804B | Post-filter | Dust filter | — | IR FA110ID | 65 SCFM | p.12, D-260374-11-011 |
| V-805 | Dry air receiver | 30" OD x 7'-0" (240 gal), carbon steel | — / — / 200 PSIG | — | — | p.12, D-260374-11-011 |
| DR-3001 | Desiccant air dryer (f) | — (furnished with associated equipment/by others) | — | — | — | p.12, D-260374-11-011 |

## Safety relief valves

| Tag | Service | Size | Set pressure | Sheet |
|---|---|---|---|---|
| PSV-200 | V-200 | 3"x4" | 345 PSIG | p.6, D-260374-11-005 |
| PSV-201 | V-200 | 3"x4" | 362 PSIG | p.6, D-260374-11-005 |
| PSV-202 | V-200 | 3"x4" | 380 PSIG | p.6, D-260374-11-005 |
| PSV-600A | V-600A | 3"x4" | 720 PSIG | p.8, D-260374-11-007 |
| PSV-601A | V-600A | 3"x4" | 738 PSIG | p.8, D-260374-11-007 |
| PSV-602A | V-600A | 3"x4" | 756 PSIG | p.8, D-260374-11-007 |
| PSV-800 | CA-800 receiver | — | 200 PSI (173 SCFM) | p.12, D-260374-11-011 |
| PSV-801A | CA-800 pump #1 | — | 80 PSI (74 SCFM) | p.12, D-260374-11-011 |
| PSV-802A | CA-800 pump #2 | — | 80 PSI (74 SCFM) | p.12, D-260374-11-011 |
| PSV-805 | V-805 | 3/4" | 200 PSIG | p.12, D-260374-11-011 |

## Control valves

| Tag | Service | Set pressure | Sheet |
|---|---|---|---|
| PCV-201 | IP gas metering | 310 PSI | p.10, D-260374-11-009 |
| PCV-202 | Test gas metering | 225 PSI | p.10, D-260374-11-009 |
| PCV-600A | V-600A meter skid | 225 PSI | p.8, D-260374-11-007 |
| PCV-601A | V-600A water side | 35 PSIG | p.8, D-260374-11-007 |
| PCV-603A | V-600A vent plug | 15 PSIG | p.8, D-260374-11-007 |
| PCV-604A | V-600A vent plug | 15 PSIG | p.8, D-260374-11-007 |
| PCV-800 | V-805 outlet | 100 PSIG | p.12, D-260374-11-011 |

## Counts

| category | count |
|---|---|
| EQUIPMENT | 10 |
| SAFETY-RELIEF-VALVE | 10 |
| CONTROL-VALVE | 7 |
| **total BOM lines, this pack** | **27** |

## Coverage

This pack extracts every tag with its own full, legible specification. It does **not**
individually extract:

- **The instrument population** (~100+ tags): flow/level/pressure/temperature
  transmitters, indicators, controllers, switches, analyzers — counted and located by
  sheet in `actuals/twin/derived/260374 COMBINED PID SET 6-1-26.pdf.md`.
- **The well-pad flowline list**: 12 numbered lines (`PF-170`–`PF-223`) on sheet
  `D-260374-11-001`.
- **5 control/shutdown valves with no stated set-point**: `FCV-504`, `SDV-504`, `LCV-200`,
  `LCV-201`, `LCV-601A`, `LCV-602A`, `LCV-603A`, `SV-601A`, `SV-602A` (all present
  on-drawing, tagged, but without a legible set-point/size to extract).

See `pivot.md` Entry 3 for the scoping decision.

## Items flagged for procurement/engineering attention

1. **`DR-3001`** carries no independent specification on this drawing set — flagged "(f)",
   furnished with associated equipment or by others (`pivot.md` Entry 5).
2. **9 items flagged "HOLD FOR SIZING" on the drawing itself** (`PSV-200/201/202/600A/601A/602A`,
   `PCV-600A`'s bypass, `LCV-200/201` and the V-Ball valves on V-200's outlets — see
   individual findings) — the designer has not fixed a final size; set pressures given are
   final, sizes are not.
3. **`D-260374-11-004`** sits out of numeric sequence in the combined PDF (last page, not
   between `-003` and `-005`) — worth flagging to whoever combined this PDF, though it
   carries no content (`pivot.md` Entry 2).
4. **Sheet `D-260374-11-009`'s own cross-reference to the vent stack** misprints its own
   drawing number instead of `D-260374-11-010` — a drawing-authoring error, not an
   extraction error (`actuals/twin/.../page-010.md`).
5. **Note 2 on sheet `D-260374-11-011`** references `PIT-300B`/`PIT-300C`, while the
   bubbles actually drawn on that sheet read `800B`/`800C` — recorded as printed, not
   reconciled (this pack does not extract INSTRUMENT tags individually this pass).

## Independent rerun, 2026-09-29

At the user's request, this pack was re-checked independently and directly against the
source PDF — not by re-reading the existing findings. Method: `pdftotext -layout`/`-raw`
extraction (confirmed sparse — 187/141 lines respectively, and confirmed that essentially
no specification value, pressure, or instrument-bubble tag is present as extractable text
at all; only the large equipment block-header names and title-block boilerplate extract —
independently reconfirming why the original pass relied on rendered rasters as its primary
channel, not a shortcut taken for convenience), plus a full 200dpi render of all 13 pages,
read and checked page by page against every one of the 27 findings and every coverage claim:

- All 10 EQUIPMENT items' size/design/operating/MAWP/mfg-model/capacity fields (page 6,
  8, 11, 12) matched their findings and `report.md` rows exactly, with no discrepancy.
- All 10 PSVs' sizes and set pressures (pages 6, 8, 12) matched exactly.
- All 7 PCVs' set pressures (pages 8, 10, 12) matched exactly.
- `DR-3001`'s "(f)" flag and lack of independent spec (page 12), and the "(F) = finished
  with associated equipment or by others" legend definition (page 1), both confirmed.
- The 4 intentionally-blank sheets (pages 5, 7, 9, 13) and `D-260374-11-004`'s
  out-of-numeric-sequence position (page 13, last) confirmed exactly as recorded.
- The well-pad flowline list (12 lines, `PF-170`–`PF-223`, page 3) and the `-504`
  chemical-injection instrument loop and `AT-001`/`AT-002`/`AT-005` H2S monitors (pages 3–4)
  confirmed present and uncounted individually, matching the Coverage section above.
- Flagged item 4 (sheet `D-260374-11-009`'s vent-stack cross-reference misprinting its own
  drawing number) reconfirmed directly on page 10.

Not re-verified exhaustively in this pass: the precise count of "9" HOLD FOR SIZING-flagged
items and the full instrument-tag census in `actuals/twin/derived/` — spot-checked (e.g.
`PSV-200/201/202`'s and `LCV-200/201`'s HOLD FOR SIZING clouds on page 6) but not
individually re-tallied one by one, since that would amount to redoing the full original
pass rather than checking it. No finding content was changed as a result of this rerun —
it confirmed the existing 27 findings rather than replacing them.

## Open items before this pack can be signed off

- The INSTRUMENT bubble population and the well-pad flowline list (see "Coverage" above)
  are real, valuable work for a second pass, not yet individually detailed.
- The exact "9" HOLD FOR SIZING count was not individually re-tallied in the 2026-09-29
  rerun (see above) — spot-checked, not exhaustively re-verified.
- No named human reviewer has signed off on this pack yet — every finding's `verified-by`
  reads "single-reader cross-check" (agent self-verification, now including one independent
  rerun), not a named person.

No named domain reviewer has signed this pack; this file's own front matter reads `state:
draft`, not signed.
