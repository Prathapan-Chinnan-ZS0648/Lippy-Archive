# Graph

The relationships this sample's findings depend on: which unit in the source document was
checked against what (a supporting document, or the source itself), and which findings a
report claim traces back to.

```text
<sample>/documents/source/<document>.ext   (<N> units, per <sample>/actuals/plan.md)
        │
        ▼
<sample>/documents/supporting/<document>.ext   (if applicable — omit this stage for a single-document sample)
        │
        ▼
<sample>/actuals/findings/<unit>.md   (one file per unit)
        │
        ▼
<sample>/actuals/report/report.md
```

<Any note about coverage — e.g. whether every unit on the document was judged, or only a
scoped subset, and how an absent counterpart is represented rather than assumed.>
