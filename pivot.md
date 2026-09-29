# Pivot

Every decision that settles a dispute, clarifies a rule, or corrects a citation, recorded
with a yes/no, who decided, and when — per `bootstrap.md` §10 (the prompt-log/traceability
requirement, which this file complements as the decision-specific counterpart).
Nothing here is a finding; findings live in `actuals/findings/` (`bootstrap.md` §12).
This file is empty of disputes so far — the first sample processed had no disagreements
requiring a pivot entry.

## Entry log

| # | Question | Decision | Who | When |
|---|---|---|---|---|
| — | none yet | — | — | — |

## How to use this file

1. When a finding's verdict is disputed, or a rule in a skill file is ambiguous for a
   specific unit, record the question here before resolving it in the findings file.
2. The decision is yes/no plus one sentence of reasoning.
3. If the decision changes a skill rule (not just this run's finding), edit
   `skills/<usecase>.md` directly and note the change here.
4. Never delete a pivot entry, even a rejected one — a rejected pivot is evidence the rule
   was considered and intentionally kept as-is.
