# Cascadia DOT Statewide ITS Modernization, TMC Upgrade & Cybersecurity Resilience RFP version comparison

skill: version-compare
domain: state transportation agency IT/ITS infrastructure procurement · statewide RFP reissue comparison
source: documents/source/SYNTH_VERS_DOCS_S6_REVISED.pdf (RFP-CDOT-2026-1187-R1, issued May 4, 2026)
supporting: documents/supporting/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf (RFP-CDOT-2026-1187, issued January 8, 2026 — superseded)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: not applicable to this skill — every clause of the source (revised) is classified against the supporting (original)
labels: not used by this skill
pages: the physical PDF page, counted from page 1 (design section 6) — the document's own internal Table of Contents page numbers do not match the PDF's actual page breaks and are not used for citation
state: verified                        checker passes and agreement is recorded; see pivot.md § Agreement and § 4 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
profile: superseded-document 1; renumbering control case 3 (Deliverables' TMC training and later rows, Appendix A's training/O&M/total rows, and Appendix C's PE/NTCIP rows all shift position after new rows are inserted ahead of them); reformat control case 0; reletter control case 0; near-miss 0; contradiction 0; stated-absence 0; spilled-table 0 (this program's PDF export breaks tables cleanly at page boundaries rather than mid-table); figure-answer 0; scan 0; whole-document-page-number mismatch 1 (the RFP's own internal Table of Contents page numbers do not match the PDF's physical pages, requiring twin pagination to follow the physical page breaks instead, per design section 6); packed-appendix-row-grouping 1 (Appendix E's 15/16-row corridor inventory table is treated as a small number of grouped units rather than one unit per row, a deliberate grain decision recorded in pivot.md)

## Brief

The Cascadia Department of Transportation (CDOT) reissued its statewide Intelligent Transportation System (ITS) Modernization RFP roughly seventeen weeks after the original issue, adding a full cybersecurity resilience program — a 24/7 Security Operations Center (SOC), enhanced insurance and eligibility requirements tied to it, and a new incident-notification clause — on top of the original ATMS platform replacement and field device modernization. The reissue also folds in the February 2027 opening of a new highway corridor (SR-509, the Port Neelan Extension), raising device counts across CCTV cameras, DMS signs, and ramp meters, and revises two existing corridors' device counts upward following supplemental field surveys. What is answered is every clause of the revised RFP (`documents/source/SYNTH_VERS_DOCS_S6_REVISED.pdf`), classified as ADDED, REMOVED, CHANGED or UNCHANGED against the original RFP (`documents/supporting/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf`), so a systems-integrator bidder can see exactly what changed since the original without re-reading a 18–19 page, 15-section, six-appendix document twice. The revised document marks most of its own changes inline as `[NEW]` or `[MODIFIED]` — a useful starting draft, not a verified fact; every clause is checked against the original regardless of whether it carries a tag. What to produce is one finding per clause of the revised document, in the version-compare finding shape: Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters. What not to do: do not cite pages by the document's own internal Table of Contents numbering — it does not match the PDF's actual page breaks (the TOC says Appendix F is on page 20 of the original; the original PDF has only 18 physical pages) — cite the physical PDF page instead; do not treat Appendix E's corridor inventory table as 15 or 16 independent "controls" each needing its own finding — it is a supporting data table, not a set of separately negotiated requirements, so this pack groups it into a small number of units covering the totals and the specific rows that changed (C-04, C-10) or were added (C-16), and records that grain decision in `pivot.md` rather than silently picking one convention; and do not mistake the Functional Requirements Matrix rows FR-07 and FR-08 changing priority from "Desired" to "Mandatory" for an ADDED or REMOVED row — the requirement text is untouched, only its priority changed, which is a CHANGED classification.

## Operational guidelines

1. Every instruction goes in prompting.md, dated.
2. Every decision goes in pivot.md with a yes or no, who, and when.
3. file-index.md is kept current; a document's digest is recorded when it is added.
4. Pages are read from the PDF's actual physical pages, not the document's own internal Table of Contents numbering; quotes are copied exactly.
5. A run never edits actuals/; a person never edits runs/.
6. Every actual carries verified-by, verified-on and confidence in its front matter.
