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

## Pressure control valves

| Tag | Service | Set pressure / Size | Sheet |
|---|---|---|---|
| PCV-201 | IP gas metering | 310 PSI | p.10, D-260374-11-009 |
| PCV-202 | Test gas metering | 225 PSI | p.10, D-260374-11-009 |
| PCV-600A | V-600A meter skid | 225 PSI | p.8, D-260374-11-007 |
| PCV-601A | V-600A I.A. supply regulation | 35 PSIG, 1/4" | p.8, D-260374-11-007 |
| PCV-602A | V-600A I.A. supply regulation | 35 PSIG, 1/4" | p.8, D-260374-11-007 |
| PCV-603A ⚠ | V-600A vent plug (tag disputed — see Notes) | 15 PSIG | p.8, D-260374-11-007 |
| PCV-604A | V-600A vent plug | 15 PSIG, 1/4" | p.8, D-260374-11-007 |
| PCV-800 | V-805 outlet | 100 PSIG | p.12, D-260374-11-011 |

## Level control valves

| Tag | Service | Size / Type / Fail | Sheet |
|---|---|---|---|
| LCV-200 | V-200 oil/water outlet | 3" V-BALL FO — HOLD FOR SIZING | p.6, D-260374-11-005 |
| LCV-201 | V-200 water outlet bypass | 3" V-BALL FC — HOLD FOR SIZING | p.6, D-260374-11-005 |
| LCV-601A | V-600A oil outlet | 2" V-BALL FO — HOLD FOR SIZING | p.8, D-260374-11-007 |
| LCV-602A | V-600A water outlet (oil metering run) | 2" V-BALL FO — HOLD FOR SIZING | p.8, D-260374-11-007 |
| LCV-603A | V-600A water outlet (water export run) | 2" V-BALL FO — HOLD FOR SIZING | p.8, D-260374-11-007 |

## Other control valves

| Tag | Service | Size / Fail | Sheet | Confidence |
|---|---|---|---|---|
| KV-800 ⚠ | Instr.-air area, CA-800 pkg (prefix undefined in legend) | 1/2" FC, (f) | p.12, D-260374-11-011 | UNSURE |
| KV-805 ⚠ | V-805 outlet area (prefix undefined in legend) | 1/2" FO, (f) | p.12, D-260374-11-011 | UNSURE |

## Counts

| category | count | of which SURE | of which UNSURE |
|---|---|---|---|
| EQUIPMENT | 10 | 10 | 0 |
| SAFETY-RELIEF-VALVE | 10 | 10 | 0 |
| CONTROL-VALVE | 15 | 12 | 3 (PCV-603A, KV-800, KV-805) |
| **total BOM lines, this pack** | **35** | **32** | **3** |

## Coverage

This pack extracts every tag with its own full, legible specification. It does **not**
individually extract:

- **The instrument population** (~100+ tags): flow/level/pressure/temperature
  transmitters, indicators, controllers, switches, analyzers — counted and located by
  sheet in `actuals/twin/derived/260374 COMBINED PID SET 6-1-26.pdf.md`.
- **The well-pad flowline list**: 12 numbered lines (`PF-170`–`PF-223`) on sheet
  `D-260374-11-001`.
- **4 control/shutdown valves with no extractable spec**: `FCV-504`, `SDV-504`, `SV-601A`,
  `SV-602A` — present on-drawing, tagged, but without a legible set-point or size.
  (`LCV-200`, `LCV-201`, `LCV-601A`, `LCV-602A`, `LCV-603A` were in this list in the
  original pass; all five were promoted to findings in the 2026-09-30 cross-check — they
  carry pipe size and fail-position spec, which is the correct BOM spec for level control
  valves even though no pressure set-point is given.)

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

## Cross-model comparison, 2026-09-30

Claude (`runs/2026-09-30-a/`, 27 findings) vs Hermes/qwen3.8-flash (`runs/2026-09-29-a/`,
34 findings). Three discrepancy types found and resolved:

1. **5 LCV items added** (`LCV-200`, `LCV-201`, `LCV-601A`, `LCV-602A`, `LCV-603A`): Hermes
   extracted all five with pipe-size and fail-position spec. Claude's original pass had listed
   them in the Coverage exclusion as "no stated set-point". Resolution: size and fail position
   ARE the correct BOM spec for level control valves; all five promoted to SURE findings.
   LCV-200 and LCV-201 (page 6) and LCV-602A and LCV-603A (page 8) were independently
   confirmed from the drawing in the 2026-09-30 render session. LCV-601A was accepted on
   Hermes's read, consistent with the confirmed LCV-602A/603A pattern.

2. **2 KV items added** (`KV-800`, `KV-805`): Hermes found both on page 12 (D-260374-11-011),
   both 1/2" with fail positions, both marked "(f)". Both carry `UNSURE` confidence because
   the "KV" prefix appears in neither the LEGEND1 equipment-letter table nor the LEGEND2
   typical-identifiers table. Not independently confirmed in the 2026-09-30 render session.

3. **PCV-602A added; PCV-601A description corrected; PCV-603A downgraded to UNSURE**:
   `PCV-602A` (SET @ 35 PSIG, I.A., 1/4") was confirmed on the 2026-09-30 render and
   by Hermes — missed entirely in the original pass. `PCV-601A` description updated from
   "V-600A water side" to "V-600A I.A. supply regulation" (the water-side outlet is
   controlled by `LCV-601A`). `PCV-603A` (15 PSIG VENT PLUG) was in the original pass
   and its twin-page record, but Hermes did not find it; the 2026-09-30 render confirmed
   `PCV-602A` and `PCV-604A` in that cluster but did not independently confirm or refute
   a separate `PCV-603A` — downgraded to UNSURE, pending named-reviewer confirmation.

## Open items before this pack can be signed off

- **`PCV-603A` tag must be confirmed by a named reviewer**: the 2026-09-30 cross-check
  found `PCV-602A` (confirmed) but did not settle whether a separate `PCV-603A` also
  exists on page 8; the original twin-page record says yes, Hermes says no.
- **`KV-800` and `KV-805` prefix must be confirmed**: the "KV" tag prefix is not defined
  in this drawing's own legend; a designer query is needed before procuring.
- The INSTRUMENT bubble population and the well-pad flowline list (see "Coverage" above)
  are real, valuable work for a second pass, not yet individually detailed.
- The HOLD FOR SIZING count has grown: the 5 newly-added LCV findings are all HOLD FOR
  SIZING, plus the original PSV/PCV HOLD items — a named reviewer should re-tally the
  complete count.
- No named human reviewer has signed off on this pack yet — findings carry "single-reader
  cross-check" or "two-reader cross-check" (agent-side), not a named person.

No named domain reviewer has signed this pack; this file's own front matter reads `state:
draft`, not signed.
