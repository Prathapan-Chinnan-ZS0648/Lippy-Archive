---
use-case: bom-extraction
state: run-complete, self-validated; no HITL record (human step — not forged)
classification: customer-confidential
generated: 2026-09-22
---
# Manifest — bom-extraction (run: _agent-comparison/bom-prepurchase-hermes-qwen)

## Digest ledger
documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf — sha256 422b2638d13fee272299e72f6fd9112852686baeea4863d3f79f9a79ad5ebb73 · 7,439,908 B · 11 pages, 1584×2448 pt, rot 270, AutoCAD 2023 plot, created 2024-10-30, ModDate 2024-11-18. Supporting document: n/a (single-document skill per bootstrap §2).

## Sample context & coverage scope (Module 3, stated explicitly)
- Drawing type: ELECTRICAL set (single-line diagrams + plan + elevations) — the first electrical input processed under this skill; Module 3's P&ID table adapted per plan.md (categories: switchgear / transformer / generator+NGR / drive / MCC / control & DC panels / transfer & load / busway / named-network device), classification governed by the set's own GE01/GE02 legend.
- Filed individually: 51 units (findings/). Counted-not-detailed: instrument/relay population, feeder/panel schedule ids, LCPs, CT/PT, arresters (census: twin/derived/inventory.md). Excluded with reason: pumps (mechanical), manholes (civil per legend), example tags on legend sheets, firm-registration numbers, placeholder strings, unconfirmed "MVSWGR-D".
- **Confidence: SURE 45 / UNSURE 6** (MASTER CONTROL PANEL, ATS, DPP, LB-7, BUS DUCT, DC BATTERY SYSTEM — each names its reason in-file).
- Out-of-pack references: EBFNE01 (equipment tag table), EBFNE04 (grounding/cable tray) — flagged in affected findings, never consulted or guessed.

## Validation checklist (Module 4)
- [x] Ids exactly as printed ("DC-1,3", "MASTER CONTOL PANEL" typo preserved, "PMQ-1A2" as-printed) — never normalized
- [x] Home-sheet extraction with split-datasheet reads (TX-M1/M2 across E05+E07+E06; MVSWGR bus conflict both-quoted)
- [x] Categories per GE01/GE02 legend only; unexpanded prefixes (PMU, DPP, MVSWGR's "MV") recorded unexpanded
- [x] No HOLD FOR SIZING/INFO tokens found on these sheets (searched: none) — rule recorded as checked, vacuously satisfied
- [x] SURE only for fully legible units; raster-only E06 readings marked; partials UNSURE with raw fragments
- [x] Coverage scope stated above and in plan.md, not left to inference
- [x] No specs/ratings/manufacturers supplied from outside the drawing (IE-3400 is the drawing's own stated model)
- [x] Artifacts record skill+version in front matter
- [ ] Shared-root manifest/prompt-log — NOT written: user write-fence confines this run to the sandbox folder (decision logged in prompt-log/)
- [ ] HITL MANUAL VALIDATE — human step, left open
