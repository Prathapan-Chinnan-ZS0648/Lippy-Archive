# Derived — full tag inventory

Full tag inventory by sheet, cut under the bom-extraction unit rule in
`skills/bom-extraction/skill.md`. The tags marked **[F]** below are extracted in full as
findings in `findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/` — that is the
authoritative, one-file-per-unit set to count BOM line items against. Every other tag is
named here so this pack's coverage is checkable, but is not individually detailed — see
`reports/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/report.md`'s Coverage section.

## New/current equipment — extracted [F]

- GEN-G3, GEN-G4, GEN-G5 — 2000kW generators (E10, E05, E06)
- NGR-G3, NGR-G4, NGR-G5 — neutral grounding resistors, 400A/6 ohms/10 sec (E10)
- GSW-2 — Generator Paralleling/Switchgear (E10, E05, E06)
- MVSWGR-E, MVSWGR-F — medium voltage switchgear (E07, E08, E09, E05, E06)
- PMGR-1, PMGR-2 — pad-mounted switchgear (E05, E07)
- TX-M1, TX-M2 — substation-type transformers (E05, E07)
- NGR-TX-M1, NGR-TX-M2 — neutral grounding resistors for TX-M1/TX-M2 (E07)
- TX-7, TX-8, TX-9, TX-10 — 2000KVA distribution transformers (E05, E06, E08, E09)
- LB — on-site generator load bank, 2000KVA/2000KW (E10, E06)
- Generator Master Control Panel — houses the ATO controls (E05, E07, E15)
- VFD-9 — 1200HP VFD serving Finished Water Pump P9, MVSWGR-E breaker 5 (E08, E15)
- VFD-10 — 1200HP VFD serving Finished Water Pump P10, MVSWGR-F breaker 6 (E09, E15)

## Future equipment — named, not extracted as current BOM lines

- GEN-G6, NGR-G6 — dashed/future 2000kW generator + NGR (E05, E06, E10, E15 — E15
  explicitly labels it "(FUTURE)")
- DC Battery System (Battery Charger, 125VDC Station Battery, Panel DC 125V DC) — dashed
  throughout on E07; "Panel DC" also appears on EBFNE02's physical plan
- VFD No.6, No.7, No.8, No.11 (or "Finished Water Pump P6/P7/P8/P11" per E08/E09's own
  pump labels at the same breaker positions — the two numbering schemes do not visibly
  match one-for-one; see `detection.md`) — four future 1200HP VFDs
- Future Clearwell No.3 (E02) — civil, not electrical equipment, named for completeness

## Existing equipment — not new, not part of this pre-purchase BOM

- GEN-G1, GEN-G2 — existing 1250kW generators (E05, E06)
- Main Switchgear (existing), Generator Parallel Switchgear (existing) (E05)
- Existing 2000KVA 24.9kV/4.16kV utility transformer, existing CoServ PMU-1 — explicitly
  marked for demolition per Key Note 1 on E05 and E07
- TX-11, TX-12 — existing 1500KVA transformers feeding SWB-G/SWB-H, Recovery/Emergency
  Pump Station (E05)
- VFD (600HP) x3 — existing, feeding "Finished Water Pump 6/7/8 (RELOCATED)" (E06)

## Named but not individually detailed (locations, panels, sub-items)

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
