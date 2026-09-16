---
document: SYNTH_VERS_DOCS_S4_REVISED.xlsx
for-document: sha256:d6d90056d5d9e59eadcc31d089689e155db34d0cc3eb1f48c503a136739a9ade
verified-by: automated cross-check pass
verified-on: 2026-09-11
confidence: SURE
---

# SYNTH_VERS_DOCS_S4_REVISED.xlsx

46 units across 6 sheets, cut under the version-compare unit rule in `skills/version-docs.md`'s spreadsheet addendum: one unit per data row (or per sheet-level heading, for Cover and the Cybersecurity Addendum's title), id = the row's own id where one exists (`R-16`, `P-09`, `CS-01`), or a section mnemonic plus running number otherwise (`COVER-3`, `TIME-2`). `R-07` (removed outright, replaced by `R-17`) is not a source unit — it is documented in `actuals/twin/derived/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx.md` and in `actuals/findings/`. `actuals/findings/` is the authoritative one-file-per-unit set and is the one to count against (47 findings: 46 source units plus the 1 REMOVED unit).

## Units

### Cover · 4 units
- COVER-1 | row 7 | Cover | Program title expanded to name cybersecurity enhancement explicitly.
- COVER-3 | row 8 | Cover | New row naming the district's updated size: 15 schools (was 14), ~11,900 students, driven by the new Fallbrook Elementary school.
- COVER-2 | row 9 | Cover | RFP number suffixed -R1; issue date, proposal deadline also changed (Feb 9 -> Apr 27, 2026 issue; Mar 20 -> Jun 5, 2026 deadline).
- COVER-4 | row 15 | Cover | The workbook contents list gains a sixth entry for the new Cybersecurity Addendum sheet; the original's plain "Workbook Contents:" label is replaced by the first numbered entry in the revised list.

### Requirements Matrix · 17 units
- R-01 | row 2 | Requirements Matrix | Access point standard upgraded from Wi-Fi 6 to Wi-Fi 6E.
- R-02 | row 3 | Requirements Matrix | School count 14 -> 15, consistent with Cover row 8's Fallbrook Elementary addition.
- R-03 | row 4 | Requirements Matrix | Requirement carried over verbatim.
- R-04 | row 5 | Requirements Matrix | Requirement carried over verbatim.
- R-05 | row 6 | Requirements Matrix | Requirement carried over verbatim.
- R-06 | row 7 | Requirements Matrix | CIPA content filtering requirement extended to add malware/phishing category blocking.
- R-08 | row 8 | Requirements Matrix | Priority raised from Desired to Mandatory.
- R-09 | row 9 | Requirements Matrix | Requirement carried over verbatim.
- R-10 | row 10 | Requirements Matrix | Requirement carried over verbatim.
- R-11 | row 11 | Requirements Matrix | Minimum hardware warranty extended 3 -> 5 years.
- R-12 | row 12 | Requirements Matrix | Priority raised from Desired to Mandatory.
- R-13 | row 13 | Requirements Matrix | Requirement carried over verbatim.
- R-14 | row 14 | Requirements Matrix | Training population 8 -> 10 staff.
- R-15 | row 15 | Requirements Matrix | Priority raised from Desired to Mandatory.
- R-16 | row 16 | Requirements Matrix | New Mandatory requirement for MFA on all administrator/staff network-management accounts.
- R-17 | row 17 | Requirements Matrix | New Mandatory requirement for cloud-managed monitoring with mobile alerting, explicitly replacing R-07.
- REQSUM-1 | row 19 | Requirements Matrix | Total requirement count 15 -> 16 (net of R-07 removed, R-16 and R-17 added); Mandatory Requirements count 12 -> 16, since several Desired requirements (R-08, R-12, R-15) were also raised to Mandatory.

### Pricing Form · 12 units
- P-01 | row 2 | Pricing Form | Line item retitled for Wi-Fi 6E; estimated quantity increased 420 -> 450.
- P-02 | row 3 | Pricing Form | Line item description carried over verbatim.
- P-03 | row 4 | Pricing Form | Estimated quantity increased 95 -> 102.
- P-04 | row 5 | Pricing Form | Estimated quantity increased 14 -> 15.
- P-05 | row 6 | Pricing Form | Estimated quantity increased 14 -> 15.
- P-06 | row 7 | Pricing Form | Line item description carried over verbatim.
- P-07 | row 8 | Pricing Form | Line item retitled for the increased training population, 8 -> 10 staff.
- P-08 | row 9 | Pricing Form | Line item description carried over verbatim.
- P-09 | row 10 | Pricing Form | New pricing line for MFA licensing across all staff accounts.
- P-10 | row 11 | Pricing Form | New pricing line for the cloud-managed monitoring subscription.
- P-11 | row 12 | Pricing Form | New pricing line for a district-facing cybersecurity insurance rider.
- PRICE-TOTAL | row 13 | Pricing Form | Total-price rollup label carried over verbatim (row renumbered 10 -> 13 to accommodate three new pricing lines).

### Reference Form · 3 units
- REF-1 | row 1 | Reference Form | Reference count raised 3 -> 4, with a new sub-requirement that at least 1 reference include a cybersecurity enhancement component.
- REF-2 | row 4 | Reference Form | The Client District Name, Contact Name & Title, Phone/Email, Number of Schools/Students Served, Scope Summary, Contract Value, and Completion Date fields are carried over verbatim.
- REF-3 | row 9 | Reference Form | New reference-form field asking whether the referenced project included E-Rate Category 2 funding experience.

### Project Timeline · 4 units
- TIME-1 | row 2 | Project Timeline | Every early-stage milestone shifted roughly two and a half months later, consistent with the April 27 reissue date (Q&A, submission, shortlist, presentations, award all shifted).
- TIME-2 | row 8 | Project Timeline | New milestone for a cybersecurity design review.
- TIME-3 | row 10 | Project Timeline | Installation-complete milestone updated for the 15th school and pushed roughly two and a half months later, August 10 -> October 30, 2026.
- TIME-4 | row 11 | Project Timeline | Final milestone retitled to name both network and cybersecurity go-live, and pushed roughly three months later, August 24 -> November 16, 2026.

### Cybersecurity Addendum · 6 units
- CSEC-1 | row 1 | Cybersecurity Addendum | An entirely new sheet, added in response to a district-wide cybersecurity assessment completed March 2026, per the sheet's own note at row 2.
- CS-01 | row 5 | Cybersecurity Addendum | New Mandatory requirement for managed EDR on all district-owned devices.
- CS-02 | row 6 | Cybersecurity Addendum | New Mandatory requirement for 24/7 SOC monitoring.
- CS-03 | row 7 | Cybersecurity Addendum | New Mandatory requirement for a documented incident response plan with a 1-hour breach-notification SLA.
- CS-04 | row 8 | Cybersecurity Addendum | New Mandatory requirement for an annual third-party vulnerability assessment.
- CS-05 | row 9 | Cybersecurity Addendum | New Mandatory requirement for FERPA compliance wherever monitoring tools touch student data.
