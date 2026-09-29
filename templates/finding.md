---
run: <sample>
use-case: <use_case_name>
skill-version: <vN, the skill version this finding was judged under>
unit: <unit id — short description>
# --- the fields below are this use case's own verdict shape; replace with whatever
#     skills/<usecase>/skill.md's required output shape (its Module 5 or equivalent)
#     actually names for this use case — this floor is not a ceiling ---
verdict: <the applicable label from this use case's scale>
cites: <document, page/unit N[; document, page/unit M]>
verified-by: <reviewer, or "single-reader cross-check">
verified-on: <YYYY-MM-DD>
confidence: SURE | UNSURE
---

# <unit id>

Source: `<sample>/documents/source/<document>.ext`
Supporting: `<sample>/documents/supporting/<document>.ext`  <!-- omit if supporting_document_path is "n/a" -->
Twin: `<sample>/actuals/twin/derived/<document>.md`

**<unit description>** — <verdict>

## Evidence

> <the exact quote(s) the verdict rests on>
>
> — <document>, page/unit <N>

## Why this verdict

<reasoning, referencing the evidence above>
