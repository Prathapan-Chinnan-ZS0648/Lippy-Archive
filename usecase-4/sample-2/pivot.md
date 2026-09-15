## Method
Source = revised RFP (`SYNTH_VERS_DOCS_S2_REVISED.pdf`); supporting = original RFP (`SYNTH_VERS_DOCS_S2_ORIGINAL.pdf`), marked superseded. Skill = version-compare. — yes, project bootstrap, 2026-09-11

## Agreement
| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 23 | 0 | 0 | 23 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 103 | 0 | 0 | 103 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-11, see entry 4 below) is a distinct method from the design's two-independent-reader standard (section 8) and is recorded as its own column rather than folded into "both readers agreed" so this table is never misread as claiming a human process that did not happen.

## 1 · Section 6's onboarding bullets are REMOVED, not silently dropped
The original's five "Vendor Onboarding & Staffing Requirements" bullets (background checks, security training, staffing roster notification, physical access control, subcontracting approval) have no counterpart anywhere in the revised document. The revised document replaces the section with "6. [Reserved]" and states these requirements are now governed exclusively by the Master Services Agreement (MSA), which is outside this archive's documents. Tracked as five REMOVED units (`ONB-1` through `ONB-5`), material yes, plus one ADDED unit (`RES-1`) for the reservation notice itself. — yes, single-pass draft, 2026-09-11

## 2 · Section 5.5 reformat is UNCHANGED for rows 1–5, ADDED for row 6
The revised document explicitly tags Section 5.5 "[REFORMATTED — PRESENTED AS A TABLE IN THIS REVISION]" and its own note says "Rows 1–5 restate the equivalent bullet-point content from the original RFP." Per `skills/version-compare.md`'s rule that a clause must not be marked CHANGED for a formatting difference alone, rows 1–5 are tracked as one UNCHANGED unit (`TECH-18`), material no. Row 6, Major Incident Response, has no counterpart in the original and is tracked as its own ADDED unit (`TECH-19`), material yes. This is this pack's reformat control case, counted in `bootstrap.md`'s `profile:` line. — yes, single-pass draft, 2026-09-11

## 3 · Two spilled-table cases in the source document
Section 5.5's Vendor Support Responsibilities table spans a page break (page 5 to page 6), and Appendix C's Compliance Certification Checklist spans a page break (page 12 to page 13). Both written under the design's writing rule (section 7): the full table on the page it starts, "Table continued from page N." on the continuation page, no repeated rows. Counted in `bootstrap.md`'s `profile:` line as `spilled-table 2`. — yes, single-pass draft, 2026-09-11

## 4 · Automated cross-check pass, 2026-09-11: what it was and what it found

Not the two-independent-reader standard of design section 8 — no second human read either document. Instead, a scripted pass checked two things mechanically: (1) every finding's `Old`/`New` quote appears verbatim (normalized) on its cited twin page, and every citation resolves to a real page; (2) every twin page's Markdown conversion retains every word present in the source PDF's raw text layer, page for page (accounting for the two spilled-table cases in entry 3, whose content was correctly relocated to the page the table starts on rather than lost). This is real verification — it caught actual defects, listed below — but it is not a substitute for a second reader judging whether a classification (ADDED/REMOVED/CHANGED/UNCHANGED, material yes/no) is *correct*, only whether it is *internally consistent with the cited page text*. All 103 findings and 23 twin pages now pass both checks; `confidence` was raised from `UNSURE` to `SURE` accordingly, and `verified-by: automated cross-check pass` records the method plainly rather than implying a human pass.

What it found and fixed:
- **5 findings had a stale page citation** after the spilled tables (Section 5.5 and Appendix C) were corrected to keep their full content on the page the table starts, per the writing rule in design section 7: `TECH-19`, `TIME-2`, `APPC-4`, `APPC-5`, `APPC-6`.
- **2 findings were missing a `[NEW]` tag** actually printed on the cited page (`DEL-6`, `DEL-7`), and 2 more had the same issue (`TIME-3`, `EVAL-5`).
- **1 finding (`COMM-3`) quoted a paraphrased composite** instead of text copied exactly from the page; fixed to a real verbatim excerpt.
- **1 finding (`APPA-8`) quoted two pricing-line descriptions joined with an ellipsis**, the same non-verbatim pattern caught in the sample-1 pack; fixed to one real verbatim excerpt with a note pointing at the cited page for the rest.
- **1 finding (`TECH-19`) needed its quote rebuilt** to match the actual table-row text on the page it was relocated to.

None of this changes what a second human reader still needs to check: whether each ADDED/REMOVED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call — including, for this pack specifically, whether `ONB-1` through `ONB-5` should really be REMOVED rather than folded into a single grouped unit, and whether `TECH-18`'s reformat-as-UNCHANGED classification holds up to scrutiny. — yes, 2026-09-11
