## Method

Source = the Revised issue, `documents/source/SYNTH_VERS_DOCS_S1_REVISED.pdf` (RFP-BRG-2026-0231-R1); supporting = the Original issue, `documents/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf` (RFP-BRG-2026-0231), marked superseded. Skill = version-compare, declared in `skills/version-compare.md`. Two readers per file, independent, from the PDFs; resolver: not yet assigned for this pack. — yes, project bootstrap, 2026-09-11

## Agreement

| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 23 | 0 | 0 | 23 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 106 | 0 | 0 | 106 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-11, see entry 6 below) is a distinct method from the design's two-independent-reader standard (section 8) and is recorded as its own column rather than folded into "both readers agreed" so this table is never misread as claiming a human process that did not happen.

## 1 · Unit numbering follows the source's own section order

Unit ids are grouped by the Revised document's own numbered sections (Introduction through Appendix C), not by the Original's numbering, since section numbers shift between issues because of insertions — for example, Cold Chain Monitoring becomes a new 5.3, pushing Hosting from 5.3 to 5.4, and System Integrations from 5.4 to 5.5 (`TECH-12`). — yes, single-pass draft, 2026-09-11

## 2 · `DEL-10` marked material: no

"WMS Full Rollout — Remaining Distribution Centers" appears as its own deliverable row in the Revised document; in the Original it existed only as a Project Timeline milestone, not a Deliverables line item. Treated as a presentation change (a milestone promoted to its own deliverable row) rather than new scope, since the underlying work was already implied by the Original's Phase 1 / full-rollout split. — yes, single-pass draft, 2026-09-11; not settled by a second reader

## 3 · `TECH-12` is this pack's renumbering control case

Section 5.4 System Integrations in the Original becomes Section 5.5 in the Revised, with the SAP S/4HANA and Zebra handheld integration bullets carried over verbatim. Classified UNCHANGED, not CHANGED, per `bootstrap.md`'s "What must not happen": a clause must not be marked CHANGED for renumbering alone. Counted in `bootstrap.md`'s `profile:` line as `renumbering control case 1`. — yes, single-pass draft, 2026-09-11

## 4 · `TECH-6` (hosting model) kept as one CHANGED unit, not split

The Revised clause both removes the on-premise deployment option and restricts the remaining cloud option to two named providers (AWS or GCP), in the same sentence. Currently tracked as one CHANGED unit rather than a REMOVED unit (on-premise) plus an ADDED unit (AWS/GCP restriction), because the sentence reads as a single redrafted requirement, not two independent facts stapled together. Flagged as a genuine judgment call for the second reader: `bootstrap.md`'s "What must not happen" section calls out this exact pattern — a REMOVED option must not be silently absorbed into a CHANGED row — as a risk to watch for. If the resolver decides it should split, `TECH-6` becomes two units and `bootstrap.md`'s profile line and `actuals/twin/derived/SYNTH_VERS_DOCS_S1_REVISED.pdf.md` must be updated to match. — no, not settled, 2026-09-11

## 5 · Appendix C counted as this pack's spilled-table case, once per document

The Compliance Certification Checklist table spans a page break in both the Original (page 10 to page 11) and the Revised (page 11 to page 12). Written under the design's writing rule (section 7): the full table on the page it starts, "Table continued from page N." on the continuation page, no repeated rows. Counted in `bootstrap.md`'s `profile:` line as `spilled-table 2`. — yes, single-pass draft, 2026-09-11

## 6 · Automated cross-check pass, 2026-09-11: what it was and what it found

Not the two-independent-reader standard of design section 8 — no second human read either document. Instead, a scripted pass checked two things mechanically: (1) every finding's `Old`/`New` quote appears verbatim (normalized) on its cited twin page, and every citation resolves to a real page; (2) every twin page's Markdown conversion retains every word present in the source PDF's raw text layer, page for page. This is real verification — it caught actual defects, listed below — but it is not a substitute for a second reader judging whether a classification (ADDED/CHANGED/UNCHANGED, material yes/no) is *correct*, only whether it is *internally consistent with the cited page text*. All 106 findings and 23 twin pages now pass both checks; `confidence` was raised from `UNSURE` to `SURE` accordingly, and `verified-by: automated cross-check pass` records the method plainly rather than implying a human pass.

What it found and fixed:
- **19 findings had a stale page citation**: an earlier page-numbering pass (before the 12-page/11-page twin split was corrected) had left several `Deliverables`, `Functional Requirements Matrix`, `Project Objectives`, and `System Integrations` findings citing the wrong page by one. Fixed by relocating each citation to the page the quote actually appears on, and propagated to `actuals/twin/derived/SYNTH_VERS_DOCS_S1_REVISED.pdf.md` (23 unit rows corrected there, since several units share a page).
- **7 findings quoted a paraphrased, ellipsis-joined composite** (`DEF-3`, `TECH-2`, `OBJ-2`, `TC-1`, `APPB-3`, `APPA-9`, `TECH-12`) instead of text copied exactly from the page, violating the quote rule in `prompting.md`'s instruction to readers. Fixed by replacing each with one real verbatim excerpt and a note that it is representative of several unchanged items, with a pointer to the cited page for the rest.
- **`DEL-10`** carried a fabricated `Old` blockquote for a unit that is genuinely absent from the Original as a Deliverables row. Fixed to use the finding shape's own "Not present in [document]" convention, matching how every other ADDED unit in this pack states an absence; `old:` front matter set to `—` to match.
- **5 `[NEW]`-tagged findings** (`DEL-7`, `DEL-8`, `EVAL-5`, `EVAL-6`, `TIME-3`) quoted the Revised document's cell text without the `[NEW]` tag that is actually printed in that cell. Fixed to quote it as written.
- **4 twin pages were missing real content** that exists on the source PDF page but was dropped by the raw-text-to-Markdown conversion: the "To be eligible for consideration…" lead-in sentence above Section 7's bullet list (both documents), and the "Payment Schedule" / "Other Commercial Terms" sub-labels within Section 12 (both documents). Fixed by adding the missing text back to the twin pages.

None of this changes what a second human reader still needs to check: whether each ADDED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call, not just an internally consistent one. — yes, 2026-09-11
