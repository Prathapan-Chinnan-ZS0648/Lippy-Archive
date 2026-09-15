---
verified-by: automated cross-check pass
verified-on: 2026-09-11
confidence: SURE
---
# The reissue explained: RFP-BRG-2026-0231 → RFP-BRG-2026-0231-R1

Source: `documents/source/SYNTH_VERS_DOCS_S1_REVISED.pdf` (RFP-BRG-2026-0231-R1, issued June 2, 2026)
Supporting: `documents/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf` (RFP-BRG-2026-0231, issued March 9, 2026 — superseded)

## Counts by kind

| kind | count |
|---|---|
| ADDED | 29 |
| CHANGED | 53 |
| UNCHANGED | 24 |
| REMOVED | 0 |
| material: yes | 81 |
| material: no | 25 |
| **total units** | **106** |

## Rows, in source document order

| id | section | kind | material | what changed |
|---|---|---|---|---|
| INTRO-1 | 1. Introduction & Background | CHANGED | true | Network scale increased: 9→11 distribution centers, 640→780 trucks, 1,150→1,400 stores. |
| INTRO-2 | 1. Introduction & Background | ADDED | true | New narrative explaining the reissue: the March 2026 Meridian Grocers acquisition added two refrigerated DCs and a new perishables category. |
| INTRO-3 | 1. Introduction & Background | ADDED | true | New sentence naming cold chain monitoring and food-safety compliance as a driver for the reissue. |
| DEF-1 | 2. Definitions | ADDED | true | New definition for "Cold Chain". |
| DEF-2 | 2. Definitions | ADDED | true | New definition for "FSMA". |
| DEF-3 | 2. Definitions | UNCHANGED | false | The six original definitions are carried over verbatim. |
| OBJ-1 | 3. Project Objectives | CHANGED | true | Distribution center count updated 9 → 11. |
| OBJ-2 | 3. Project Objectives | UNCHANGED | false | Four objectives (telematics visibility, ERP integration, 30% picking-error reduction, 98% on-time delivery, handheld scanning) carried over verbatim. |
| OBJ-3 | 3. Project Objectives | ADDED | true | New seventh project objective for cold chain monitoring. |
| SCOPE-1 | 4. Scope of Work | CHANGED | true | DC count 9 → 11, explicitly including the two Meridian refrigerated facilities. |
| SCOPE-2 | 4. Scope of Work | CHANGED | true | Truck count 640 → 780. |
| SCOPE-3 | 4. Scope of Work | UNCHANGED | false | ERP integration scope item carried over verbatim. |
| SCOPE-4 | 4. Scope of Work | CHANGED | true | Data migration scope extended to include the Meridian Grocers legacy inventory system. |
| SCOPE-5 | 4. Scope of Work | UNCHANGED | false | Handheld scanning scope item carried over verbatim. |
| SCOPE-6 | 4. Scope of Work | ADDED | true | New scope item: IoT cold chain temperature/humidity monitoring with excursion alerting. |
| SCOPE-7 | 4. Scope of Work | ADDED | true | New scope item: FSMA-compliant traceability and temperature-log reporting. |
| SCOPE-8 | 4. Scope of Work | CHANGED | true | Training population 900 → 1,150 staff, and now includes cold chain handling procedures. |
| SCOPE-9 | 4. Scope of Work | CHANGED | true | Support period 18 → 24 months. |
| TECH-1 | 5.1 WMS | ADDED | true | New WMS requirement for lot/expiration-date tracking. |
| TECH-2 | 5.1 WMS | UNCHANGED | false | Barcode/RFID, slotting/wave-picking, and cross-docking/piece-picking bullets carried over verbatim; the "real-time inventory visibility" bullet's DC count implicitly follows OBJ-1/SCOPE-1 (9→11). |
| TECH-3 | 5.2 Fleet Telematics | CHANGED | true | GPS refresh interval tightened from 60 to 30 seconds. |
| TECH-4 | 5.2 Fleet Telematics | UNCHANGED | false | Route optimization and driver behavior scoring bullets carried over verbatim. |
| TECH-5 | 5.3 Cold Chain Monitoring | ADDED | true | New technical subsection: Cold Chain Monitoring, with three requirements (sensor monitoring, alerting, exportable digital logs). |
| TECH-10 | 5.4 Hosting, Availability & Security | UNCHANGED | false | Encryption requirement carried over verbatim. |
| TECH-11 | 5.4 Hosting, Availability & Security | CHANGED | true | Data retention minimum extended 3 → 5 years, now explicitly covering cold chain temperature logs. |
| TECH-6 | 5.4 Hosting, Availability & Security | CHANGED | true | On-premise deployment option removed; cloud-only, restricted to AWS or GCP. |
| TECH-7 | 5.4 Hosting, Availability & Security | CHANGED | true | Uptime SLA tightened 99.5% → 99.9%, and now explicitly covers cold chain monitoring components. |
| TECH-8 | 5.4 Hosting, Availability & Security | ADDED | true | New requirement for multi-region/multi-AZ redundancy. |
| TECH-9 | 5.4 Hosting, Availability & Security | CHANGED | true | SSO protocol support widened to include OpenID Connect (OIDC) as an alternative to SAML 2.0. |
| TECH-12 | 5.5 System Integrations | UNCHANGED | false | SAP and Zebra integration bullets carried over verbatim. |
| TECH-13 | 5.5 System Integrations | ADDED | true | New integration requirement with the Meridian Grocers legacy system. |
| FR-01 | 6. Functional Requirements Matrix | UNCHANGED | false | Requirement text and priority (Mandatory) carried over verbatim. |
| FR-02 | 6. Functional Requirements Matrix | UNCHANGED | false | Requirement text and priority carried over verbatim. |
| FR-03 | 6. Functional Requirements Matrix | UNCHANGED | false | Requirement text and priority carried over verbatim. |
| FR-04 | 6. Functional Requirements Matrix | CHANGED | true | Priority raised from Desired to Mandatory. |
| FR-05 | 6. Functional Requirements Matrix | UNCHANGED | false | Requirement text and priority carried over verbatim. |
| FR-06 | 6. Functional Requirements Matrix | UNCHANGED | false | Requirement text and priority carried over verbatim. |
| FR-07 | 6. Functional Requirements Matrix | ADDED | true | New functional requirement, Mandatory priority. |
| FR-08 | 6. Functional Requirements Matrix | ADDED | true | New functional requirement, Mandatory priority. |
| FR-09 | 6. Functional Requirements Matrix | ADDED | true | New functional requirement, Mandatory priority. |
| ELIG-1 | 7. Eligibility Criteria | CHANGED | true | Minimum relevant experience raised 6 → 8 years. |
| ELIG-2 | 7. Eligibility Criteria | CHANGED | true | Minimum annual revenue raised $10M → $18M. |
| ELIG-3 | 7. Eligibility Criteria | CHANGED | true | Reference count raised 3 → 5, with a new sub-requirement that at least 2 involve cold chain/refrigerated logistics. |
| ELIG-4 | 7. Eligibility Criteria | ADDED | true | New eligibility criterion for FSMA traceability experience. |
| ELIG-5 | 7. Eligibility Criteria | CHANGED | true | General liability and professional liability minimums doubled, and a new $3M cyber liability minimum added. |
| ELIG-6 | 7. Eligibility Criteria | CHANGED | true | Performance bond requirement raised 50% → 75% of contract value. |
| DEL-1 | 8. Deliverables | UNCHANGED | false | Deliverable #1 carried over verbatim. |
| DEL-10 | 8. Deliverables | ADDED | false | A milestone that existed in the original's Project Timeline (Section 9) is promoted to its own Deliverables row. |
| DEL-11 | 8. Deliverables | UNCHANGED | false | Final deliverable row carried over verbatim. |
| DEL-2 | 8. Deliverables | CHANGED | true | Deliverable #2 retitled to include Cold Chain; due date unchanged. |
| DEL-3 | 8. Deliverables | UNCHANGED | false | Deliverable #3 carried over verbatim. |
| DEL-4 | 8. Deliverables | UNCHANGED | false | Deliverable #4 carried over verbatim. |
| DEL-5 | 8. Deliverables | CHANGED | true | Deliverable title now specifies inclusion of Meridian Grocers data. |
| DEL-6 | 8. Deliverables | CHANGED | true | Truck count in the deliverable title 640 → 780. |
| DEL-7 | 8. Deliverables | ADDED | true | New deliverable for cold chain monitoring rollout. |
| DEL-8 | 8. Deliverables | ADDED | true | New deliverable for FSMA traceability and compliance reporting. |
| DEL-9 | 8. Deliverables | CHANGED | true | Staff count in the deliverable title 900 → 1,150. |
| TIME-1 | 9. Project Timeline | CHANGED | true | Every early-stage milestone shifted roughly three months later, consistent with the June 2 reissue date. |
| TIME-2 | 9. Project Timeline | CHANGED | true | Phase 1 go-live pushed December 2026 → April 2027. |
| TIME-3 | 9. Project Timeline | ADDED | true | New milestone for cold chain monitoring go-live. |
| TIME-4 | 9. Project Timeline | CHANGED | true | Telematics rollout pushed March 2027 → September 2027. |
| TIME-5 | 9. Project Timeline | CHANGED | true | Full WMS rollout pushed July 2027 → January 2028. |
| TIME-6 | 9. Project Timeline | CHANGED | true | Overall project completion pushed September 2027 → March 2028. |
| EVAL-1 | 10. Evaluation Criteria | CHANGED | true | Weight reduced 30 → 25 points. |
| EVAL-2 | 10. Evaluation Criteria | CHANGED | true | Weight reduced 20 → 15 points. |
| EVAL-3 | 10. Evaluation Criteria | CHANGED | true | Weight reduced 15 → 10 points. |
| EVAL-4 | 10. Evaluation Criteria | UNCHANGED | false | Cost and Support & Maintenance weights carried over verbatim. |
| EVAL-5 | 10. Evaluation Criteria | ADDED | true | New evaluation criterion, 10 points. |
| EVAL-6 | 10. Evaluation Criteria | ADDED | true | New evaluation criterion, 5 points. |
| INS-1 | 11. Insurance & Bonding Requirements | CHANGED | true | General liability minimum doubled $3M → $6M. |
| INS-2 | 11. Insurance & Bonding Requirements | CHANGED | true | Professional liability minimum doubled $1M → $2M. |
| INS-3 | 11. Insurance & Bonding Requirements | ADDED | true | New insurance requirement for cyber liability. |
| INS-4 | 11. Insurance & Bonding Requirements | CHANGED | true | Performance bond raised 50% → 75% of total contract value. |
| INS-5 | 11. Insurance & Bonding Requirements | UNCHANGED | false | Additional-insured requirement carried over verbatim. |
| COMM-1 | 12. Commercial Terms | CHANGED | true | Budget range raised roughly 55% at both ends. |
| COMM-2 | 12. Commercial Terms | CHANGED | true | Base term extended 24 → 36 months; renewal options increased from one to two. |
| COMM-3 | 12. Commercial Terms — Payment Schedule | CHANGED | true | Payment schedule restructured from 4 milestones to 6, adding a cold chain monitoring go-live tranche (20%) and a separate WMS full-rollout tranche (15%); upfront and final payments both reduced. |
| COMM-4 | 12. Commercial Terms — Other Terms | CHANGED | true | Warranty period doubled 12 → 24 months. |
| COMM-5 | 12. Commercial Terms — Other Terms | CHANGED | true | Payment terms tightened Net 45 → Net 30. |
| COMM-6 | 12. Commercial Terms — Other Terms | CHANGED | true | A liquidated damages clause is introduced where none existed before, capped at 10% of contract value. |
| COMM-7 | 12. Commercial Terms — Other Terms | ADDED | true | New retention holdback clause, 5% per milestone. |
| SUB-1 | 13. Submission Instructions | CHANGED | true | Submission email changed from procurement@ to proposals@brightlineretail.com. |
| SUB-2 | 13. Submission Instructions | CHANGED | true | A signed hard copy delivered to BRG's office is now required, reversing the original's explicit waiver. |
| SUB-3 | 13. Submission Instructions | CHANGED | true | Proposal validity period extended 120 → 150 days. |
| TC-1 | 14. Terms & Conditions | UNCHANGED | false | Subsections 14.1 through 14.4 carried over verbatim. |
| TC-2 | 14. Terms & Conditions | ADDED | true | New subsection 14.5 requiring written FSMA compliance certification. |
| CONTACT-1 | 15. Contact Information | CHANGED | true | Issuing officer changed from Thomas Ridley to Alicia Fenwick (also a title change, Procurement Manager → Senior Procurement Manager). |
| CONTACT-2 | 15. Contact Information | CHANGED | true | Contact email and phone number both changed to match the new issuing officer. |
| APPA-1 | Appendix A: Pricing Form | CHANGED | true | Line item A-1 DC count 9 → 11. |
| APPA-2 | Appendix A: Pricing Form | CHANGED | true | Line item A-3 truck count 640 → 780. |
| APPA-3 | Appendix A: Pricing Form | CHANGED | true | Line item A-5 retitled to include Meridian Grocers. |
| APPA-4 | Appendix A: Pricing Form | ADDED | true | New pricing line for cold chain IoT sensors and monitoring platform. |
| APPA-5 | Appendix A: Pricing Form | ADDED | true | New pricing line for the FSMA traceability and reporting module. |
| APPA-6 | Appendix A: Pricing Form | CHANGED | true | Training line item (renumbered A-7 → A-9) staff count 900 → 1,150. |
| APPA-7 | Appendix A: Pricing Form | CHANGED | true | Support line item (renumbered A-8 → A-10) duration 18 → 24 months. |
| APPA-8 | Appendix A: Pricing Form | UNCHANGED | false | Total price line carried over (renumbered A-9 → A-11 to accommodate two new lines). |
| APPA-9 | Appendix A: Pricing Form | UNCHANGED | false | Three pricing lines (implementation/configuration, ERP integration, handheld scanner) carried over verbatim, same numbering. |
| APPB-1 | Appendix B: Reference Form | CHANGED | true | Reference count raised 3 → 5, with a new sub-requirement for 2 cold chain references. |
| APPB-2 | Appendix B: Reference Form | ADDED | true | New reference-form field asking whether the referenced project included cold chain monitoring. |
| APPB-3 | Appendix B: Reference Form | UNCHANGED | false | Seven reference-form fields carried over verbatim. |
| APPC-1 | Appendix C: Compliance Certification Checklist | CHANGED | true | Checklist row text updated to reflect the 6 → 8 year threshold. |
| APPC-2 | Appendix C: Compliance Certification Checklist | UNCHANGED | false | The three checklist row labels are carried over verbatim; the thresholds they certify against changed elsewhere (ELIG-2, ELIG-5, ELIG-6, INS-1–INS-4). |
| APPC-3 | Appendix C: Compliance Certification Checklist | CHANGED | true | Checklist row replaced: RFID/barcode tracking certification swapped for lot/expiration-date tracking certification. |
| APPC-4 | Appendix C: Compliance Certification Checklist | CHANGED | true | Checklist row threshold updated 60-second → 30-second refresh. |
| APPC-5 | Appendix C: Compliance Certification Checklist | ADDED | true | New checklist row for FSMA-compliant traceability reporting. |
| APPC-6 | Appendix C: Compliance Certification Checklist | ADDED | true | New checklist row for cloud-only, multi-region hosting. |

## Clauses that need attention before a vendor responds

These are the changes most likely to gate or reshape a vendor's response, drawn from the material=yes rows above:

- **Eligibility bar raised** (ELIG-1–ELIG-6): 8 years' experience (was 6), $18M revenue (was $10M), 5 references incl. 2 cold-chain (was 3, none required), FSMA traceability experience (new), doubled insurance minimums plus new cyber liability, 75% performance bond (was 50%).
- **Hosting model narrowed** (TECH-6): on-premise is no longer an option — cloud-only, AWS or GCP.
- **New cold chain / FSMA workstream** (TECH-5, SCOPE-6/7, FR-07/08/09, DEL-7/8, TC-2): a materially new technical and compliance scope, not an incremental tweak.
- **Commercial terms shifted against the vendor's cash flow** (COMM-3, COMM-7): payment schedule restructured to less upfront/final and more milestone-gated, plus a new 5% retention holdback.
- **New liquidated damages exposure** (COMM-6): 0.5%/week capped at 10%, where none existed before.
- **Schedule slipped roughly 4–6 months** across every post-award milestone (TIME-2 through TIME-6).
- **Submission mechanics changed** (SUB-1, SUB-2): new email address, and a signed hard copy is now required where none was before.
