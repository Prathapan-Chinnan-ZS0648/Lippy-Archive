---
document: Prepurchase Elect Dwgs_10-30-2024.pdf
role: source
for-document: sha256:422b2638d13fee272299e72f6fd9112852686baeea4863d3f79f9a79ad5ebb73
verified-by: single-reader cross-check
verified-on: 2026-09-21
confidence: SURE
---

# Prepurchase Elect Dwgs_10-30-2024.pdf — AKUs and questions

Per `skills/_shared/engineeringDrawingReading.md` rule 8 and `skills/bom-extraction/
skill.md`'s AKU-driven retrieval: this use case has no supporting document
(`fileIndex.md`'s `supporting_document_path: "n/a"`), so this document is the **source**,
and its derived summary records the AKU identified at each tag and the two questions
formulated for it — a classification question (asked of this drawing set's own GE01/GE02
legend and tagging table) and a specification question (asked of the tag's home sheet and
every other sheet it appears on) — never a plain content summary.

The 23 tags below are extracted in full as findings in `findings/bom-extraction/
Prepurchase Elect Dwgs_10-30-2024/` — that is the authoritative, one-file-per-unit set to
count BOM line items against. Every other tag named further below is not an AKU this
pass processed, so it carries no question.

## AKUs with a formulated question pair (extracted findings)

| Tag | Classification question (asked of GE02's tagging table) | Specification question (asked of the home sheet(s)) |
|---|---|---|
| GEN-G3 | Does this drawing set's tagging table assign the `GEN-1` pattern to this tag, and is it drawn solid (current) or dashed (future) on its own one-line? | What rated capacity, voltage, and generator-bus connection does E10 state for GEN-G3, confirmed on E05/E06? |
| GEN-G4 | Same classification question as GEN-G3, for this tag. | What rated capacity, voltage, and generator-bus connection does E10 state for GEN-G4, confirmed on E05/E06? |
| GEN-G5 | Same classification question as GEN-G3, for this tag. | What rated capacity, voltage, and generator-bus connection does E10 state for GEN-G5, confirmed on E05/E06? |
| NGR-G3 | What does this drawing set's own diagrams (not GE02's abbreviations table, which has no NGR row) spell out for the "NGR" label at this tag? | What resistance, current, and time rating does E10 state for NGR-G3? |
| NGR-G4 | Same classification question as NGR-G3, for this tag. | What resistance, current, and time rating does E10 state for NGR-G4? |
| NGR-G5 | Same classification question as NGR-G3, for this tag. | What resistance, current, and time rating does E10 state for NGR-G5? |
| GSW-2 | Does the tagging table's `SWGR-1` pattern apply to this tag? | What voltage, wire count, bus amperage, and SCCR does E10 state for GSW-2, confirmed on E05/E06? |
| MVSWGR-E | Does the tagging table's `SWGR-1` pattern apply to this tag? | What voltage, wire count, bus amperage, and SCCR does E08 (this tag's own dedicated sheet) state, and does it agree with E07's overview statement? |
| MVSWGR-F | Does the tagging table's `SWGR-1` pattern apply to this tag? | What voltage, wire count, bus amperage, and SCCR does E09 (this tag's own dedicated sheet) state, and does it agree with E07's overview statement? |
| PMGR-1 | Does the tagging table's `SWGR-1` pattern apply to this pad-mounted switchgear tag? | What voltage, bus amperage, and SCCR does E05 state for PMGR-1, confirmed on E07? |
| PMGR-2 | Same classification question as PMGR-1, for this tag. | What voltage, bus amperage, and SCCR does E05 state for PMGR-2, confirmed on E07? |
| TX-M1 | Does the tagging table's service/low-voltage-transformer pattern apply to this substation-type transformer tag? | What MVA rating, voltage transformation, and temperature rise does E07 state for TX-M1, confirmed on E05? |
| TX-M2 | Same classification question as TX-M1, for this tag. | What MVA rating, voltage transformation, and temperature rise does E07 state for TX-M2, confirmed on E05? |
| NGR-TX-M1 | What does this drawing set's own diagrams spell out for the "NGR" label at this tag? | What rating, if any, does E07 state for NGR-TX-M1 independently of TX-M1's own rating? |
| NGR-TX-M2 | Same classification question as NGR-TX-M1, for this tag. | What rating, if any, does E07 state for NGR-TX-M2 independently of TX-M2's own rating? |
| TX-7 | Does the tagging table's transformer pattern apply to this tag? | What KVA rating and voltage transformation does E08 state for TX-7, confirmed on E05/E06? |
| TX-8 | Same classification question as TX-7, for this tag. | What KVA rating and voltage transformation does E09 state for TX-8, confirmed on E05/E06? |
| TX-9 | Same classification question as TX-7, for this tag. | What KVA rating and voltage transformation does E08 state for TX-9, confirmed on E05/E06? |
| TX-10 | Same classification question as TX-7, for this tag. | What KVA rating and voltage transformation does E09 state for TX-10, confirmed on E05/E06? |
| LB | Does any tagging-table pattern apply to this on-site load bank, or is it read directly from its own labelled box? | What KVA/KW rating does E10 state for LB, confirmed on E06? |
| Generator Master Control Panel | Is this tag itself present in the tagging table, or only described functionally (housing ATO controls)? | What functional requirements does E05/E07/E15 state for this panel, and is any electrical rating stated for it? |
| VFD-9 | Does the tagging table's `VFD-1` pattern apply, and does the tag number match the pump number it serves on every sheet? | What HP rating and breaker position does E08 state for VFD-9, confirmed on E15? |
| VFD-10 | Same classification question as VFD-9, for this tag. | What HP rating and breaker position does E09 state for VFD-10, confirmed on E15? |

## Future equipment — named, not extracted as current BOM lines (no question formulated)

- GEN-G6, NGR-G6 — dashed/future 2000kW generator + NGR (E05, E06, E10, E15 — E15
  explicitly labels it "(FUTURE)")
- DC Battery System (Battery Charger, 125VDC Station Battery, Panel DC 125V DC) — dashed
  throughout on E07; "Panel DC" also appears on EBFNE02's physical plan
- VFD No.6, No.7, No.8, No.11 (or "Finished Water Pump P6/P7/P8/P11" per E08/E09's own
  pump labels at the same breaker positions — the two numbering schemes do not visibly
  match one-for-one; see `detection.md`) — four future 1200HP VFDs
- Future Clearwell No.3 (E02) — civil, not electrical equipment, named for completeness

## Existing equipment — not new, not part of this pre-purchase BOM (no question formulated)

- GEN-G1, GEN-G2 — existing 1250kW generators (E05, E06)
- Main Switchgear (existing), Generator Parallel Switchgear (existing) (E05)
- Existing 2000KVA 24.9kV/4.16kV utility transformer, existing CoServ PMU-1 — explicitly
  marked for demolition per Key Note 1 on E05 and E07
- TX-11, TX-12 — existing 1500KVA transformers feeding SWB-G/SWB-H, Recovery/Emergency
  Pump Station (E05)
- VFD (600HP) x3 — existing, feeding "Finished Water Pump 6/7/8 (RELOCATED)" (E06)

## Named but not individually detailed (no question formulated)

- Generator Control Panel (one per generator bay, G3-G6 — a sub-component of its
  generator, no independent rating stated) (E10)
- SWB-C, SWB-D, SWB-E, SWB-F — switchboards downstream of TX-9/TX-10/TX-7/TX-8; SWB-E and
  SWB-F share a combined 480V/3000A bus arrangement (E04/E05, E06) but no independently
  stated ampere rating was found for SWB-C/SWB-D specifically in the sheets reviewed
- MCC-E — motor control center, 480V, fed from the SWB-E/SWB-F bus via T1/T2 breakers
- ATS, ATS-P, Panel DPP, TXLB-P — Chlorine Analyzer Room / auxiliary panels (EBFNE02)
- SWBDF-2AP/3AP/4AP/5AP, SWBDE-4AP/5AP/2BP/3BP — switchboard-feeder-panel tags on the
  physical plan (EBFNE02), not individually rated on the sheets reviewed
- PLC-XXXX-X, NET-XXXX-X, MVSRF-4P, MVSRE-5P — placeholder-style or abbreviated tags on
  the physical plan (EBFNE02), not individually rated
- GCP-1C, GCP-2C, GCP-3C — generator/switchgear control-panel position labels on the
  physical plan (EBFNE02), likely the same control panels named elsewhere without this
  suffix, not confirmed as distinct tagged items
- Instrument/relay/CT/PT population across every one-line sheet (FPR, SCTB, GSCT, GMI,
  numbered protective-relay functions per the GE01 legend) — well into the hundreds of
  individual symbols across 11 sheets, not counted exhaustively, consistent with the
  P&ID pack's treatment of its own instrument population

Drawing EBFNE01 ("equipment tag table"), referenced twice on page 11 (EBFNE02) as the
authoritative tag list, is not included in this 11-page excerpt — see `detection.md`.

**Note on this file's relationship to the existing 23 findings:** these questions are
written from the same source-side tag identities `plan.md` and the findings already
establish (including the two findings, `mvswgre.md`/`mvswgrf.md`, whose specification
question already surfaces the open cross-sheet discrepancy those findings record) — they
do not restate or imply any specification value beyond what those findings already state,
and none of the 23 findings' own content was changed to produce this file. See
`skills/bom-extraction/patternLog.md` for the entry recording this reformatting.
