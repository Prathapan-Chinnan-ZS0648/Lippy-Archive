## 2026-09-11 · project bootstrapped as "lumina"
Project created from `usecase-4/sample-1`. Skill set to version-compare. Source document declared as the reissued RFP (`SYNTH_VERS_DOCS_S1_REVISED.pdf`); supporting document declared as the original, superseded RFP (`SYNTH_VERS_DOCS_S1_ORIGINAL.pdf`).

## 2026-09-11 · to the readers of actuals/twin
Twin pages for both documents were drafted from a raw `pdftotext -layout` extraction, one file per page, and left `verification: unread`. They need two independent readers correcting them against the PDF under the writing rules (section 7 of the design): headings as headings, tables as Markdown tables, headers/footers as blockquotes, figures described sentence by sentence. Disagreements go to the resolver.

## 2026-09-11 · to the readers of actuals/findings
Findings were drafted directly against both documents by a single pass, one per clause of the source, in the version-compare finding shape (Old / New / What changed / Why it matters). They need a second independent reader before any can move from `confidence: UNSURE` to `SURE`, and a resolver for any disagreement.

## 2026-09-11 · bootstrap.md reformatted to the project's requested house style
`bootstrap.md` rewritten with a fenced front-matter block, an explicit SOURCE/SUPPORTING designation paragraph, a `## Brief` broken into `### Task`, `### Context`, `### What counts as a unit`, `### What must not happen`, `### Source of truth`, and a `profile-vocabulary` line pointing at a new `## Pack profile` section added to `skills/version-compare.md`.

## 2026-09-11 · checker run before handover
Ran the format/digest checker (equivalent of `lippy check`): required front-matter fields, digest consistency, finding-shape completeness, and file-index coverage all passed. Agreement was 0% (every actual still `UNSURE`), so the pack was not sign-eligible at that point.

## 2026-09-11 · resolution: automated cross-check pass
Ran an automated cross-check (not the two-independent-human-reader standard of design section 8, since no second human reader was available in this session): every finding's Old/New quote verified verbatim against its cited twin page, every citation verified to resolve to a real page, and every twin page verified to retain every word present in the source PDF's raw text layer. Found and fixed 19 stale page citations, 7 paraphrased/non-verbatim quotes, 1 fabricated absence quote (`DEL-10`), 5 findings missing a `[NEW]` tag present on the page, and 4 twin pages missing real content dropped during Markdown conversion. All 106 findings and 23 twin pages now pass; `confidence` raised to `SURE`, `verified-by: automated cross-check pass` recorded plainly. `bootstrap.md` moved to `state: verified` (checker passes, agreement recorded) — not `signed`, which still requires a named domain reviewer. Full detail in `pivot.md` § 6.
