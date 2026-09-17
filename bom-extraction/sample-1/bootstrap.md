# 3S Services 260374 Combined P&ID Set — Bill of Materials extraction

```
skill: bom-extraction
domain: oil & gas surface facilities — P&ID-driven Bill of Materials extraction
source: documents/source/260374 COMBINED PID SET 6-1-26.pdf
supporting: n/a — single-document extraction skill; there is no earlier revision or separate answering document, see skills/bom-extraction.md
scale: n/a — extraction, not comparison; see skills/bom-extraction.md
absence: a tag is extracted only when the drawing itself names/labels it; nothing is inferred from generic P&ID convention alone
labels: EQUIPMENT, SAFETY-RELIEF-VALVE, CONTROL-VALVE, INSTRUMENT
pages: one physical sheet is one page (PDF rule, design section 6); 13 pages in this PDF
state: verified                        checker-equivalent pass done by hand and recorded in pivot.md — not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
classification: customer-confidential  supplied for this project; not public-synthetic like the usecase-4 samples
profile: legend-dependent-tag 2 (both equipment-number and ISA instrument-letter grammars read from this set's own D-260374-11-LEGEND1/LEGEND2 sheets, not assumed); hold-for-sizing 9 (PSV-200/201/202/600A/601A/602A each in their own "HOLD FOR SIZING" cloud; LCV-200/201, both V-Ball valves on V-200's outlets, "HOLD FOR SIZING"; PCV-201's bypass "HOLD FOR SIZING" — see individual findings for which); split-datasheet 0 (every extracted item's spec was found in one boxed header block); repeated-tag-no-datasheet 1 (out-of-pack instrument population, below); non-sequential-sheet-order 1 (drawing D-260374-11-004 appears as PDF page 13, out of its own numeric sequence, after D-260374-11-011 at page 12 — see pivot.md § 2); package-sub-item 2 (the two aftercoolers inside CA-800's duplex compressor package are drawn but not separately tagged; DR-3001 is marked "(f)" — furnished with associated equipment/by others per this set's own Legend1 abbreviation table — and carries no independent size/capacity on this sheet, unlike DR-804); out-of-pack instrument population — this pack extracts 10 EQUIPMENT + 10 SAFETY-RELIEF-VALVE + 7 CONTROL-VALVE units in full (27 total) and does not individually extract the drawing's much larger INSTRUMENT bubble population (transmitters, indicators, switches, analyzers — well over 100 across the set); see § "What this pack does and does not cover" below and pivot.md § 3
profile-vocabulary: see skills/bom-extraction.md § Pack profile for the canonical bom-extraction failure-mode names this line uses
```

**`260374 COMBINED PID SET 6-1-26.pdf` (13 pages) is the SOURCE document** — the only input document this skill reads. Unlike `version-compare`/`drawing-comparison`, there is no supporting/superseded revision: this is a single P&ID set, read once, for what it itself states.

The pack declares its own answer shape. The unit/label/finding-shape declarations live in `skills/bom-extraction.md` and are read from there by the scorer, per Lippy Archive design revision 3 section 5.

## Brief

### Task

Read the 13-page combined Piping & Instrumentation Diagram (P&ID) set for 3S Services project 260374 and extract a structured Bill of Materials: every tagged piece of physical equipment, every pressure-safety/relief valve, and every control/shutdown valve with a stated set-point, each as its own finding (`actuals/findings/<tag>.md`) stating:

- the tag, exactly as printed,
- the description/service text the drawing gives it,
- every specification field the drawing states for it (size, design/operating/MAWP pressure, set pressure, capacity, material, mfg/model),
- where on the drawing it was read (document, page, drawing number), and
- anything a procurement or construction reader needs flagged (e.g. "HOLD FOR SIZING").

### Context

3S Services, LLC (Midland, Texas) prepared this P&ID set, "ISSUED FOR APPROVAL", revision B dated 06/01/2026, for what its equipment tags describe as a wellsite/CPF-style surface facility: a well-pad gathering manifold feeding two pressure-staged bulk separators (an intermediate-pressure separator, V-200, and a three-phase test separator, V-600A), a vent stack (V-700), IP/test gas metering and pressure control ahead of a gas gathering line, and a packaged instrument-air compressor system (CA-800 with its filter/dryer train and dry-air receiver V-805). The set carries two Legend sheets (line types, P&ID symbols, designation codes, piping-class table, and full ISA-style instrument nomenclature) that this pack reads as the decoder for every tag it extracts, not as BOM content in its own right.

### What counts as a unit

See `skills/bom-extraction.md`. In short: one tagged item a procurement or construction reader would put on an equipment/valve list — extracted from its fullest-detail "home" sheet (usually a boxed datasheet header), with other sheets' bare-tag callouts noted as cross-references, not separate units.

### What must not happen

- A "HOLD FOR SIZING" or "HOLD FOR INFO" callout must not be reported as if it were a fixed specification — the drawing is explicitly saying the designer has not fixed that value yet; report it as stated, don't fill the gap with a neighbouring line's size.
- A tag's grammar must not be assumed from generic P&ID convention when this set publishes its own Legend sheets — `CA-800` and `DR-804`/`DR-3001` are this project's own equipment-prefix choices (Legend1's "TYPICAL EQUIPMENT NUMBER" table lists single-letter identifiers as examples, not an exhaustive list), read from the legend's flag/abbreviation tables, not guessed.
- `D-260374-11-004` (PDF page 13) must not be assumed to sit between `D-260374-11-003` (page 5) and `D-260374-11-005` (page 6) just because its drawing number would suggest that — the combined PDF's actual page order has it last, after `D-260374-11-011`; see `pivot.md` § 2. Both `-003` and `-004` are intentionally blank sheets, so this has no BOM content consequence here, but the page-order fact itself must be recorded, not assumed away.
- This pack's 27 findings must not be read as a complete tag index of the drawing — it covers EQUIPMENT, SAFETY-RELIEF-VALVE and CONTROL-VALVE in full, and explicitly does not individually extract the much larger INSTRUMENT bubble population. See below.

### What this pack does and does not cover

**Extracted in full (27 findings):** every EQUIPMENT tag with its own boxed datasheet header (10: `V-200`, `V-600A`, `V-700`, `CA-800`, `F-803`, `F-804A`, `DR-804`, `F-804B`, `V-805`, `DR-3001`); every SAFETY-RELIEF-VALVE (10 PSVs); every CONTROL-VALVE with a stated set-point this pack located (7 PCVs: `PCV-201`, `PCV-202`, `PCV-600A`, `PCV-601A`, `PCV-603A`, `PCV-604A`, `PCV-800`).

**Not individually extracted:** the drawing's INSTRUMENT bubble population (flow/level/pressure/temperature transmitters, indicators, controllers, switches, analyzers — well over 100 tags across the set, e.g. the `FIT/FE/FCV/FY/PIT`-504 chemical-injection metering loop on sheet 001, the full per-compartment level/pressure/temperature instrumentation on V-200 and V-600A, the `800A`–`800E` instrument-air pressure-monitoring loop on sheet 011) and the well-pad flowline list (12 numbered lines, `PF-170` through `PF-223`, on sheet 001) are counted and located by sheet in `actuals/twin/derived/`, but not individually detailed as findings in this first pass. This mirrors the scoping decision `drawing-comparison/sample-1` made for this sheet's ~100 unchanged member callouts (design section 17's "cited and hard items first, the rest marked and scored later" allowance) — extracting the full instrument index and line list is real, valuable work for a second pass, not silently out of scope; it is named here so no one mistakes this pack's 27 findings for the whole tag population.

Additionally, a handful of control/shutdown valves visible on the drawing (`FCV-504`, `SDV-504`, `LCV-200/201/601A/602A/603A`, `SV-601A/602A`) carry a tag and a service but no legible stated set-point or size on the sheets reviewed — these are named in `actuals/twin/derived/` as present but not filed as individual findings in this pass, consistent with the same scoping decision.

### Source of truth

The P&ID PDF itself is authoritative. Every finding was checked directly against the page content — both the (very sparse) text layer (`pdftotext`) and a rendered raster image of each sheet, since the overwhelming majority of this drawing's content exists only in the plan/schematic graphic and small hand-placed text, not as extractable running text.

## Operational guidelines

1. Track every instruction received in `prompting.md`.
2. Record every decision with an explicit yes or no in `pivot.md`.
3. Keep `file-index.md` current for every file added or changed, including its digest.
4. Read every sheet from the PDF (text layer and rendered raster), never from a partial extraction alone; count pages from 1 in the file.
5. A run never edits `actuals/`; a person never edits `runs/`.
6. Every actual carries `verified-by`, `verified-on` and `confidence` in its front matter; twin pages also carry `verification`.
7. Do not modify anything outside `bom-extraction/` — leave `context.md`, `usecase-4/`, `drawing-comparison/`, and everything else untouched.
