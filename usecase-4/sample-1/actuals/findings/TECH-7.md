---
item: TECH-7
for-document: sha256:8a8bd85ca1f4bd20c8fb8ab36a40b3c1180f03cc76d25f9476b44e82f61a1b6b
section: 5.4 Hosting, Availability & Security
kind: CHANGED
material: true
old: SYNTH_VERS_DOCS_S1_ORIGINAL.pdf, page 5
new: SYNTH_VERS_DOCS_S1_REVISED.pdf, page 5
cites: SYNTH_VERS_DOCS_S1_ORIGINAL.pdf, page 5; SYNTH_VERS_DOCS_S1_REVISED.pdf, page 5
verified-by: automated cross-check pass
verified-on: 2026-09-11
confidence: SURE
---

# TECH-7

**5.4 Hosting, Availability & Security** — CHANGED (material)

## Old
> System uptime service level agreement (SLA) of 99.5% or higher for hosted WMS and telematics components, measured monthly.
> — SYNTH_VERS_DOCS_S1_ORIGINAL.pdf, page 5

## New
> System uptime service level agreement (SLA) of 99.9% or higher for hosted WMS, telematics, and cold chain monitoring components, measured monthly.
> — SYNTH_VERS_DOCS_S1_REVISED.pdf, page 5

## What changed
Uptime SLA tightened 99.5% → 99.9%, and now explicitly covers cold chain monitoring components.

## Why it matters
A stricter SLA may require redundant infrastructure (see TECH-8) and carries commercial risk if unmet.
