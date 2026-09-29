# Pivot

Every decision that settles a dispute, clarifies a rule, or corrects a citation, recorded
with a yes/no, who decided, and when — per `bootstrap.md` §10 (the prompt-log/traceability
requirement, which this file complements as the decision-specific counterpart).
Nothing here is a finding; findings live in `actuals/findings/` (`bootstrap.md` §12).

## Entry log

| # | Question | Decision | Who | When |
|---|---|---|---|---|
| 1 | Does the existing 22-unit finding set for AD-3010-C-330030-SHT-004 (REV3→REV4) still hold, verified by an independent rerun straight from both source PDFs — not just a re-read of the prior findings? | **Yes.** A fresh `pdftotext -raw` extraction of both PDFs, diffed directly against each other, found exactly the same 22 content differences the existing findings already record (title wording, one new revision row, one new legend note, one dimension change, two new braces, seven weld-count additions, two weld-count value changes, four ladder-dimension changes) — no unit was missing, no unit was extra, and no verdict was contradicted. One apparent 8th weld-count addition was investigated and found to be a diff-tool artifact (pre-existing unchanged text caught in the same hunk as two genuinely new lines), not a real 23rd unit. See `prompting.md`'s 2026-09-29 rerun entry for the full method and every value checked. | Claude (Sonnet 5), at the user's request | 2026-09-29 |

## How to use this file

1. When a finding's verdict is disputed, or a rule in a skill file is ambiguous for a
   specific unit, record the question here before resolving it in the findings file.
2. The decision is yes/no plus one sentence of reasoning.
3. If the decision changes a skill rule (not just this run's finding), edit
   `skills/<usecase>.md` directly and note the change here.
4. Never delete a pivot entry, even a rejected one — a rejected pivot is evidence the rule
   was considered and intentionally kept as-is.
