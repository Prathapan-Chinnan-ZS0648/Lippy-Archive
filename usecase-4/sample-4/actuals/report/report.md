---
verified-by: automated cross-check pass
verified-on: 2026-09-11
confidence: SURE
---
# The reissue explained: RFP-MPSD-2026-0053 → RFP-MPSD-2026-0053-R1

Source: `documents/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx` (RFP-MPSD-2026-0053-R1, issued April 27, 2026)
Supporting: `documents/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx` (RFP-MPSD-2026-0053, issued February 9, 2026 — superseded)

## Counts by kind

| kind | count |
|---|---|
| ADDED | 14 |
| CHANGED | 21 |
| UNCHANGED | 11 |
| REMOVED | 1 |
| material: yes | 36 |
| material: no | 11 |
| **total units** | **47** |

## Rows, in source workbook order

| id | sheet | kind | material | what changed |
|---|---|---|---|---|
| COVER-1 | Cover | CHANGED | true | Program title expanded to name cybersecurity enhancement explicitly. |
| COVER-3 | Cover | ADDED | true | New row naming the district's updated size: 15 schools (was 14), ~11,900 students, driven by the new Fallbrook Elementary school. |
| COVER-2 | Cover | CHANGED | true | RFP number suffixed -R1; issue date, proposal deadline also changed (Feb 9 -> Apr 27, 2026 issue; Mar 20 -> Jun 5, 2026 deadline). |
| COVER-4 | Cover | CHANGED | true | The workbook contents list gains a sixth entry for the new Cybersecurity Addendum sheet; the original's plain "Workbook Contents:" label is replaced by the first numbered entry in the revised list. |
| R-01 | Requirements Matrix | CHANGED | true | Access point standard upgraded from Wi-Fi 6 to Wi-Fi 6E. |
| R-02 | Requirements Matrix | CHANGED | true | School count 14 -> 15, consistent with Cover row 8's Fallbrook Elementary addition. |
| R-03 | Requirements Matrix | UNCHANGED | false | Requirement carried over verbatim. |
| R-04 | Requirements Matrix | UNCHANGED | false | Requirement carried over verbatim. |
| R-05 | Requirements Matrix | UNCHANGED | false | Requirement carried over verbatim. |
| R-06 | Requirements Matrix | CHANGED | true | CIPA content filtering requirement extended to add malware/phishing category blocking. |
| R-08 | Requirements Matrix | CHANGED | true | Priority raised from Desired to Mandatory. |
| R-09 | Requirements Matrix | UNCHANGED | false | Requirement carried over verbatim. |
| R-10 | Requirements Matrix | UNCHANGED | false | Requirement carried over verbatim. |
| R-11 | Requirements Matrix | CHANGED | true | Minimum hardware warranty extended 3 -> 5 years. |
| R-12 | Requirements Matrix | CHANGED | true | Priority raised from Desired to Mandatory. |
| R-13 | Requirements Matrix | UNCHANGED | false | Requirement carried over verbatim. |
| R-14 | Requirements Matrix | CHANGED | true | Training population 8 -> 10 staff. |
| R-15 | Requirements Matrix | CHANGED | true | Priority raised from Desired to Mandatory. |
| R-16 | Requirements Matrix | ADDED | true | New Mandatory requirement for MFA on all administrator/staff network-management accounts. |
| R-17 | Requirements Matrix | ADDED | true | New Mandatory requirement for cloud-managed monitoring with mobile alerting, explicitly replacing R-07. |
| REQSUM-1 | Requirements Matrix | CHANGED | true | Total requirement count 15 -> 16 (net of R-07 removed, R-16 and R-17 added); Mandatory Requirements count 12 -> 16, since several Desired requirements (R-08, R-12, R-15) were also raised to Mandatory. |
| R-07 | Requirements Matrix | REMOVED | true | Removed from the Requirements Matrix; replaced by R-17 (cloud-managed network monitoring platform), per the revised workbook's own note at row 22. |
| P-01 | Pricing Form | CHANGED | true | Line item retitled for Wi-Fi 6E; estimated quantity increased 420 -> 450. |
| P-02 | Pricing Form | UNCHANGED | false | Line item description carried over verbatim. |
| P-03 | Pricing Form | CHANGED | true | Estimated quantity increased 95 -> 102. |
| P-04 | Pricing Form | CHANGED | true | Estimated quantity increased 14 -> 15. |
| P-05 | Pricing Form | CHANGED | true | Estimated quantity increased 14 -> 15. |
| P-06 | Pricing Form | UNCHANGED | false | Line item description carried over verbatim. |
| P-07 | Pricing Form | CHANGED | true | Line item retitled for the increased training population, 8 -> 10 staff. |
| P-08 | Pricing Form | UNCHANGED | false | Line item description carried over verbatim. |
| P-09 | Pricing Form | ADDED | true | New pricing line for MFA licensing across all staff accounts. |
| P-10 | Pricing Form | ADDED | true | New pricing line for the cloud-managed monitoring subscription. |
| P-11 | Pricing Form | ADDED | true | New pricing line for a district-facing cybersecurity insurance rider. |
| PRICE-TOTAL | Pricing Form | UNCHANGED | false | Total-price rollup label carried over verbatim (row renumbered 10 -> 13 to accommodate three new pricing lines). |
| REF-1 | Reference Form | CHANGED | true | Reference count raised 3 -> 4, with a new sub-requirement that at least 1 reference include a cybersecurity enhancement component. |
| REF-2 | Reference Form | UNCHANGED | false | The Client District Name, Contact Name & Title, Phone/Email, Number of Schools/Students Served, Scope Summary, Contract Value, and Completion Date fields are carried over verbatim. |
| REF-3 | Reference Form | ADDED | true | New reference-form field asking whether the referenced project included E-Rate Category 2 funding experience. |
| TIME-1 | Project Timeline | CHANGED | true | Every early-stage milestone shifted roughly two and a half months later, consistent with the April 27 reissue date (Q&A, submission, shortlist, presentations, award all shifted). |
| TIME-2 | Project Timeline | ADDED | true | New milestone for a cybersecurity design review. |
| TIME-3 | Project Timeline | CHANGED | true | Installation-complete milestone updated for the 15th school and pushed roughly two and a half months later, August 10 -> October 30, 2026. |
| TIME-4 | Project Timeline | CHANGED | true | Final milestone retitled to name both network and cybersecurity go-live, and pushed roughly three months later, August 24 -> November 16, 2026. |
| CSEC-1 | Cybersecurity Addendum | ADDED | true | An entirely new sheet, added in response to a district-wide cybersecurity assessment completed March 2026, per the sheet's own note at row 2. |
| CS-01 | Cybersecurity Addendum | ADDED | true | New Mandatory requirement for managed EDR on all district-owned devices. |
| CS-02 | Cybersecurity Addendum | ADDED | true | New Mandatory requirement for 24/7 SOC monitoring. |
| CS-03 | Cybersecurity Addendum | ADDED | true | New Mandatory requirement for a documented incident response plan with a 1-hour breach-notification SLA. |
| CS-04 | Cybersecurity Addendum | ADDED | true | New Mandatory requirement for an annual third-party vulnerability assessment. |
| CS-05 | Cybersecurity Addendum | ADDED | true | New Mandatory requirement for FERPA compliance wherever monitoring tools touch student data. |

## Rows that need attention before a vendor responds

These are the changes most likely to gate or reshape a vendor's response, drawn from the material=yes rows above:

- **A wholly new sheet, Cybersecurity Addendum** (`CSEC-1`, `CS-01`–`CS-05`): five new Mandatory requirements (EDR, 24/7 SOC monitoring, 1-hour breach notification SLA, annual vulnerability assessment, FERPA compliance) with no counterpart anywhere in the original workbook.
- **R-07 removed and replaced by R-17**: on-premise-only network monitoring is gone; cloud-managed monitoring with mobile alerting is required instead. A vendor who priced on-premise monitoring in the original round must re-price.
- **District scale increased**: 14 → 15 schools, ~2,300 → ~11,900 students noted on Cover (`COVER-3`), driving quantity increases across `R-02`, `P-01`, `P-03`, `P-04`, `P-05`.
- **Three Desired requirements promoted to Mandatory** (`R-08`, `R-12`, `R-15`): bandwidth reporting, advance hardware replacement, and the 24/7 support hotline are now pass/fail requirements, not optional.
- **New MFA requirement** (`R-16`, `P-09`): multi-factor authentication required for all administrator and staff accounts on network management systems.
- **Warranty extended** (`R-11`): minimum hardware warranty 3 → 5 years.
- **New commercial line items** (`P-09`–`P-11`): MFA licensing, cloud monitoring subscription, and a cybersecurity insurance rider all require new pricing the original form never asked for.
- **Reference bar raised** (`REF-1`): 3 → 4 references, at least 1 of which must include a cybersecurity enhancement component.
- **Schedule slipped roughly 2.5–3 months** across every post-award milestone (`TIME-1`, `TIME-3`, `TIME-4`), with a new Cybersecurity Design Review milestone added (`TIME-2`).
