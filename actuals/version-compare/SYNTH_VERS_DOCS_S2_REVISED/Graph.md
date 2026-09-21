# Graph

The relationships this document's findings depend on: which unit in the source document
was checked against which unit in the supporting document, and which findings a report
claim traces back to.

```text
documents/source/SYNTH_VERS_DOCS_S2_REVISED.pdf   (20 units, per Plan.md)
        │  each unit compared 1:1 against, except unit 7 ([Reserved]) which maps to a
        │  same-numbered but wholly different-content unit in the supporting document
        ▼
documents/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf   (same 20 unit slots, one — "6." —
        │                                                renamed and emptied of content)
        ▼
findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/<01..20>-*.md   (one file per unit)
        │
        ▼
reports/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Report.md   (verdict-count summary + thematic rollup)
```

Every unit in the source has a same-numbered, same-titled counterpart section in the
supporting document **except** unit 7 ("6. [Reserved]"), whose counterpart ("6. Vendor
Onboarding & Staffing Requirements") shares the section number but not the title or any
content — this is the one place in this sample where the unit-to-unit mapping is by
section number rather than by matching title, and where every clause within that unit
resolved to REMOVED/ADDED rather than CHANGED/UNCHANGED (see
`findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/07-6Reserved.md`). This is a different
edge case from the S1 sample (SYNTH_VERS_DOCS_S1_REVISED), where the two documents shared
an identical section structure throughout with no section-level removal — logged in
`skills/version-compare/PatternLog.md` as a candidate second observation of "whole
section content removed while its number/slot persists."
