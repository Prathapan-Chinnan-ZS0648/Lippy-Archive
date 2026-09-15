# Ashford Financial Group ITSM & Major Incident Response RFP version comparison

skill: version-compare
domain: financial services corporate IT procurement · RFP reissue comparison
source: documents/source/SYNTH_VERS_DOCS_S2_REVISED.pdf (RFP-AFG-2026-0064-R1, issued May 11, 2026, 13 pages)
supporting: documents/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf (RFP-AFG-2026-0064, issued February 16, 2026, 10 pages — superseded)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: not applicable to this skill — every clause of the source (revised) is classified against the supporting (original)
labels: not used by this skill
pages: counted from the first page of each file, starting at 1
state: verified                        checker passes and agreement is recorded; see pivot.md § Agreement and § 4 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
profile: superseded-document 1 (the original is the superseded revision); renumbering control case 0; reformat control case 1 (Section 5.5, Vendor Support Responsibilities, bullets to table); reletter control case 0; near-miss 0; contradiction 0; stated-absence 0; spilled-table 2 (Section 5.5 vendor support table, and Appendix C, both span a page break in the source); figure-answer 0; scan 0

## Brief

Ashford Financial Group (AFG) reissued its Request for Proposal for an IT Service Management (ITSM) platform and managed helpdesk services roughly three months after the original issue, following its February 2026 acquisition of Colonial Trust Bank. The reissue adds a formal Major Incident Response capability across the same program, following a rise in Severity 1 outages observed after the acquisition, and revises scope, technical requirements, eligibility, evaluation, and commercial terms accordingly. It also removes Section 6 (Vendor Onboarding & Staffing Requirements) entirely, marking it "[Reserved]" and stating that those requirements are now governed exclusively by the Master Services Agreement executed at contract award, and it reformats Section 5.5 (Vendor Support Responsibilities) from a bullet list into a table with explicit SLA targets. What is answered is every clause of the revised RFP (`documents/source/SYNTH_VERS_DOCS_S2_REVISED.pdf`), classified as ADDED, REMOVED, CHANGED or UNCHANGED against the original RFP (`documents/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf`), so a bid or proposal team can see exactly what changed since the original without re-reading both documents end to end. The revised document marks most of its own changes inline as `[NEW]`, `[MODIFIED]`, `[REFORMATTED]`, or `[RESERVED]` — a useful starting draft, not a verified fact; every clause is checked against the original regardless of whether it carries a tag, since unmarked clauses can still have changed silently in a number, a date, or a name. A clause is CHANGED only if its substance differs, not its format or section number alone: Section 5.5's move from bullets to a table is classified UNCHANGED where the underlying obligation is the same, not CHANGED for presentation alone. A clause is ADDED if no counterpart exists in the original at all, and REMOVED if the original states it and the revised no longer does — Section 6's five onboarding bullets are REMOVED, not silently dropped, even though the section number is reused for a "[Reserved]" placeholder. Material yes/no marks whether the change affects a vendor's eligibility, price, or technical response, not just wording. What to produce is one finding per clause of the revised document, in the version-compare finding shape: Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters. What not to do: do not treat the original as the truth and the revised as the deviation — the source is the revised document, and the original is supporting evidence for what changed; do not rely solely on the revised document's own inline tags; and do not treat Section 6's "[Reserved]" placeholder as if the onboarding requirements simply vanished — they moved to the MSA, which is outside this archive's documents, so the finding should say that plainly rather than imply the requirement no longer exists anywhere.

## Operational guidelines

1. Every instruction goes in prompting.md, dated.
2. Every decision goes in pivot.md with a yes or no, who, and when.
3. file-index.md is kept current; a document's digest is recorded when it is added.
4. Pages are read from the PDF; quotes are copied exactly.
5. A run never edits actuals/; a person never edits runs/.
6. Every actual carries verified-by, verified-on and confidence in its front matter.
