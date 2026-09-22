---
use-case: bom-extraction
source-document: Prepurchase Elect Dwgs_10-30-2024.pdf (sha256 422b2638…ebb73)
skill: bom-extraction v1
generated: 2026-09-22
method: per-page pdftotext -bbox word layers (this run) + full-resolution raster read of the textless sheet E06; classification governed by the set's own legend sheets GE01/GE02
---
# BOM extraction report — Prepurchase Electrical Drawings (Tom Harpool Regional WTP, Phase 2)

## Counts by category (individually filed units: 51)

| category | units | of which UNSURE |
|---|---|---|
| Switchgear (MV/LV/pad) | 7 — MVSWGR-E, MVSWGR-F, GSW-2, PMGR-1, PMGR-2, ESW-1A, ESW-1B | 0 |
| Transformers | 8 — TX-7/8/9/10 (2000KVA 4160→480V), TX-11/12 (1500KVA), TX-M1/M2 (7.5–10.5MVA substation) | 0 |
| Generators + NGRs | 4 + 6 — GEN-G3…G6 (2000KW), NGR-G3…G6 (400A 6Ω 10s), NGRM1/2 | 0 |
| Drives | 6 — VFD-6…11 (1200HP each) | 0 |
| MCC / PMU / GCP | 1 + 2 + 3 — MCC-E, PMU-1/2, GCP-1C/2C/3C | 0 |
| Control & DC panels | 6 (DC-1,3…DC-13,15) + MASTER CONTROL PANEL + DC BATTERY SYSTEM | 2 |
| Transfer/switching | ATS, DPP | 2 |
| Load banks | LB (2000KW on-site), LB-7 | 1 |
| Busway / network | BUS DUCT, IE-3400 (CISCO) | 1 |

Coverage: EQUIPMENT/TRANSFORMER/DRIVE/MCC/PANEL classes filed individually; the instrument/relay population counted-not-detailed (census in twin/derived/inventory.md), per Module 3's scoping allowance and plan.md.

## What a procurement reader must see (Module 5 "state explicitly")

1. **The master tag list is out of pack.** Four sheets say "REFER TO DRAWING EBFNE01 FOR EQUIPMENT TAG TABLE/NUMBERS" — EBFNE01 is not in this PDF. Every untagged-but-named item (MASTER CONTROL PANEL, ATS, DPP, BUS DUCT, DC BATTERY SYSTEM, the six E10 per-generator control panels) is filed UNSURE with that reason; their numbers likely exist on EBFNE01.
2. **One sheet has no text layer at all (E06, PDF page 5).** It was read by full-resolution raster vision; its readings are marked as such. It is the only sheet showing the 480V/3000A section, the ATS→DPP→TX→LB chain, and the "VFD (600HP) → FINISHED WATER PUMP 8 (RELOCATED)" branch.
3. **Same gear, two stated bus constructions:** MVSWGR-E/F headers print "INSULATED COPPER BUS" (E08/E09) while the E07/E06 one-lines print "TIN PLATED COPPER BUS" for the same switchgear. Both quoted, neither chosen — vendor clarification item.
4. **Demolition is part of this package:** E05 key note 1 removes existing COSERV PMU-1 + transformer after new services energize; ESW-1A/B and SWB-C are existing interface gear, not new purchase — flagged so counts aren't double-taken.
5. **Status mix:** G6 future; three "FUTURE VFD" slots (untagged, excluded); TX-11/12 sit in a FUTURE-labelled area without their own status token; SWB-G/H future.
6. **Printed anomalies kept verbatim, not repaired:** "CONTOL" (E15), "PMQ-1A2" (E07), "MVSWGR-D" (EBFNE02, unconfirmed — no unit filed), "LOCATON" (E02), placeholder "NET-XXXX-X"/"PLC-XXXX-X" (not extracted, placeholder rule).
7. **Quantity reconciliation open:** 4 generators vs 3 numbered GCP panels (GCP-1C/2C/3C) + 4 unnamed per-generator "GENERATOR CONTROL PANEL" boxes — stated as unresolved, not guessed.

## Sheet inventory
GE01/GE02 legends (grammar authority) · E02 electrical site plan · E05 overall one-line (home of PMGR/PMU/TX-M/GSW pad context) · E06 overall pump-station one-line (raster-only) · E07 MV E&F one-line I (bus specs, DC system, ESW) · E08 MVSWGR-E (MVSRE panels, TX-7/9, VF7-9) · E09 MVSWGR-F (MVSRF panels, TX-8/10, VF6/10/11) · E10 GSW-2 (home of GEN-G3…G6, NGR-G*, LB) · E15 elevations · EBFNE02 power & grounding plan. Missing from pack: E01, E03, E04, E06-gap check shows E06 present (page 5), EBFNE01/EBFNE04 referenced.
