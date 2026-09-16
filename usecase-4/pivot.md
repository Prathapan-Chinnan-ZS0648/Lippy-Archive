# Pivot log

Decision history across all six pairs, one section per pair, preserving every entry's yes/no/who/when. `skill = version-compare` in the original "Method" lines below is the name in force at the time these decisions were made; the skill has since been renamed to `version-docs` (see `skills/version-docs.md`), with no change to its mechanics. Path references have been updated to the current per-pair layout.

## SYNTH_VERS_DOCS_S1_REVISED

### Method

Source = the Revised issue, `documents/SYNTH_VERS_DOCS_S1_REVISED/source/SYNTH_VERS_DOCS_S1_REVISED.pdf` (RFP-BRG-2026-0231-R1); supporting = the Original issue, `documents/SYNTH_VERS_DOCS_S1_REVISED/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf` (RFP-BRG-2026-0231), marked superseded. Skill = version-compare, declared in `skills/version-docs.md`. Two readers per file, independent, from the PDFs; resolver: not yet assigned for this pack. — yes, project bootstrap, 2026-09-11

### Agreement

| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 23 | 0 | 0 | 23 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 106 | 0 | 0 | 106 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-11, see entry 6 below) is a distinct method from the design's two-independent-reader standard (section 8) and is recorded as its own column rather than folded into "both readers agreed" so this table is never misread as claiming a human process that did not happen.

#### 1 · Unit numbering follows the source's own section order

Unit ids are grouped by the Revised document's own numbered sections (Introduction through Appendix C), not by the Original's numbering, since section numbers shift between issues because of insertions — for example, Cold Chain Monitoring becomes a new 5.3, pushing Hosting from 5.3 to 5.4, and System Integrations from 5.4 to 5.5 (`TECH-12`). — yes, single-pass draft, 2026-09-11

#### 2 · `DEL-10` marked material: no

"WMS Full Rollout — Remaining Distribution Centers" appears as its own deliverable row in the Revised document; in the Original it existed only as a Project Timeline milestone, not a Deliverables line item. Treated as a presentation change (a milestone promoted to its own deliverable row) rather than new scope, since the underlying work was already implied by the Original's Phase 1 / full-rollout split. — yes, single-pass draft, 2026-09-11; not settled by a second reader

#### 3 · `TECH-12` is this pack's renumbering control case

Section 5.4 System Integrations in the Original becomes Section 5.5 in the Revised, with the SAP S/4HANA and Zebra handheld integration bullets carried over verbatim. Classified UNCHANGED, not CHANGED, per `bootstrap.md`'s "What must not happen": a clause must not be marked CHANGED for renumbering alone. Counted in `bootstrap.md`'s `profile:` line as `renumbering control case 1`. — yes, single-pass draft, 2026-09-11

#### 4 · `TECH-6` (hosting model) kept as one CHANGED unit, not split

The Revised clause both removes the on-premise deployment option and restricts the remaining cloud option to two named providers (AWS or GCP), in the same sentence. Currently tracked as one CHANGED unit rather than a REMOVED unit (on-premise) plus an ADDED unit (AWS/GCP restriction), because the sentence reads as a single redrafted requirement, not two independent facts stapled together. Flagged as a genuine judgment call for the second reader: `bootstrap.md`'s "What must not happen" section calls out this exact pattern — a REMOVED option must not be silently absorbed into a CHANGED row — as a risk to watch for. If the resolver decides it should split, `TECH-6` becomes two units and `bootstrap.md`'s profile line and `actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/derived/SYNTH_VERS_DOCS_S1_REVISED.pdf.md` must be updated to match. — no, not settled, 2026-09-11

#### 5 · Appendix C counted as this pack's spilled-table case, once per document

The Compliance Certification Checklist table spans a page break in both the Original (page 10 to page 11) and the Revised (page 11 to page 12). Written under the design's writing rule (section 7): the full table on the page it starts, "Table continued from page N." on the continuation page, no repeated rows. Counted in `bootstrap.md`'s `profile:` line as `spilled-table 2`. — yes, single-pass draft, 2026-09-11

#### 6 · Automated cross-check pass, 2026-09-11: what it was and what it found

Not the two-independent-reader standard of design section 8 — no second human read either document. Instead, a scripted pass checked two things mechanically: (1) every finding's `Old`/`New` quote appears verbatim (normalized) on its cited twin page, and every citation resolves to a real page; (2) every twin page's Markdown conversion retains every word present in the source PDF's raw text layer, page for page. This is real verification — it caught actual defects, listed below — but it is not a substitute for a second reader judging whether a classification (ADDED/CHANGED/UNCHANGED, material yes/no) is *correct*, only whether it is *internally consistent with the cited page text*. All 106 findings and 23 twin pages now pass both checks; `confidence` was raised from `UNSURE` to `SURE` accordingly, and `verified-by: automated cross-check pass` records the method plainly rather than implying a human pass.

What it found and fixed:
- **19 findings had a stale page citation**: an earlier page-numbering pass (before the 12-page/11-page twin split was corrected) had left several `Deliverables`, `Functional Requirements Matrix`, `Project Objectives`, and `System Integrations` findings citing the wrong page by one. Fixed by relocating each citation to the page the quote actually appears on, and propagated to `actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/derived/SYNTH_VERS_DOCS_S1_REVISED.pdf.md` (23 unit rows corrected there, since several units share a page).
- **7 findings quoted a paraphrased, ellipsis-joined composite** (`DEF-3`, `TECH-2`, `OBJ-2`, `TC-1`, `APPB-3`, `APPA-9`, `TECH-12`) instead of text copied exactly from the page, violating the quote rule in `prompting.md`'s instruction to readers. Fixed by replacing each with one real verbatim excerpt and a note that it is representative of several unchanged items, with a pointer to the cited page for the rest.
- **`DEL-10`** carried a fabricated `Old` blockquote for a unit that is genuinely absent from the Original as a Deliverables row. Fixed to use the finding shape's own "Not present in [document]" convention, matching how every other ADDED unit in this pack states an absence; `old:` front matter set to `—` to match.
- **5 `[NEW]`-tagged findings** (`DEL-7`, `DEL-8`, `EVAL-5`, `EVAL-6`, `TIME-3`) quoted the Revised document's cell text without the `[NEW]` tag that is actually printed in that cell. Fixed to quote it as written.
- **4 twin pages were missing real content** that exists on the source PDF page but was dropped by the raw-text-to-Markdown conversion: the "To be eligible for consideration…" lead-in sentence above Section 7's bullet list (both documents), and the "Payment Schedule" / "Other Commercial Terms" sub-labels within Section 12 (both documents). Fixed by adding the missing text back to the twin pages.

None of this changes what a second human reader still needs to check: whether each ADDED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call, not just an internally consistent one. — yes, 2026-09-11

## SYNTH_VERS_DOCS_S2_REVISED

### Method
Source = revised RFP (`SYNTH_VERS_DOCS_S2_REVISED.pdf`); supporting = original RFP (`SYNTH_VERS_DOCS_S2_ORIGINAL.pdf`), marked superseded. Skill = version-compare. — yes, project bootstrap, 2026-09-11

### Agreement
| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 23 | 0 | 0 | 23 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 103 | 0 | 0 | 103 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-11, see entry 4 below) is a distinct method from the design's two-independent-reader standard (section 8) and is recorded as its own column rather than folded into "both readers agreed" so this table is never misread as claiming a human process that did not happen.

#### 1 · Section 6's onboarding bullets are REMOVED, not silently dropped
The original's five "Vendor Onboarding & Staffing Requirements" bullets (background checks, security training, staffing roster notification, physical access control, subcontracting approval) have no counterpart anywhere in the revised document. The revised document replaces the section with "6. [Reserved]" and states these requirements are now governed exclusively by the Master Services Agreement (MSA), which is outside this archive's documents. Tracked as five REMOVED units (`ONB-1` through `ONB-5`), material yes, plus one ADDED unit (`RES-1`) for the reservation notice itself. — yes, single-pass draft, 2026-09-11

#### 2 · Section 5.5 reformat is UNCHANGED for rows 1–5, ADDED for row 6
The revised document explicitly tags Section 5.5 "[REFORMATTED — PRESENTED AS A TABLE IN THIS REVISION]" and its own note says "Rows 1–5 restate the equivalent bullet-point content from the original RFP." Per `skills/version-docs.md`'s rule that a clause must not be marked CHANGED for a formatting difference alone, rows 1–5 are tracked as one UNCHANGED unit (`TECH-18`), material no. Row 6, Major Incident Response, has no counterpart in the original and is tracked as its own ADDED unit (`TECH-19`), material yes. This is this pack's reformat control case, counted in `bootstrap.md`'s `profile:` line. — yes, single-pass draft, 2026-09-11

#### 3 · Two spilled-table cases in the source document
Section 5.5's Vendor Support Responsibilities table spans a page break (page 5 to page 6), and Appendix C's Compliance Certification Checklist spans a page break (page 12 to page 13). Both written under the design's writing rule (section 7): the full table on the page it starts, "Table continued from page N." on the continuation page, no repeated rows. Counted in `bootstrap.md`'s `profile:` line as `spilled-table 2`. — yes, single-pass draft, 2026-09-11

#### 4 · Automated cross-check pass, 2026-09-11: what it was and what it found

Not the two-independent-reader standard of design section 8 — no second human read either document. Instead, a scripted pass checked two things mechanically: (1) every finding's `Old`/`New` quote appears verbatim (normalized) on its cited twin page, and every citation resolves to a real page; (2) every twin page's Markdown conversion retains every word present in the source PDF's raw text layer, page for page (accounting for the two spilled-table cases in entry 3, whose content was correctly relocated to the page the table starts on rather than lost). This is real verification — it caught actual defects, listed below — but it is not a substitute for a second reader judging whether a classification (ADDED/REMOVED/CHANGED/UNCHANGED, material yes/no) is *correct*, only whether it is *internally consistent with the cited page text*. All 103 findings and 23 twin pages now pass both checks; `confidence` was raised from `UNSURE` to `SURE` accordingly, and `verified-by: automated cross-check pass` records the method plainly rather than implying a human pass.

What it found and fixed:
- **5 findings had a stale page citation** after the spilled tables (Section 5.5 and Appendix C) were corrected to keep their full content on the page the table starts, per the writing rule in design section 7: `TECH-19`, `TIME-2`, `APPC-4`, `APPC-5`, `APPC-6`.
- **2 findings were missing a `[NEW]` tag** actually printed on the cited page (`DEL-6`, `DEL-7`), and 2 more had the same issue (`TIME-3`, `EVAL-5`).
- **1 finding (`COMM-3`) quoted a paraphrased composite** instead of text copied exactly from the page; fixed to a real verbatim excerpt.
- **1 finding (`APPA-8`) quoted two pricing-line descriptions joined with an ellipsis**, the same non-verbatim pattern caught in the SYNTH_VERS_DOCS_S1_REVISED pack; fixed to one real verbatim excerpt with a note pointing at the cited page for the rest.
- **1 finding (`TECH-19`) needed its quote rebuilt** to match the actual table-row text on the page it was relocated to.

None of this changes what a second human reader still needs to check: whether each ADDED/REMOVED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call — including, for this pack specifically, whether `ONB-1` through `ONB-5` should really be REMOVED rather than folded into a single grouped unit, and whether `TECH-18`'s reformat-as-UNCHANGED classification holds up to scrutiny. — yes, 2026-09-11

## SYNTH_VERS_DOCS_S3_REVISED

### Method
Source = revised RFP (`SYNTH_VERS_DOCS_S3_REVISED.docx`); supporting = original RFP (`SYNTH_VERS_DOCS_S3_ORIGINAL.docx`), marked superseded. Skill = version-compare. — yes, project bootstrap, 2026-09-15

### Agreement
| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 18 | 0 | 0 | 18 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 74 | 0 | 0 | 74 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-15, see entry 4 below) is a distinct method from the design's two-independent-reader standard (section 8) and is recorded as its own column rather than folded into "both readers agreed" so this table is never misread as claiming a human process that did not happen.

#### 1 · The Commercial Terms liquidated-damages bullet reverses a stated absence, not a plain addition
The original states outright, as its final Commercial Terms bullet: "No liquidated damages clause applies to this engagement." The revised document replaces that bullet with "Liquidated damages: \$5,000 per day for failure to open the Winthrop Commons dining hall by the contractual opening date. [NEW]" — tagged `[NEW]` by the document itself, which would suggest ADDED. Tracked instead as `COMM-6`, kind CHANGED, material yes, with Old citing the original's explicit non-applicability statement: treating this as ADDED would silently drop the fact that the original considered and rejected a liquidated-damages clause, which is itself a material fact for a vendor comparing the two issues. — yes, single-pass draft, 2026-09-15

#### 2 · Two clauses changed with no inline tag at all
Scope of Work's first bullet ("Operate and staff 5 dining halls and 12 retail food locations across campus") gains a clause in the revised document — "with a sixth dining hall to be added at Winthrop Commons in fall 2027" — with no `[NEW]` or `[MODIFIED]` marker, unlike every other changed bullet in the same section. Submission Instructions' single paragraph changes its two contact particulars — the submission email address (`auxiliaryservices@northfield.edu` to `procurement@northfield.edu`) and the proposal-validity period (120 to 150 days) — with no marker either. Both are tracked as CHANGED (`SCOPE-1`, `SUB-1`), material yes, on the basis of the substance, not the absence of a tag; the pack profile line in `bootstrap.md` counts these under `untagged silent change 2`, distinct from the tagged `[MODIFIED]`/`[NEW]` cases, because a reader relying on the document's own tags alone would have missed both. — yes, single-pass draft, 2026-09-15

#### 3 · Deliverables row 5 (original) / row 7 (revised) is a renumbering control case
"Annual Dining Services Performance Report, Annually, each August" is row 5 of the original's Deliverables table and row 7 of the revised table, after two new rows (Catering Services Launch Plan, Winthrop Commons Dining Hall Design & Staffing Plan) are inserted ahead of it. Tracked as `DEL-7`, kind UNCHANGED, since the row's own text is identical and only its position moved because of the insertions — not CHANGED for a row-number shift alone, per the skill's rule (`skills/version-docs.md`, "The rule"). Counted in `bootstrap.md`'s `profile:` line as `renumbering control case 1`. — yes, single-pass draft, 2026-09-15

#### 4 · Automated cross-check pass, 2026-09-15: what it was and what it found

Not the two-independent-reader standard of design section 8 — no second human read either document. Instead, a scripted pass checked two things mechanically: (1) every finding's `Old`/`New` quote appears verbatim on its cited twin page, and every citation resolves to a real page; (2) every twin page's Markdown conversion retains every paragraph and table row present in the source `.docx`'s body, section for section. This is real verification — it caught the defects below — but it is not a substitute for a second reader judging whether a classification (ADDED/REMOVED/CHANGED/UNCHANGED, material yes/no) is *correct*, only whether it is *internally consistent with the cited page text*. All 74 findings and 18 twin pages now pass both checks; `confidence` was raised from `UNSURE` to `SURE` accordingly, and `verified-by: automated cross-check pass` records the method plainly rather than implying a human pass.

What it found and fixed:
- **The two untagged silent changes** in entry 2 above were confirmed present in the revised document's own text (not an extraction artifact) and correctly classified CHANGED rather than defaulted to UNCHANGED for lacking a marker.
- **The stated-absence reversal** in entry 1 above was confirmed against the original's exact wording and reclassified from a draft ADDED call to CHANGED with an Old citation.
- **`DEL-7`'s citation** was corrected from "row 5" to "row 7" to match its position in the revised table after the two inserted rows, per entry 3.
- **`TIME-1` through `TIME-7`'s material calls** were reviewed individually rather than defaulted to a single blanket call: `TIME-3` (Proposal Submission Deadline) was set material yes since it changes a vendor-facing deadline directly; the other six date shifts (issue/reissue date, Q&A deadline, shortlist notification, presentations window, contract award, transition start) were set material no, since they shift together as a package and do not by themselves change a vendor's eligibility, price, or technical response.

None of this changes what a second human reader still needs to check: whether each ADDED/REMOVED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call — including, for this pack specifically, whether `EVAL-5`'s rename ("Sustainability Program" to "Sustainability & Food Recovery Program" with an unchanged 15-point weight) should really be material no, and whether `SCOPE-1` and `OBJ-5`/`SCOPE-8` (all three touching the same food-recovery and Winthrop Commons expansions) should be cross-referenced in `graph.md` rather than scored as fully independent units. — yes, 2026-09-15

#### 5 · Checker run before handover, 2026-09-15
Ran the format/digest/finding-shape/file-index checker (design section 12, "`lippy check`"; no packaged binary exists in this repo, so an equivalent script was written and run directly against this pack). It enforces: required front-matter fields on every twin page, derived file, detection, plan, finding and report actual; `for-document` digest equality against the two documents' computed sha256; twin-page contiguity (no gap in the page sequence); the finding shape's four sections present on every finding; every finding's `cites` field resolving to a real twin page; every `Old`/`New` single-line blockquote quote appearing verbatim (whitespace-normalized) on its cited twin page; `file-index.md` listing every actual file and both documents' digests; and `bootstrap.md`/`pivot.md` carrying their required fields.

First run found 2 failures, both non-verbatim quotes: `CONTACT-1`'s Old and New quotes had been written as a pipe-joined composite of the Contact Information table's four rows ("Issuing Officer: Karen Whitfield | Title: … | Email: … | Phone: …") instead of the table's own row-by-row Markdown; `APPB-5`'s New quote had been written as "Included Catering Program? (Y/N) [field]" instead of the reference-form table's own row. Both fixed to quote the twin page's exact Markdown table rows, one row per blockquote line. Re-run passed with zero errors. This is the same class of defect the SYNTH_VERS_DOCS_S2_REVISED pack's automated cross-check pass caught (composited or paraphrased quotes standing in for a verbatim excerpt) — worth watching for whenever a finding's Old/New cites a multi-field table row rather than a single sentence. — yes, checker run, 2026-09-15

## SYNTH_VERS_DOCS_S4_REVISED

### Method
Source = revised workbook (`SYNTH_VERS_DOCS_S4_REVISED.xlsx`); supporting = original workbook (`SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx`), marked superseded. Skill = version-compare. — yes, project bootstrap, 2026-09-11

### Agreement
| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 11 | 0 | 0 | 11 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 47 | 0 | 0 | 47 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-11, see entry 4 below) is a distinct method from the design's two-independent-reader standard (section 8) and is recorded as its own column rather than folded into "both readers agreed" so this table is never misread as claiming a human process that did not happen.

#### 1 · R-07 and R-17 are two units, not one CHANGED requirement
The revised workbook's own note (Requirements Matrix, row 22) says "R-07 (on-premise-only network monitoring) has been removed from this revision and replaced by R-17 (cloud-managed monitoring)." Per `skills/version-docs.md`'s spreadsheet unit rule, a row id is not reused across a removed/added pair, so this is tracked as one REMOVED unit (`R-07`) and one ADDED unit (`R-17`), not a single CHANGED requirement. This is this pack's id-reused-as-replacement case, counted in `bootstrap.md`'s `profile:` line. — yes, single-pass draft, 2026-09-11

#### 2 · The Cybersecurity Addendum is ADDED sheet-wide, one unit per row
The sixth sheet has no counterpart anywhere in the supporting workbook. Tracked as six ADDED units: `CSEC-1` for the sheet's own title and note, and `CS-01` through `CS-05` for its five requirement rows — not one unit for the whole sheet, per `skills/version-docs.md`'s rule that a new sheet's own heading and every data row within it are each their own unit. This is this pack's sheet-added case, counted in `bootstrap.md`'s `profile:` line. — yes, single-pass draft, 2026-09-11

#### 3 · Spreadsheet packs have no spilled-table case
Unlike a PDF pack, a sheet's rows never spill across a page break — one sheet is one page, per design section 6 — so `bootstrap.md`'s `profile:` line correctly declares `spilled-table 0` for this pack rather than treating a long sheet as a spill. — yes, single-pass draft, 2026-09-11

#### 4 · Automated cross-check pass, 2026-09-11: what it was and what it found

Not the two-independent-reader standard of design section 8 — no second human read either workbook. Instead, a scripted pass checked two things mechanically: (1) every finding's `Old`/`New` quote appears verbatim (normalized) on its cited sheet, on the cited row where the row is rendered as a table row; (2) every citation resolves to a real sheet. This is real verification — it caught actual defects, listed below — but it is not a substitute for a second reader judging whether a classification (ADDED/REMOVED/CHANGED/UNCHANGED, material yes/no) is *correct*, only whether it is *internally consistent with the cited sheet text*. All 47 findings and 11 twin pages now pass (one, `REF-1`, was manually re-verified against the raw twin page after the automated check flagged a false positive — its row 1 is rendered as a blockquote rather than a table row, since it is an instructional sentence, not a data row, and the checker's simple row-matcher does not parse blockquotes); `confidence` was raised from `UNSURE` to `SURE` accordingly, and `verified-by: automated cross-check pass` records the method plainly rather than implying a human pass.

What it found and fixed:
- **1 finding (`TIME-2`) was missing a `[NEW]` tag** actually printed in the cited cell.

None of this changes what a second human reader still needs to check: whether each ADDED/REMOVED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call — including, for this pack specifically, whether `R-07`/`R-17` should really be tracked as a removed/added pair rather than one CHANGED requirement, and whether every Cybersecurity Addendum row is correctly scoped as its own unit rather than grouped. — yes, 2026-09-11

#### 5 · Vendor-response columns added to the source workbook, out of version-docs scope
The source workbook's `Vendor Response (F/P/C/N)`, `Vendor Notes`, `Unit Price`, `Extended Price`, and Reference Form columns were filled in with a fictional vendor's response (Beacon Network Solutions, Inc.) at the user's request, 2026-09-11. These columns exist as empty template fields in both the source and supporting workbooks before this change — filling them in the source only does not add, remove, or change any RFP requirement, and is not itself a version-docs unit: a vendor's answer to a question is not a new version of the question. No `actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/` file was added, removed, or reclassified as a result. The source document's digest changed because its bytes changed; every `for-document` reference to it was updated, and the source's 6 twin pages were rebuilt from the updated workbook and re-verified (all 47 findings and 11 twin pages still pass the automated cross-check under the new digest). — yes, 2026-09-11

## SYNTH_VERS_DOCS_S5_REVISED

### Method
Source = revised briefing deck (`SYNTH_VERS_DOCS_S5_REVISED.pptx`); supporting = original briefing deck (`SYNTH_VERS_DOCS_S5_ORIGINAL.pptx`), marked superseded. Skill = version-compare. — yes, project bootstrap, 2026-09-15

### Agreement
| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 23 | 0 | 0 | 23 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 52 | 0 | 0 | 52 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-15, see entry 3 below) is a distinct method from the design's two-independent-reader standard (section 8).

#### 1 · Slide 7 is a whole new slide, not four independent additions
"EV Charging & Interconnection Requirements" (Slide 7 of the revised deck) has no counterpart anywhere in the original deck; the slide's own closing line states this directly ("This slide is new in this revision — no equivalent content existed in the original briefing deck"). Its four bullets are tracked as four ADDED units (`EV-1` through `EV-4`), but `bootstrap.md`'s `profile:` line separately counts `whole-slide addition 1`, distinct from an ordinary per-bullet ADDED clause, so a reader scanning the profile knows this pack exercises the "an entire slide is new" case specifically, not just scattered single-bullet additions. — yes, single-pass draft, 2026-09-15

#### 2 · The Optional Site Visit becoming a Virtual Site Walkthrough is a reformat control case, not just a date change
The original's "Optional Site Visit (Meadowbrook site)," an in-person event on March 17, 2026, becomes the revised deck's "Virtual Site Walkthrough (recorded, on-demand)" on June 2, 2026. Tracked as `TIME-2`, kind CHANGED, material no — the format itself changed (in-person to virtual/on-demand), not merely the date, so this is counted in `bootstrap.md`'s `profile:` line as `reformat control case 1`, distinct from the ordinary date-shift changes at the other Project Timeline rows. — yes, single-pass draft, 2026-09-15

#### 3 · Automated cross-check pass, 2026-09-15: what it was and what it found
Not the two-independent-reader standard of design section 8. A scripted pass checked: (1) every finding's `Old`/`New` quote appears verbatim on its cited twin page, and every citation resolves to a real page; (2) every twin page's Markdown conversion retains every shape, bullet, and table row present in the source `.pptx`'s slide XML, slide for slide. All 52 findings and 23 twin pages pass both checks; `confidence` raised from `UNSURE` to `SURE` accordingly, `verified-by: automated cross-check pass` recorded plainly.

None of this changes what a second human reader still needs to check: whether each ADDED/REMOVED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call — including, for this pack specifically, whether `OBJ-5` (the commercial-operation-date slip from Q4 2027 to Q2 2028) should be cross-referenced against `TIME-7` (the same COD figure restated in the timeline) in `graph.md` rather than scored as fully independent units. — yes, 2026-09-15

## SYNTH_VERS_DOCS_S6_REVISED

### Method
Source = revised RFP (`SYNTH_VERS_DOCS_S6_REVISED.pdf`); supporting = original RFP (`SYNTH_VERS_DOCS_S6_ORIGINAL.pdf`), marked superseded. Skill = version-compare. — yes, project bootstrap, 2026-09-15

### Agreement
| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 37 | 0 | 0 | 37 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 178 | 0 | 0 | 178 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-15, see entry 4 below) is a distinct method from the design's two-independent-reader standard (section 8).

#### 1 · The document's own Table of Contents page numbers do not match the PDF's physical pages
Both documents' internal Table of Contents (page 2) give printed page numbers that do not correspond to the PDF's actual page breaks: the original's Table of Contents lists Appendix F at printed page 20, but the original PDF has only 18 physical pages (confirmed by `pdfinfo`). Every citation in this pack uses the physical page, extracted page-by-page with `pdfplumber`, per design section 6 ("PDF … the physical page … the printed number is ignored"). Counted in `bootstrap.md`'s `profile:` line as `whole-document-page-number mismatch 1`. — yes, single-pass draft, 2026-09-15

#### 2 · Appendix E's corridor inventory table is grouped into 4 units, not one per row
Appendix E lists 15 highway corridors in the original and 16 in the revised document (adding SR-509 as C-16), each with CCTV, DMS, and ramp meter counts. Of these, only the totals row, the new C-16 row, and two rows with revised device counts (C-04, C-10) actually differ between documents; the remaining 13 rows are byte-for-byte identical. Rather than writing 15 or 16 near-identical finding files — 13 of which would say nothing but "UNCHANGED" — this pack groups the table into 4 units: `APPE-1` (totals), `APPE-2` (the new C-16 corridor), `APPE-3` (C-04's revised device counts), and `APPE-4` (C-10's revised ramp meter count). The 13 unchanged rows are listed once, for completeness, in `actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/derived/SYNTH_VERS_DOCS_S6_REVISED.pdf.md` rather than given individual finding files. This is a deliberate grain decision under the design's own principle that "the units of a source are its knowledge units, and their grouping is part of the truth, not a display choice" (design section 4) — a device-inventory appendix's rows are data, not separately negotiated requirements, unlike a compliance register's rows. Counted in `bootstrap.md`'s `profile:` line as `packed-appendix-row-grouping 1`. — yes, single-pass draft, 2026-09-15

#### 3 · FR-07 and FR-08 changing priority is CHANGED, not ADDED/REMOVED/a new row
The Functional Requirements Matrix (Section 6) keeps every requirement's ID and text identical between documents; the only difference for FR-07 ("Role-based dashboard customization") and FR-08 ("Mobile app for field technician device diagnostics") is that their Priority column moves from "Desired" to "Mandatory". Both are tracked as CHANGED, material yes, rather than being mistaken for new rows (they existed in the original) or removed rows (they still exist in the revision) — the skill's own rule (`skills/version-docs.md`, "The rule") that a clause is CHANGED "only when its substance differs" applies here to the priority field, not just prose text. — yes, single-pass draft, 2026-09-15

#### 4 · Automated cross-check pass, 2026-09-15: what it was and what it found
Not the two-independent-reader standard of design section 8. A scripted pass checked: (1) every finding's `Old`/`New` quote appears verbatim on its cited twin page, and every citation resolves to a real page; (2) every twin page's Markdown conversion retains every line of text present in the source PDF's physical page, extracted independently with `pdfplumber`. All 178 findings and 37 twin pages pass both checks; `confidence` raised from `UNSURE` to `SURE` accordingly, `verified-by: automated cross-check pass` recorded plainly.

The first run of this check found 3 defects, all fixed before the pass above:
- **`COMM-3`'s Old and New quotes** had been written as single pipe-joined lines summarizing the whole 6- and 7-line payment schedule, rather than one line per payment milestone as the twin pages actually show the table; fixed to quote each milestone line separately.
- **`INTRO-1`'s Old and New quotes** used curly quotation marks ("CDOT") copied from the source PDF's own typography, while the twin pages had been transcribed with straight quotation marks per this project's transcription convention; fixed by aligning the finding quotes to the twin pages' straight-quote convention, since the twin page — not the finding — is the citable record of a page's text.
- **`TC-9`'s New quote** included a trailing "[NEW]" tag that appears on the clause's heading ("14.9 Cybersecurity Incident Notification [NEW]") but not in the paragraph of body text actually quoted; fixed by removing the tag from the quoted body text.

None of this changes what a second human reader still needs to check: whether each ADDED/REMOVED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call — including, for this pack specifically, whether the grouped Appendix E units in entry 2 above should instead be split further (e.g., a dedicated unit for the statewide network-mileage figure at `INTRO-1` cross-referenced against the device totals at `APPE-1`), and whether `COMM-2`'s contract-term extension (6 to 7 years) should be marked material yes rather than no given how much larger the resulting total contract value becomes. — yes, 2026-09-15
