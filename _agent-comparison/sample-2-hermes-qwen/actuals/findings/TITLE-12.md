---
item: TITLE-12
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: CHANGED
material: no
group: furniture-header
addressed: true
verdict: CHANGED
old-position: "Docusign Envelope ID: A0436D27-BF4A-8678-816A-0755E71D4665" @(101,10)
new-position: "Docusign Envelope ID: C401E199-D49B-8D00-8015-A663C910C40C" @(101,10)
verified-by: author cross-check — text layer both sheets; batch-1 OCR read the leading "Docusign Envelope ID:" on both crops (rev3 uuid body OCR-garbled); UUID identity from the vector text layer
verified-on: 2026-09-16
confidence: SURE
---
# TITLE-12

**Docusign envelope ID header line**
CHANGED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1: "Docusign Envelope ID: A0436D27-BF4A-8678-816A-0755E71D4665"

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: "Docusign Envelope ID: C401E199-D49B-8D00-8015-A663C910C40C"

## What changed
The e-signature envelope identifier changed because Rev 4 travelled through DocuSign as its own envelope. Position identical; every other furniture line (footer contract/confidentiality text, file name line) unchanged.

## Why it matters
material=no — a re-signature artefact, not drawing content. Recorded because it is a page-level text difference a naive diff will always flag; the skill's rule that a run should not report furniture churn as design change makes this a useful negative control: a run listing it among "changes to review" is padding its materiality.
