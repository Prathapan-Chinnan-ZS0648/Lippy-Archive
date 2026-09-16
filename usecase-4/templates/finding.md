---
item: <id>                                   # e.g. SCOPE-6, ELIG-3 — mnemonic + running number, or a table row id
for-document: sha256:<digest>                # sha256 of the source (revised) document
section: <section heading>                   # the source document's own top-level section
kind: ADDED | REMOVED | CHANGED | UNCHANGED
material: true | false
old: <document>, page <N>                    # omit / leave blank for ADDED
new: <document>, page <N>                    # omit / leave blank for REMOVED
cites: <document, page; document, page>      # every document/page this finding rests on
verified-by: <names>
verified-on: <date>
confidence: SURE | UNSURE
---
# <id> · <kind>

## Old
<!-- quote from the supporting (earlier) document, or "—" if ADDED -->

## New
<!-- quote from the source (revised) document, or "—" if REMOVED -->

## What changed

## Why it matters
