# Assent Steel AD-3010-C-330030-SHT-004 shop drawing revision comparison (independent pack, sample-2)

```
skill: drawing-comparison
domain: offshore steel structure fabrication — shop drawing revision comparison
source: documents/source/AD-3010-C-330030-SHT-004-REV4.pdf
supporting: documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: n/a                            every callout of the source is classified against the supporting drawing; see skills/drawing-comparison.md
labels: TITLE-BLOCK, NOTES, STRUCTURAL-MEMBER
pages: one physical sheet is one page (PDF rule, design section 6); each revision of this drawing is a single A1 sheet, so 1 page per document
state: verified                     checker-equivalent self-review done and recorded (pivot.md §§10–12, agreement table); explicitly NOT the design §8 two-human-reader standard; UNSURE share 3/27 = 11% (>10% proposed signing budget) so the pack cannot be signed as-is
signed-by: —
classification: customer-confidential  supplied by Assent Steel for this project; not public-synthetic
profile: superseded-document 1 (REV3 itself, kept in supporting/); revision-cloud-untagged 1 (MEMB-8 — value changed at (742,874) with no Rev-4 balloon or pixel-diff cloud arc near it; recorded as a disagreement with the sheet's own marker layer, MEMB-18); already-communicated marker 1 (the Rev-4 Notes-box SYMBOLOGY "(*)" legend, NOTE-2, itself an ADDED note; three clouds carry the asterisk); reformat control case 3 (CTRL-1 handrail/BW order swap; CTRL-2 head-label band after balloon clearance; CTRL-3 wind-rose layout ghost); repeated-callout ambiguity 9 (the nine coordinate-pinned DIFF nodes among 8 surviving identical "SW(50N 10V)" + 20+ identical "SW(30N 10V)" strings — alignment by position only, pivot §10); near-miss 2 (bare "SW"@ (677,836) and (677,1006) stayed bare while seven siblings gained counts — text-only matching flags the wrong nodes); contradiction 0; stated-absence 0; spilled-table 0 (single sheet); figure-answer 17 of 22 diff findings (nearly all MEMB-*; the drawing makes text-only readers fail by default); out-of-pack cross-reference 1 (NOTE-1, "SEE SHEET 001"); packed-cell / placeholder-question / not-the-vendor's / answer-sheet — not applicable per the skill's pack-profile table
profile-vocabulary: see skills/drawing-comparison.md § Pack profile for the canonical drawing-comparison failure-mode names this line uses
```

**REV4 (`AD-3010-C-330030-SHT-004-REV4.pdf`) is the SOURCE document** — it is the current issue a fabricator would build from, and its callouts are what is being answered. **REV3 (`AD-3010-C-330030-SHT-004-REV3.pdf`) is kept as a SUPPORTING document** — it is the prior state a callout is compared against, not itself the thing being fabricated from.

The pack declares its own answer shape. The scale, the absence word, and the unit/label/finding-shape declarations live in `skills/drawing-comparison.md` and are read from there by the scorer, per Lippy Archive design revision 3 section 5. This is the same skill file as sample-1, reused unchanged; the two packs are independent works over the same document pair.

## Brief

### Task

Compare `AD-3010-C-330030-SHT-004`, Rev 3 (issued for construction 20.04.2026, now SUPPORTING) against the same sheet's Rev 4 (issued for construction 27.07.2026, now SOURCE) — a steel structure plan for Utilities (Nitrogen System, Instrument/Plant Air, Potable Water) — Unit 3010, Lower Zakum Long Term Development, Plan Phase-1 (LZ LTDP-1) EPC Works Package 2, on a single A1 sheet.

For every callout that differs between the two revisions, produce a finding (`actuals/findings/<id>.md`, in the shape declared by `skills/drawing-comparison.md`) that states:

- what changed (ADDED, REMOVED, or CHANGED),
- the exact callout and position in REV3 (where it existed),
- the exact callout and position in REV4 (where it exists),
- whether the change is material to fabrication (yes/no), and
- one line of reasoning for the materiality call.

Cover, at minimum: title-block fields, the drawing's own revision-history table rows, the Notes box (including any new symbology legend), and every member/connection/dimension label on the plan views and elevation detail. Callouts that carried forward with no substantive difference are also reported, marked UNCHANGED, as control cases, so a run's false-positive rate can be checked without transcribing every identical callout on the sheet.

### Context

The sheet (A1, rotated 90° in the PDF) carries two plan views — `PLAN EL. 111.500 (T.O.S.)` and `PLAN EL. 112.800 (T.O.S.)` — of a narrow, tall steel platform/walkway structure, plus a key plan, north/wind symbols, member and connection callouts (UB/UC/T/L sizes with weld/bolt counts like `SW(30N 10V)`), and a Notes box whose first item refers general notes to SHEET 001 (not in this pack). Both revisions are stamped ISSUED FOR CONSTRUCTION; Rev 4 is a corrective reissue, not a redesign. Rev 4's Notes box adds a SYMBOLOGY legend stating that clouds marked with an asterisk `(*)` indicate changes already communicated to the fabricator ahead of the formal reissue.

### What counts as a unit

See `skills/drawing-comparison.md`. In short: one callout (a title-block field, a revision-table row, a Notes-box item, or a member/connection/dimension label on a view), identified by its view and position, not by its text alone — several callouts on this sheet share identical member-size and connection-code text at different positions (repeated-callout ambiguity).

### What must not happen

- A callout must not be marked CHANGED because neighbouring revision clouds were cleared and label positions reflowed with no wording change (layout-only differences are UNCHANGED control cases).
- A callout must not be treated as unchanged just because it carries no revision cloud — values must be checked against REV3 independently of the clouds drawn on REV4.
- Where a change is confirmed in the text layer but its exact on-sheet position has not been independently pinned on the rendered sheet, the finding records `confidence: UNSURE` rather than guessing a grid location.

### Source of truth

The two drawing PDFs themselves are authoritative. Every finding was checked directly against both files — the text layer (`pdftotext`, coordinate-precise via `-bbox`) and rendered raster images of each sheet (`pdftoppm`), since the great majority of this drawing's content exists only in the plan graphic, not as extractable running text. A coordinate-based word diff of the two text layers drives the change hunt; the render confirms each candidate on-sheet.

### A note on the supplied files

The two PDFs in `documents/` are copied unchanged from the already-repaired files in `sample-1/documents/` (the originals as first supplied were DocuSign `multipart/form-data` bodies, repaired to valid PDFs before sample-1 was built). They open, render, and extract as valid single-page A1 PDFs here; digests are recorded in `file-index.md`. The repair itself is documented in sample-1's own records and is not re-derived in this pack.

## Operational guidelines

1. Track every instruction received in `prompting.md`, dated.
2. Record every decision with an explicit yes or no in `pivot.md`, including the reader-agreement table required by the Lippy Archive verification standard.
3. Keep `file-index.md` current for every file added or changed, including its digest.
4. Read the sheet from the PDF (text layer with coordinates and rendered raster), never from a partial extraction alone; count pages from 1 in the file (this pack: 1 page per document).
5. A run never edits `actuals/`; a person never edits `runs/`.
6. Every actual carries `verified-by`, `verified-on` and `confidence` in its front matter; twin pages also carry `verification`.
7. Do not modify anything under `sample-1/` or outside this pack.
