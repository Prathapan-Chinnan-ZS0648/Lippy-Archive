# Graph

The relationships this run's findings depend on: which unit in the source document was
checked against which unit in the supporting document, and which findings a report claim
traces back to.

```text
documents/source/SYNTH_VERS_DOCS_S1_REVISED.pdf   (19 units, per actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/Plan.md)
        │  each unit compared 1:1 against
        ▼
documents/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf   (same 19 units, same section names)
        │
        ▼
findings/version-compare/SYNTH_VERS_DOCS_S1_REVISED/<01..19>-*.md   (one file per unit, verdicts + both-sided quotes)
        │
        ▼
reports/version-compare/SYNTH_VERS_DOCS_S1_REVISED/Report.md   (verdict-count summary + thematic rollup — cites findings only)
```

No unit in the source lacked a same-named counterpart section in the supporting document
in this run — the two documents share an identical section structure (only clause content
within sections differs), so the unit-to-unit mapping above is 1:1 throughout. This is a
property of this specific sample, not assumed for future samples: a future sample may
have source units with no supporting counterpart at all, which would be judged NOT
ADDRESSED per `skills/version-compare/Skill.md` rather than assumed absent from the graph.
