---
use-case: version-compare
skill-version: v5
unit: Requirements Matrix
verified-by: —
verified-on: —
confidence: draft
reconciled: >
  2026-09-20 JUDGE re-judgment under skill v5 (Module 1's column-granularity rule) — see
  PromptLog.md for the entry recording this reconciliation. Previously judged under v2 as
  one aggregate column-level ADDED row; re-expanded below into one ADDED verdict per cell.
---

# Findings — Requirements Matrix

Grain: one requirement row (identified by ID, mapped by content per skill Module 2 stage
MAP — an ID that is skipped or a differently-worded requirement under a nearby ID is not
assumed to be the same clause). Table columns "Vendor Response" and "Vendor Notes" have no
counterpart at all in the supporting workbook (no data or header in columns E/F) — per v5
Module 1, this column-level absence is judged at cell granularity, one ADDED verdict per
cell, never aggregated into a single note spanning every row.

## Structural: table columns added (per-cell)

| Clause | Verdict | Old | New |
|---|---|---|---|
| R-01 Vendor Response | ADDED | NOT ADDRESSED — no "Vendor Response" column exists in the supporting workbook | "F" |
| R-01 Vendor Notes | ADDED | NOT ADDRESSED — no "Vendor Notes" column exists in the supporting workbook | "Proposing Aruba/HPE Networking 630 Series Wi-Fi 6E access points district-wide." |
| R-02 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-02 Vendor Notes | ADDED | NOT ADDRESSED | "Controller platform licensed and scaled for all 15 schools including Fallbrook Elementary." |
| R-03 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-03 Vendor Notes | ADDED | NOT ADDRESSED | "Core and access-layer switches replaced with PoE+ capable models district-wide." |
| R-04 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-04 Vendor Notes | ADDED | NOT ADDRESSED | "Minimum 10 Gbps uplinks provisioned between all access and core switches." |
| R-05 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-05 Vendor Notes | ADDED | NOT ADDRESSED | "One next-generation firewall / UTM appliance deployed at each of the 15 school sites." |
| R-06 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-06 Vendor Notes | ADDED | NOT ADDRESSED | "CIPA-compliant filtering with malware/phishing category blocking included at no extra cost." |
| R-08 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-08 Vendor Notes | ADDED | NOT ADDRESSED | "Per-site bandwidth utilization reporting included in base monitoring package." |
| R-09 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-09 Vendor Notes | ADDED | NOT ADDRESSED | "Dedicated E-Rate specialist assigned to assist with Form 470/471 documentation." |
| R-10 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-10 Vendor Notes | ADDED | NOT ADDRESSED | "All proposed hardware confirmed E-Rate Category 2 eligible." |
| R-11 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-11 Vendor Notes | ADDED | NOT ADDRESSED | "5-year manufacturer warranty included on all switches and access points." |
| R-12 Vendor Response | ADDED | NOT ADDRESSED | "P" |
| R-12 Vendor Notes | ADDED | NOT ADDRESSED | "Standard replacement SLA is 2 business days; next-business-day advance replacement available as a paid upgrade (see Pricing Form notes)." |
| R-13 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-13 Vendor Notes | ADDED | NOT ADDRESSED | "Installation crews scheduled for after-hours and weekend work to avoid instructional disruption." |
| R-14 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-14 Vendor Notes | ADDED | NOT ADDRESSED | "Administrator training scoped for 10 District IT staff, delivered on-site." |
| R-15 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-15 Vendor Notes | ADDED | NOT ADDRESSED | "24/7/365 technical support hotline included." |
| R-16 Vendor Response | ADDED | NOT ADDRESSED | "F" |
| R-16 Vendor Notes | ADDED | NOT ADDRESSED | "MFA enforced via SAML-integrated identity provider for all admin/staff accounts." |
| R-17 Vendor Response | ADDED | NOT ADDRESSED | "C" |
| R-17 Vendor Notes | ADDED | NOT ADDRESSED | "Base platform includes email alerting; native push/SMS mobile alerting requires the Cloud Monitoring Pro add-on, included in Pricing Form line P-10." |

## Per-requirement rows

| ID | Verdict | Old | New |
|---|---|---|---|
| R-01 | CHANGED | "Deploy Wi-Fi 6 access points in all classrooms and common areas district-wide." (Mandatory) | "Deploy Wi-Fi 6E access points in all classrooms and common areas district-wide." (Mandatory) |
| R-02 | CHANGED | "Wireless controller with centralized management console for all 14 schools." (Mandatory) | "Wireless controller with centralized management console for all 15 schools." (Mandatory) |
| R-03 | UNCHANGED | "Replace core and access-layer switches with PoE+ capable models." (Mandatory) | identical |
| R-04 | UNCHANGED | "Minimum 10 Gbps uplinks between access switches and core switches." (Mandatory) | identical |
| R-05 | UNCHANGED | "Deploy next-generation firewall / UTM appliances at each school site." (Mandatory) | identical |
| R-06 | CHANGED | "Web content filtering compliant with the Children's Internet Protection Act (CIPA)." (Mandatory) | "Web content filtering compliant with CIPA, with enhanced malware/phishing category blocking." (Mandatory) |
| R-07 | REMOVED | "On-premise network monitoring dashboard with alerting for outages." (Mandatory) | NOT ADDRESSED — this ID does not appear in the revised workbook at all; the revised document's own note states it was "removed from this revision and replaced by R-17," but R-17's requirement text is substantively different (cloud-managed vs on-premise), so this is judged REMOVED, not a rewording of the same clause — see R-17 below and Module 2's map-by-content rule |
| R-08 | CHANGED | "Automated bandwidth utilization reporting by school site." (**Desired**) | "Automated bandwidth utilization reporting by school site." (**Mandatory**) — requirement text unchanged, priority raised from Desired to Mandatory |
| R-09 | UNCHANGED | "Vendor must assist with E-Rate Form 470 and Form 471 filing documentation." (Mandatory) | identical |
| R-10 | UNCHANGED | "Equipment must be eligible for E-Rate Category 2 funding." (Mandatory) | identical |
| R-11 | CHANGED | "Minimum 3-year hardware warranty on all switches and access points." (Mandatory) | "Minimum 5-year hardware warranty on all switches and access points." (Mandatory) |
| R-12 | CHANGED | "Next-business-day advance hardware replacement for failed equipment." (**Desired**) | "Next-business-day advance hardware replacement for failed equipment." (**Mandatory**) — requirement text unchanged, priority raised from Desired to Mandatory |
| R-13 | UNCHANGED | "Installation scheduled to avoid disruption during school instructional hours." (Mandatory) | identical |
| R-14 | CHANGED | "Administrator training for District IT staff (approximately 8 staff)." (Mandatory) | "Administrator training for District IT staff (approximately 10 staff)." (Mandatory) |
| R-15 | CHANGED | "24/7 technical support hotline for critical outages." (**Desired**) | "24/7 technical support hotline for critical outages." (**Mandatory**) — requirement text unchanged, priority raised from Desired to Mandatory |
| R-16 | ADDED | NOT ADDRESSED | "Multi-factor authentication (MFA) required for all administrator and staff accounts on network management systems." (Mandatory) |
| R-17 | ADDED | NOT ADDRESSED | "Cloud-managed network monitoring platform with mobile alerting." (Mandatory) — see R-07 above regarding why this is ADDED rather than a CHANGED continuation of R-07 |

## Summary fields

| Clause | Verdict | Old | New |
|---|---|---|---|
| Total Requirements Listed | CHANGED | 15 | 16 |
| Mandatory Requirements | CHANGED | 12 | 16 |
| R-07/R-17 explanatory note | ADDED | NOT ADDRESSED | "Note: R-07 (on-premise-only network monitoring) has been removed from this revision and replaced by R-17 (cloud-managed monitoring)." |
