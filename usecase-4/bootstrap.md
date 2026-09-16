# Version-docs RFP reissue comparisons

This use case covers six independent version-compare projects, each comparing an
original RFP (or vendor pre-bid briefing) issue against its later, reissued
revision. Each pair is a standalone Lippy Archive pack with its own
`documents/<pair-name>/{source,supporting}`, `actuals/<pair-name>/` (detection,
plan, findings, twin, report), sharing one common skill declaration,
`skills/version-docs.md`, and the operational guidelines below. Pair names are
the source document's own filename (without extension); findings, twin pages
and reports for a pair are namespaced under `actuals/<pair-name>/` so that
finding ids (e.g. `COMM-1`, `SCOPE-1`, `ELIG-1`), which are only unique within
a pair, do not collide across pairs.

## SYNTH_VERS_DOCS_S1_REVISED — Brightline Retail Group RFP version comparison

```
skill: version-docs
domain: retail supply chain procurement — RFP version comparison
source: documents/SYNTH_VERS_DOCS_S1_REVISED/source/SYNTH_VERS_DOCS_S1_REVISED.pdf
supporting: documents/SYNTH_VERS_DOCS_S1_REVISED/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: UNCHANGED                     a clause carried forward with no substantive difference
labels: n/a — version-docs does not classify units by respondent
pages: counted from the first page of each file, starting at 1
state: verified                        checker passes and agreement is recorded; see pivot.md § SYNTH_VERS_DOCS_S1_REVISED § Agreement and § 6 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
classification: public-synthetic
profile: superseded-document 1 (the Original itself, kept in supporting/); renumbering control case 1 (TECH-12, Sec 5.4 -> 5.5, SAP ERP/Zebra integration, UNCHANGED); reformat control case n/a (no REFORMATTED-scale cases in this pack); reletter control case n/a (no RELETTERED units in this pack); control-row grouping n/a (no large repeating tables in this pack's documents); near-miss 0; contradiction 0; stated-absence 0; spilled-table 2 (Appendix C, Compliance Certification Checklist, spans a page break in both the Original and the Revised); figure-answer 0; scan 0; packed-cell n/a (not applicable to this skill); placeholder-question n/a (not applicable to this skill); not-the-vendor's 0; answer-sheet n/a (not applicable to this skill)
profile-vocabulary: see skills/version-docs.md § Pack profile for the canonical version-docs failure-mode names this line uses
```

**The Revised issue (`SYNTH_VERS_DOCS_S1_REVISED.pdf`, RFP-BRG-2026-0231-R1) is the SOURCE document** — it is the current issue a vendor would actually respond to, and its clauses are what is being answered. **The Original issue (`SYNTH_VERS_DOCS_S1_ORIGINAL.pdf`, RFP-BRG-2026-0231) is kept as a SUPPORTING document** — it is the prior state a clause is compared against, not itself the thing being answered.

The pack declares its own answer shape. The scale, the absence word, and the unit/label/finding-shape declarations live in `skills/version-docs.md` and are read from there by the scorer, per Lippy Archive design revision 3 section 5.

### Brief

#### Task

Compare RFP-BRG-2026-0231 (Original, issued March 9, 2026, now SUPPORTING) against RFP-BRG-2026-0231-R1 (Revised, issued June 2, 2026, now SOURCE), both issued by Brightline Retail Group for a Warehouse Management System (WMS), Fleet Telematics, and (in the Revised issue) Cold Chain Monitoring modernization program.

For every clause or field that differs between the two versions, produce a finding (`actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/<id>.md`, in the shape declared by `skills/version-docs.md`) that states:

- what changed (ADDED, REMOVED, or CHANGED),
- the exact wording and location in the Original (where it existed),
- the exact wording and location in the Revised (where it exists),
- whether the change is material to a vendor's bid (yes/no), and
- one line of reasoning for the materiality call.

Clauses that carried forward between versions with no substantive difference must also be reported, marked UNCHANGED, so that a version-docs tool's false-positive rate can be checked against known control cases.

#### Context

Brightline Retail Group acquired Meridian Grocers' logistics network in March 2026, adding two refrigerated distribution centers and 140 delivery trucks. The Revised RFP reflects the expanded, food-safety-sensitive operating footprint: new cold chain monitoring and FSMA food-traceability obligations were introduced, and the scope, eligibility criteria, technical requirements, and commercial terms were revised accordingly.

#### What counts as a unit

See `skills/version-docs.md`. In short: a unit is one clause or field a careful reader would point to independently. Where the Revised document introduces an entirely new sub-section (e.g. Section 5.3 Cold Chain Monitoring, Section 14.5 Food Safety Compliance), each new requirement within it is its own ADDED unit, not one unit for the whole section.

#### What must not happen

- A clause must not be marked CHANGED if the only difference is renumbering with no wording change (see Section 5.4 -> 5.5 SAP ERP/Zebra integration, tracked as `TECH-12`, UNCHANGED).
- A REMOVED option (e.g. the on-premise hosting choice) must not be silently absorbed into a CHANGED row for "hosting model" — this pack currently tracks it as `TECH-6`, CHANGED, because the Revised clause both removes the on-premise option and narrows the remaining option to two named providers in the same sentence; if a resolver decides that conflates two independent facts, `TECH-6` should be split into its own REMOVED unit (the on-premise option) alongside an ADDED unit (the AWS/GCP restriction), and that split recorded in `pivot.md` before the pack is re-scored.
- Administrative/date fields (issue date, deadlines, contact names) are still tracked as their own units even though they are not commercial or technical terms, so that a version-docs tool is not scored as if it may ignore administrative sections.

#### Source of truth

The two RFP PDFs themselves are authoritative. Every finding in `actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/` was checked directly against the page text of the Original and Revised PDFs.

## SYNTH_VERS_DOCS_S2_REVISED — Ashford Financial Group ITSM & Major Incident Response RFP version comparison

```
skill: version-docs
domain: financial services corporate IT procurement · RFP reissue comparison
source: documents/SYNTH_VERS_DOCS_S2_REVISED/source/SYNTH_VERS_DOCS_S2_REVISED.pdf (RFP-AFG-2026-0064-R1, issued May 11, 2026, 13 pages)
supporting: documents/SYNTH_VERS_DOCS_S2_REVISED/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf (RFP-AFG-2026-0064, issued February 16, 2026, 10 pages — superseded)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: not applicable to this skill — every clause of the source (revised) is classified against the supporting (original)
labels: not used by this skill
pages: counted from the first page of each file, starting at 1
state: verified                        checker passes and agreement is recorded; see pivot.md § SYNTH_VERS_DOCS_S2_REVISED § Agreement and § 4 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
profile: superseded-document 1 (the original is the superseded revision); renumbering control case 0; reformat control case 1 (Section 5.5, Vendor Support Responsibilities, bullets to table); reletter control case 0; near-miss 0; contradiction 0; stated-absence 0; spilled-table 2 (Section 5.5 vendor support table, and Appendix C, both span a page break in the source); figure-answer 0; scan 0
```

### Brief

Ashford Financial Group (AFG) reissued its Request for Proposal for an IT Service Management (ITSM) platform and managed helpdesk services roughly three months after the original issue, following its February 2026 acquisition of Colonial Trust Bank. The reissue adds a formal Major Incident Response capability across the same program, following a rise in Severity 1 outages observed after the acquisition, and revises scope, technical requirements, eligibility, evaluation, and commercial terms accordingly. It also removes Section 6 (Vendor Onboarding & Staffing Requirements) entirely, marking it "[Reserved]" and stating that those requirements are now governed exclusively by the Master Services Agreement executed at contract award, and it reformats Section 5.5 (Vendor Support Responsibilities) from a bullet list into a table with explicit SLA targets. What is answered is every clause of the revised RFP (`documents/SYNTH_VERS_DOCS_S2_REVISED/source/SYNTH_VERS_DOCS_S2_REVISED.pdf`), classified as ADDED, REMOVED, CHANGED or UNCHANGED against the original RFP (`documents/SYNTH_VERS_DOCS_S2_REVISED/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf`), so a bid or proposal team can see exactly what changed since the original without re-reading both documents end to end. The revised document marks most of its own changes inline as `[NEW]`, `[MODIFIED]`, `[REFORMATTED]`, or `[RESERVED]` — a useful starting draft, not a verified fact; every clause is checked against the original regardless of whether it carries a tag, since unmarked clauses can still have changed silently in a number, a date, or a name. A clause is CHANGED only if its substance differs, not its format or section number alone: Section 5.5's move from bullets to a table is classified UNCHANGED where the underlying obligation is the same, not CHANGED for presentation alone. A clause is ADDED if no counterpart exists in the original at all, and REMOVED if the original states it and the revised no longer does — Section 6's five onboarding bullets are REMOVED, not silently dropped, even though the section number is reused for a "[Reserved]" placeholder. Material yes/no marks whether the change affects a vendor's eligibility, price, or technical response, not just wording. What to produce is one finding per clause of the revised document, in the version-docs finding shape: Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters. What not to do: do not treat the original as the truth and the revised as the deviation — the source is the revised document, and the original is supporting evidence for what changed; do not rely solely on the revised document's own inline tags; and do not treat Section 6's "[Reserved]" placeholder as if the onboarding requirements simply vanished — they moved to the MSA, which is outside this archive's documents, so the finding should say that plainly rather than imply the requirement no longer exists anywhere.

## SYNTH_VERS_DOCS_S3_REVISED — Northfield University Campus Dining Services, Catering & Meal Plan Management RFP version comparison

```
skill: version-docs
domain: higher education auxiliary services · campus dining and catering procurement · RFP reissue comparison
source: documents/SYNTH_VERS_DOCS_S3_REVISED/source/SYNTH_VERS_DOCS_S3_REVISED.docx (RFP-NU-2026-0115-R1, issued April 6, 2026)
supporting: documents/SYNTH_VERS_DOCS_S3_REVISED/supporting/SYNTH_VERS_DOCS_S3_ORIGINAL.docx (RFP-NU-2026-0115, issued January 20, 2026 — superseded)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: not applicable to this skill — every clause of the source (revised) is classified against the supporting (original)
labels: not used by this skill
pages: the twin's own pagination as read, following the document's own numbered Table of Contents (Word document; see design section 6)
state: verified                        checker passes and agreement is recorded; see pivot.md § SYNTH_VERS_DOCS_S3_REVISED § Agreement and § 4 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
profile: superseded-document 1 (the original is the superseded revision); renumbering control case 1 (Deliverables row 5, Annual Dining Services Performance Report, moves from row 5 to row 7); reformat control case 0; reletter control case 0; near-miss 0; contradiction 0; stated-absence 1 (Commercial Terms liquidated-damages bullet flips from an explicit "no liquidated damages clause" to a concrete $5,000/day clause); spilled-table 0; figure-answer 0; scan 0; untagged silent change 2 (Scope of Work row 1's Winthrop Commons addition and Submission Instructions' email/validity change carry no `[NEW]`/`[MODIFIED]` marker at all)
```

### Brief

Northfield University reissued its Request for Proposal for campus dining services roughly eleven weeks after the original issue, following stronger-than-expected fall 2026 enrollment and the planned opening of a sixth residence hall, Winthrop Commons, in fall 2027. The reissue expands the program's scope to include campus catering services and a sixth dining hall at Winthrop Commons, raises the vendor eligibility bar (years of experience, revenue, references, insurance), lengthens the contract term while shortening the renewal option, and adds a liquidated-damages clause tied to the Winthrop Commons opening date where the original had none. What is answered is every clause of the revised RFP (`documents/SYNTH_VERS_DOCS_S3_REVISED/source/SYNTH_VERS_DOCS_S3_REVISED.docx`), classified as ADDED, REMOVED, CHANGED or UNCHANGED against the original RFP (`documents/SYNTH_VERS_DOCS_S3_REVISED/supporting/SYNTH_VERS_DOCS_S3_ORIGINAL.docx`), so a bidder can see exactly what changed since the original without re-reading both documents end to end. The revised document marks most of its own changes inline as `[NEW]` or `[MODIFIED]` — a useful starting draft, not a verified fact; every clause is checked against the original regardless of whether it carries a tag, since unmarked clauses can still have changed silently. Two clauses in this pack changed with no tag at all: Scope of Work's first bullet gained a Winthrop Commons clause with no `[MODIFIED]` marker, and Submission Instructions' email address and proposal-validity period both changed with no marker. Both are treated as CHANGED regardless of the missing tag. Material yes/no marks whether the change affects a vendor's eligibility, price, or technical response, not just wording. What to produce is one finding per clause of the revised document, in the version-docs finding shape: Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters. What not to do: do not treat the original as the truth and the revised as the deviation — the source is the revised document, and the original is supporting evidence for what changed; do not rely solely on the revised document's own inline tags; and do not read the Commercial Terms liquidated-damages bullet as a plain ADDED clause — the original states outright that no such clause applies, so the revised bullet is a CHANGED clause that reverses a stated absence, not a clause appearing from nothing.

## SYNTH_VERS_DOCS_S4_REVISED — Meridian Public School District network, Wi-Fi & cybersecurity RFP version comparison

```
skill: version-docs
domain: K-12 public sector IT procurement · RFP reissue comparison
source: documents/SYNTH_VERS_DOCS_S4_REVISED/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx (RFP-MPSD-2026-0053-R1, issued April 27, 2026, 6 sheets — now also carries a completed fictional vendor response, Beacon Network Solutions, Inc.; see pivot.md § SYNTH_VERS_DOCS_S4_REVISED § 5)
supporting: documents/SYNTH_VERS_DOCS_S4_REVISED/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx (RFP-MPSD-2026-0053, issued February 9, 2026, 5 sheets — superseded)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: not applicable to this skill — every clause of the source (revised) is classified against the supporting (original)
labels: not used by this skill
pages: not applicable — this pack's documents are spreadsheets; one sheet is one page, and rows are cited by their own row number within a sheet, per design section 6
state: verified                        checker passes and agreement is recorded; see pivot.md § SYNTH_VERS_DOCS_S4_REVISED § Agreement and § 4 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
profile: superseded-document 1 (the original is the superseded revision); renumbering control case 0; reformat control case 0; reletter control case 0; near-miss 0; contradiction 0; stated-absence 0; spilled-table 0 (not applicable — spreadsheet rows do not spill across a page break the way a PDF table does); figure-answer 0; scan 0; sheet-added 1 (Cybersecurity Addendum, not present in the original workbook); id-reused-as-replacement 1 (R-07 removed, R-17 added as its replacement)
```

### Brief

Meridian Public School District (MPSD) reissued its Request for Proposal for a district-wide network and Wi-Fi infrastructure refresh roughly two and a half months after the original issue, following a district-wide cybersecurity assessment completed in March 2026 and the opening of a new elementary school (Fallbrook) that added a fifteenth building to the district. The reissue adds a wholly new "Cybersecurity Addendum" sheet to the workbook, not present in the original at all, and folds cybersecurity requirements into the existing Requirements Matrix and Pricing Form as well. It removes one existing requirement outright — R-07, an on-premise-only network monitoring dashboard — and replaces it with a new requirement, R-17, for cloud-managed monitoring with mobile alerting; the revised workbook's own note says as much, but the row id is not reused, so this is a REMOVED unit and an ADDED unit, not one CHANGED unit. What is answered is every row of every sheet in the revised workbook (`documents/SYNTH_VERS_DOCS_S4_REVISED/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx`), classified as ADDED, REMOVED, CHANGED or UNCHANGED against the original workbook (`documents/SYNTH_VERS_DOCS_S4_REVISED/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx`), so a bid or proposal team can see exactly what changed since the original without re-reading both workbooks end to end. The revised workbook marks many of its own changes inline as `[NEW]`, `[MODIFIED]`, or `[UPDATED]` — a useful starting draft, not a verified fact; every row is checked against the original regardless of whether it carries a tag, since unmarked rows can still have changed silently in a quantity, a priority, or a date. A row is CHANGED only if its substance differs, not merely because a summary count elsewhere on the same sheet changed as a side effect. A row is ADDED if no counterpart exists anywhere in the original workbook, including an entirely new sheet's own heading and every data row within it — the Cybersecurity Addendum's five requirements (`CS-01` through `CS-05`) are each their own ADDED unit, not one unit for the whole sheet. A row is REMOVED when the original states it and the revised no longer does, even where the revised workbook explicitly says what replaced it. Material yes/no marks whether the change affects a vendor's eligibility, price, or technical response, not just wording. What to produce is one finding per unit, in the version-docs finding shape: Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters, where "page" for this pack means a sheet and a row number, per `skills/version-docs.md`'s spreadsheet unit rule. What not to do: do not treat the original as the truth and the revised as the deviation — the source is the revised workbook, and the original is supporting evidence for what changed; do not rely solely on the revised workbook's own inline tags; and do not treat R-07's removal and R-17's addition as a single CHANGED requirement just because the revised workbook's own note links them — they are two units.

## SYNTH_VERS_DOCS_S5_REVISED — Solstice Energy Cooperative Community Solar, Battery Storage & EV Charging RFP version comparison

```
skill: version-docs
domain: electric cooperative renewable-energy procurement · EPC vendor pre-bid briefing reissue comparison
source: documents/SYNTH_VERS_DOCS_S5_REVISED/source/SYNTH_VERS_DOCS_S5_REVISED.pptx (RFP-SEC-2026-0029-R1, issued May 19, 2026)
supporting: documents/SYNTH_VERS_DOCS_S5_REVISED/supporting/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx (RFP-SEC-2026-0029, issued March 3, 2026 — superseded)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: not applicable to this skill — every clause of the source (revised) is classified against the supporting (original)
labels: not used by this skill
pages: one slide is one page, in deck order (design section 6)
state: verified                        checker passes and agreement is recorded; see pivot.md § SYNTH_VERS_DOCS_S5_REVISED § Agreement and § 3 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
profile: superseded-document 1 (the original is the superseded revision); renumbering control case 1 (Scope of Work's O&M bullet keeps its wording but moves from item 5 to item 6 after a new EV-charging item is inserted ahead of it); reformat control case 1 (the Optional Site Visit milestone becomes a Virtual Site Walkthrough — a format change, not just a date change); reletter control case 0; near-miss 0; contradiction 0; stated-absence 0; spilled-table 0; figure-answer 0; scan 0; whole-slide addition 1 (Slide 7, "EV Charging & Interconnection Requirements," is entirely new, with no counterpart anywhere in the original deck)
```

### Brief

Solstice Energy Cooperative reissued its vendor pre-bid briefing deck for its Community Solar & Battery Storage EPC procurement roughly eleven weeks after the original issue, expanding the program to add a public EV fast-charging hub alongside a larger solar and battery buildout. The reissue is triggered by two events stated on Slide 3: the Co-op's March 2026 addition of the Hartwell service area (raising membership from approximately 38,000 to 41,000 across an expanded 6-county territory), and the Board's April 2026 decision to expand program scope to include EV fast-charging infrastructure. What is answered is every clause of the revised briefing deck (`documents/SYNTH_VERS_DOCS_S5_REVISED/source/SYNTH_VERS_DOCS_S5_REVISED.pptx`), classified as ADDED, REMOVED, CHANGED or UNCHANGED against the original deck (`documents/SYNTH_VERS_DOCS_S5_REVISED/supporting/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx`), so a prospective EPC bidder can see exactly what changed since the original briefing without re-reading both decks slide by slide. What to produce is one finding per clause of the revised deck, in the version-docs finding shape: Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters. What not to do: do not treat the Agenda slide (Slide 2 in both decks) as a clause needing its own findings — it is a table of contents, not a requirement, exactly as the Table of Contents pages in the SYNTH_VERS_DOCS_S2_REVISED and SYNTH_VERS_DOCS_S3_REVISED document packs were excluded from unit generation; and do not treat Slide 7 ("EV Charging & Interconnection Requirements") as a set of independent ADDED clauses without also recording, once, that the whole slide is new — the deck's own closing line on that slide says so directly ("This slide is new in this revision — no equivalent content existed in the original briefing deck"), and the pack profile line for this pair (above) counts it as a distinct failure mode (`whole-slide addition`) from an ordinary per-bullet ADDED clause.

## SYNTH_VERS_DOCS_S6_REVISED — Cascadia DOT Statewide ITS Modernization, TMC Upgrade & Cybersecurity Resilience RFP version comparison

```
skill: version-docs
domain: state transportation agency IT/ITS infrastructure procurement · statewide RFP reissue comparison
source: documents/SYNTH_VERS_DOCS_S6_REVISED/source/SYNTH_VERS_DOCS_S6_REVISED.pdf (RFP-CDOT-2026-1187-R1, issued May 4, 2026)
supporting: documents/SYNTH_VERS_DOCS_S6_REVISED/supporting/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf (RFP-CDOT-2026-1187, issued January 8, 2026 — superseded)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: not applicable to this skill — every clause of the source (revised) is classified against the supporting (original)
labels: not used by this skill
pages: the physical PDF page, counted from page 1 (design section 6) — the document's own internal Table of Contents page numbers do not match the PDF's actual page breaks and are not used for citation
state: verified                        checker passes and agreement is recorded; see pivot.md § SYNTH_VERS_DOCS_S6_REVISED § Agreement and § 4 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
profile: superseded-document 1; renumbering control case 3 (Deliverables' TMC training and later rows, Appendix A's training/O&M/total rows, and Appendix C's PE/NTCIP rows all shift position after new rows are inserted ahead of them); reformat control case 0; reletter control case 0; near-miss 0; contradiction 0; stated-absence 0; spilled-table 0 (this program's PDF export breaks tables cleanly at page boundaries rather than mid-table); figure-answer 0; scan 0; whole-document-page-number mismatch 1 (the RFP's own internal Table of Contents page numbers do not match the PDF's physical pages, requiring twin pagination to follow the physical page breaks instead, per design section 6); packed-appendix-row-grouping 1 (Appendix E's 15/16-row corridor inventory table is treated as a small number of grouped units rather than one unit per row, a deliberate grain decision recorded in pivot.md)
```

### Brief

The Cascadia Department of Transportation (CDOT) reissued its statewide Intelligent Transportation System (ITS) Modernization RFP roughly seventeen weeks after the original issue, adding a full cybersecurity resilience program — a 24/7 Security Operations Center (SOC), enhanced insurance and eligibility requirements tied to it, and a new incident-notification clause — on top of the original ATMS platform replacement and field device modernization. The reissue also folds in the February 2027 opening of a new highway corridor (SR-509, the Port Neelan Extension), raising device counts across CCTV cameras, DMS signs, and ramp meters, and revises two existing corridors' device counts upward following supplemental field surveys. What is answered is every clause of the revised RFP (`documents/SYNTH_VERS_DOCS_S6_REVISED/source/SYNTH_VERS_DOCS_S6_REVISED.pdf`), classified as ADDED, REMOVED, CHANGED or UNCHANGED against the original RFP (`documents/SYNTH_VERS_DOCS_S6_REVISED/supporting/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf`), so a systems-integrator bidder can see exactly what changed since the original without re-reading a 18–19 page, 15-section, six-appendix document twice. The revised document marks most of its own changes inline as `[NEW]` or `[MODIFIED]` — a useful starting draft, not a verified fact; every clause is checked against the original regardless of whether it carries a tag. What to produce is one finding per clause of the revised document, in the version-docs finding shape: Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters. What not to do: do not cite pages by the document's own internal Table of Contents numbering — it does not match the PDF's actual page breaks (the TOC says Appendix F is on page 20 of the original; the original PDF has only 18 physical pages) — cite the physical PDF page instead; do not treat Appendix E's corridor inventory table as 15 or 16 independent "controls" each needing its own finding — it is a supporting data table, not a set of separately negotiated requirements, so this pack groups it into a small number of units covering the totals and the specific rows that changed (C-04, C-10) or were added (C-16), and records that grain decision in `pivot.md` rather than silently picking one convention; and do not mistake the Functional Requirements Matrix rows FR-07 and FR-08 changing priority from "Desired" to "Mandatory" for an ADDED or REMOVED row — the requirement text is untouched, only its priority changed, which is a CHANGED classification.

## Operational guidelines

These apply identically to all six pairs above.

1. Every instruction goes in `prompting.md`, dated.
2. Every decision goes in `pivot.md` with a yes or no, who, and when.
3. `file-index.md` is kept current; a document's digest is recorded when it is added.
4. Pages are read from the document itself (PDF's actual physical pages, the Word document's own pagination, the workbook cell-for-cell, or the deck slide-for-slide, as applicable), never from an extraction; quotes are copied exactly.
5. A run never edits `actuals/`; a person never edits `runs/`.
6. Every actual carries `verified-by`, `verified-on` and `confidence` in its front matter; twin pages also carry `verification`.
