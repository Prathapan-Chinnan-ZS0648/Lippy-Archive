---
skill: bom-extraction
skill-version: 1
verified-by: author cross-check
verified-on: 2026-09-22
verification: corrected
---
# Plan of Action · this run

| # | Stage | Parameters for this document |
|---|---|---|
| 1 | UNDERSTAND | All 11 PDF pages; sheet structure mapped in detection.md (non-sequential E-numbers; one graphics-only page). Category authority = the set's own legend sheets GE01/GE02 (Module 1 legend rule), read fully from text layer. |
| 2 | CLASSIFY | Module 3's table is P&ID-only; this electrical set adapts it — EQUIPMENT-<tag> = major procurable apparatus (switchgear MVSWGR-E/F, generator switchgear GSW-2, existing switchgear ESW-1A/B, MCC-E, master control panel, PMU/PMGR, generators GEN-G3…G6, NGR resistors, load bank, unit heaters per legend grammar); TRANSFORMER-<tag> = TX-* dry-type/substation transformers (legend defines the TX symbol with kVA/V connections); DRIVE-<tag> = VFD-* (legend: VFD = variable frequency drive — these are the electrical analogue of Module 3's CONTROL-VALVE class: tagged items with stated ratings); RELAY/METER class = declared-and-counted, not individually detailed (coverage scope below). Category names carry the drawing's own prefixes; ids are exactly the printed tag (Module 1). |
| 3 | RETRIEVE | Text layer is rich on every page except p5 (graphics-only). Home sheet = where the tag carries its fullest stated spec (typically its one-line symbol with ratings). Every other occurrence → "also referenced on". No spec supplied from outside the drawing. |
| 4 | JUDGE | SURE only when tag + every quoted field legible in text layer or confirmed on raster; UNSURE with raw fragment for anything partial (esp. p3's dropped-glyph text — e.g. "LOCATON OF PMU-2" — and any raster-only reading). |
| 5 | VALIDATE | Module 4 checklist → recorded in manifest.md. |
| 6 | GENERATE | findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/<tag>.md, Module 5 shape. |

**Coverage scope (stated up front, per Module 3/6):** individually filed this pass = switchgear, transformers, generators+NGR, drives (VFD), motor control centers, control/power panels (GCP/PMU/PMGR/master control panel), load bank, bus duct systems, and any "HOLD FOR …" flagged items. Counted-but-not-detailed = instrument/relay population (PQM-*, TPR-*, FPR-*, DC-*, ISA-numbered devices 27/50/51…/87, pilot lights, meters) — census kept in twin/derived/inventory.md. Flowline/cable schedule entries (conductor/conduit callouts like 2(6"C), 350KCMIL) are wiring, not tagged procurable items → recorded as "also referenced" context only. p5 if raster shows tagged equipment gets units too; if unreadable → UNSURE finding.

**Verification channels:** (1) `pdftotext -bbox` per-page word coordinates (primary), (2) pdftoppm rasters + tesseract.js OCR in the browser for graphics-only/ambiguous regions, exactly as established. Raster channel mandatory for p5 before any verdict on it.

**Out-of-pack:** EBFNE01 EQUIPMENT TAG TABLE (referenced 4+ times) is the master list and is NOT in this PDF — coverage is what THIS pack's sheets name; the reference is flagged in every affected finding's Notes.

**Sandbox:** all writes confined to `_agent-comparison/bom-prepurchase-hermes-qwen/`; no HITL/manifest writes to shared roots; ENHANCE-SKILL suggestion logged here, live skill untouched.
