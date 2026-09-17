## Method

Source = `documents/source/260374 COMBINED PID SET 6-1-26.pdf` (13 pages, single document, no supporting/superseded revision — this skill extracts from one drawing set, it does not compare two). Skill = bom-extraction, declared in `skills/bom-extraction.md`, written new for this use case rather than reused from `drawing-comparison`. Verification method: a single reader (this session), not two independent human readers plus a resolver — recorded honestly as a distinct, weaker method, the same convention `drawing-comparison/sample-1` and `usecase-4/sample-1`'s automated cross-check pass use. Every extracted value was cross-checked against a rendered raster image of its home sheet at readable resolution; the PDF's text layer was checked too but is very sparse (187 lines of `pdftotext -layout` output across 13 pages) since almost all content on this drawing is vector graphics and small hand-placed text, not real text objects. — yes, project bootstrap, 2026-09-17

## Agreement

| stage | files | both readers agreed | resolved by resolver | resolved by single-reader cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 13 | 0 | 0 | 13 | 0 |
| derived / section-map | 2 | 0 | 0 | 2 | 0 |
| findings | 27 | 0 | 0 | 27 | 0 |

No second human reader or human resolver has touched this pack. Every one of the 27 findings was read directly off a legible boxed datasheet/callout block at readable render resolution, so none is left `UNSURE` in this pass — the pack's honesty about incompleteness is expressed instead through `bootstrap.md`'s explicit coverage-scoping section (§ "What this pack does and does not cover"), not through UNSURE findings, since every unit this pack does extract was extracted with confidence.

## 1 · Why a new skill, not a reuse of drawing-comparison

`drawing-comparison`'s entire shape (source/supporting pair, ALIGN step, ADDED/REMOVED/CHANGED/UNCHANGED scale, material-yes/no judgement) exists to diff two revisions of the same drawing. This task is a single-document extraction with no second revision to align against. Rather than force this task through a comparison skill's shape (e.g. by inventing a fictitious "supporting" document, or scoring every tag as a meaningless "ADDED"), a new skill, `bom-extraction`, was written, keeping what transfers from the Lippy Archive pattern generally (a documented unit-identity rule, a pack profile of drawing-reading failure modes specific to the task, and explicit scoping honesty about coverage) while dropping what doesn't (the whole comparison apparatus). See `skills/bom-extraction.md` and `bootstrap.md`'s Brief. — yes, single-pass draft, 2026-09-17

## 2 · Page order is not drawing-number order

The combined PDF's 13 pages, in file order, carry drawing numbers: LEGEND1, LEGEND2, -001, -002, -003 (blank), -005, -006 (blank), -007, -008 (blank), -009, -010, -011, -004 (blank). Two things worth recording: (a) `-004` and `-006`/`-008` don't fill the numeric gaps their neighbours' numbering would suggest — `-004` appears last, after `-011`, not between `-003` and `-005`; (b) both `-003` and `-004` are intentionally blank, so this particular ordering quirk has no BOM content consequence in this pack, but the fact is recorded rather than assumed away, per `skills/bom-extraction.md`'s `non-sequential-sheet-order` pack-profile entry — a future pack over a different drawing set must not assume page order tracks drawing-number order. — yes, single-pass draft, 2026-09-17

## 3 · Scope: 27 fully-specified items extracted; the instrument population counted, not individually detailed

The drawing carries far more tags than the 27 this pack extracts as findings: a full instrument index (flow/level/pressure/temperature transmitters, indicators, controllers, switches, analyzers — well over 100 across the set) and a 12-line well-pad flowline list are visible but not individually reviewed line-by-line in this pass. Decided to extract, in full, every tag with its own legible, complete specification — 10 EQUIPMENT items (each with a boxed datasheet header), 10 SAFETY-RELIEF-VALVEs (each with a stated set pressure), and 7 CONTROL-VALVEs with a stated set-point — and to record the remainder honestly rather than silently: counted and located by sheet in `actuals/twin/derived/`, and called out explicitly in `bootstrap.md`'s "What this pack does and does not cover" section, so no reader mistakes 27 findings for a complete tag index. This follows the same principle `drawing-comparison/sample-1` used for the ~100 unchanged member callouts it didn't individually re-transcribe (design section 17's "cited and hard items first, the rest marked and scored later" allowance), applied here to extraction coverage rather than comparison coverage. — yes, single-pass draft, 2026-09-17

## 4 · Home-sheet rule for tags that recur across sheets

Several tags appear on more than one sheet (e.g. `V-200` is named in its own boxed header on page 6/`-005`, and also appears as a bare flow-destination label on pages 3/`-001`, 4/`-002` and 8/`-007`). Each such tag is extracted once, from its "home" sheet — the one carrying its full boxed datasheet — with the other sheets it appears on recorded in the finding's "Also referenced on" field rather than filed as duplicate or partial units. See `skills/bom-extraction.md` § The rule. — yes, single-pass draft, 2026-09-17

## 5 · DR-3001 recorded with an acknowledged spec gap, not guessed

`DR-3001` is labelled "DESICCANT AIR DRYER (f)" on sheet `-011`/page 12, separately from `DR-804` (the compressed-air train's own desiccant dryer, which does carry a full MFG/MODEL/CAPACITY row in the same sheet's header table). The `(f)` flag, per this set's own Legend1 abbreviation table, means "furnished with associated equipment or by others" — i.e. outside this drawing's own scope to specify. `DR-3001` is extracted as a real, distinct tag (it is drawn as its own box feeding the vent mufflers, not merely a duplicate label for `DR-804`), but its finding states plainly that no independent size/capacity is given for it on this sheet, rather than assuming it shares `DR-804`'s spec. — yes, single-pass draft, 2026-09-17

## 6 · Checker-equivalent pass, 2026-09-17: what it was and what it found

No `lippy check`/`lippy compare` tooling is available in this environment. Its checks were applied by hand: (1) every finding's front matter has the fields `skills/bom-extraction.md`'s finding shape and the design's verification standard require; (2) the finding's `for-document` digest matches `file-index.md`; (3) every finding id appears exactly once in `actuals/report/report.md`'s row table; (4) every "HOLD FOR SIZING"-flagged item's finding states that flag rather than a fabricated value. All 27 findings and all 13 twin pages pass. `confidence` is `SURE` for all 27 findings; `bootstrap.md` set to `state: verified`, not `signed` (no named domain reviewer has reviewed this pack). — yes, 2026-09-17
