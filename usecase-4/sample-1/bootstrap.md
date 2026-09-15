# Brightline Retail Group RFP version comparison

```
skill: version-compare
domain: retail supply chain procurement — RFP version comparison
source: documents/source/SYNTH_VERS_DOCS_S1_REVISED.pdf
supporting: documents/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: UNCHANGED                     a clause carried forward with no substantive difference
labels: n/a — version-compare does not classify units by respondent
pages: counted from the first page of each file, starting at 1
state: verified                        checker passes and agreement is recorded; see pivot.md § Agreement and § 6 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
classification: public-synthetic
profile: superseded-document 1 (the Original itself, kept in supporting/); renumbering control case 1 (TECH-12, Sec 5.4 -> 5.5, SAP ERP/Zebra integration, UNCHANGED); reformat control case n/a (no REFORMATTED-scale cases in this pack); reletter control case n/a (no RELETTERED units in this pack); control-row grouping n/a (no large repeating tables in this pack's documents); near-miss 0; contradiction 0; stated-absence 0; spilled-table 2 (Appendix C, Compliance Certification Checklist, spans a page break in both the Original and the Revised); figure-answer 0; scan 0; packed-cell n/a (not applicable to this skill); placeholder-question n/a (not applicable to this skill); not-the-vendor's 0; answer-sheet n/a (not applicable to this skill)
profile-vocabulary: see skills/version-compare.md § Pack profile for the canonical version-compare failure-mode names this line uses
```

**The Revised issue (`SYNTH_VERS_DOCS_S1_REVISED.pdf`, RFP-BRG-2026-0231-R1) is the SOURCE document** — it is the current issue a vendor would actually respond to, and its clauses are what is being answered. **The Original issue (`SYNTH_VERS_DOCS_S1_ORIGINAL.pdf`, RFP-BRG-2026-0231) is kept as a SUPPORTING document** — it is the prior state a clause is compared against, not itself the thing being answered.

The pack declares its own answer shape. The scale, the absence word, and the unit/label/finding-shape declarations live in `skills/version-compare.md` and are read from there by the scorer, per Lippy Archive design revision 3 section 5.

## Brief

### Task

Compare RFP-BRG-2026-0231 (Original, issued March 9, 2026, now SUPPORTING) against RFP-BRG-2026-0231-R1 (Revised, issued June 2, 2026, now SOURCE), both issued by Brightline Retail Group for a Warehouse Management System (WMS), Fleet Telematics, and (in the Revised issue) Cold Chain Monitoring modernization program.

For every clause or field that differs between the two versions, produce a finding (`actuals/findings/<id>.md`, in the shape declared by `skills/version-compare.md`) that states:

- what changed (ADDED, REMOVED, or CHANGED),
- the exact wording and location in the Original (where it existed),
- the exact wording and location in the Revised (where it exists),
- whether the change is material to a vendor's bid (yes/no), and
- one line of reasoning for the materiality call.

Clauses that carried forward between versions with no substantive difference must also be reported, marked UNCHANGED, so that a version-compare tool's false-positive rate can be checked against known control cases.

### Context

Brightline Retail Group acquired Meridian Grocers' logistics network in March 2026, adding two refrigerated distribution centers and 140 delivery trucks. The Revised RFP reflects the expanded, food-safety-sensitive operating footprint: new cold chain monitoring and FSMA food-traceability obligations were introduced, and the scope, eligibility criteria, technical requirements, and commercial terms were revised accordingly.

### What counts as a unit

See `skills/version-compare.md`. In short: a unit is one clause or field a careful reader would point to independently. Where the Revised document introduces an entirely new sub-section (e.g. Section 5.3 Cold Chain Monitoring, Section 14.5 Food Safety Compliance), each new requirement within it is its own ADDED unit, not one unit for the whole section.

### What must not happen

- A clause must not be marked CHANGED if the only difference is renumbering with no wording change (see Section 5.4 -> 5.5 SAP ERP/Zebra integration, tracked as `TECH-12`, UNCHANGED).
- A REMOVED option (e.g. the on-premise hosting choice) must not be silently absorbed into a CHANGED row for "hosting model" — this pack currently tracks it as `TECH-6`, CHANGED, because the Revised clause both removes the on-premise option and narrows the remaining option to two named providers in the same sentence; if a resolver decides that conflates two independent facts, `TECH-6` should be split into its own REMOVED unit (the on-premise option) alongside an ADDED unit (the AWS/GCP restriction), and that split recorded in `pivot.md` before the pack is re-scored.
- Administrative/date fields (issue date, deadlines, contact names) are still tracked as their own units even though they are not commercial or technical terms, so that a version-compare tool is not scored as if it may ignore administrative sections.

### Source of truth

The two RFP PDFs themselves are authoritative. Every finding in `actuals/findings/` was checked directly against the page text of the Original and Revised PDFs.

## Operational guidelines

1. Track every instruction received in `prompting.md`.
2. Record every decision with an explicit yes or no in `pivot.md`, including the reader-agreement table required by the Lippy Archive verification standard.
3. Keep `file-index.md` current for every file added or changed, including its digest.
4. Read pages from the PDF, never from an extraction; count pages from 1 in the file.
5. A run never edits `actuals/`; a person never edits `runs/`.
6. Every actual carries `verified-by`, `verified-on` and `confidence` in its front matter; twin pages also carry `verification`.
