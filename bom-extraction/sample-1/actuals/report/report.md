---
verified-by: single-reader cross-check
verified-on: 2026-09-17
confidence: SURE
---
# Bill of Materials — 260374 Combined P&ID Set, Rev B (06/01/2026)

Source: `documents/source/260374 COMBINED PID SET 6-1-26.pdf` (13 pages, 3S Services, LLC, "Issued for Approval")

This is the structured BOM output for this drawing set: every tagged item with a full, legible specification, extracted from its home sheet. It is **not** a complete tag index of the drawing — see "Coverage" below.

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

This pack extracts every tag with its own full, legible specification. It does **not** individually extract:

- **The instrument population** (~100+ tags): flow/level/pressure/temperature transmitters, indicators, controllers, switches, analyzers — counted and located by sheet in `actuals/twin/derived/260374 COMBINED PID SET 6-1-26.pdf.md`.
- **The well-pad flowline list**: 12 numbered lines (`PF-170`–`PF-223`) on sheet `D-260374-11-001`.
- **5 control/shutdown valves with no stated set-point**: `FCV-504`, `SDV-504`, `LCV-200`, `LCV-201`, `LCV-601A`, `LCV-602A`, `LCV-603A`, `SV-601A`, `SV-602A` (all present on-drawing, tagged, but without a legible set-point/size to extract).

See `bootstrap.md`'s "What this pack does and does not cover" for why, and `pivot.md` § 3 for the scoping decision.

## Items flagged for procurement/engineering attention

1. **`DR-3001`** carries no independent specification on this drawing set — flagged "(f)", furnished with associated equipment or by others (`pivot.md` § 5).
2. **9 items flagged "HOLD FOR SIZING" on the drawing itself** (`PSV-200/201/202/600A/601A/602A`, `PCV-600A`'s bypass, `LCV-200/201` and the V-Ball valves on V-200's outlets — see individual findings) — the designer has not fixed a final size; set pressures given are final, sizes are not.
3. **`D-260374-11-004`** sits out of numeric sequence in the combined PDF (last page, not between `-003` and `-005`) — worth flagging to whoever combined this PDF, though it carries no content (`pivot.md` § 2).
4. **Sheet `D-260374-11-009`'s own cross-reference to the vent stack** misprints its own drawing number instead of `D-260374-11-010` — a drawing-authoring error, not an extraction error (`actuals/twin/.../page-010.md`).
5. **Note 2 on sheet `D-260374-11-011`** references `PIT-300B`/`PIT-300C`, while the bubbles actually drawn on that sheet read `800B`/`800C` — recorded as printed, not reconciled (this pack does not extract INSTRUMENT tags individually this pass).

No named domain reviewer has signed this pack; `bootstrap.md` `state: verified`, not `signed`.
