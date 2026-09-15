---
document: SYNTH_VERS_DOCS_S1_REVISED.pdf
for-document: sha256:8a8bd85ca1f4bd20c8fb8ab36a40b3c1180f03cc76d25f9476b44e82f61a1b6b
verified-by: automated cross-check pass
verified-on: 2026-09-11
confidence: SURE
---
# SYNTH_VERS_DOCS_S1_REVISED.pdf

106 clauses across 15 numbered sections and 3 appendices, cut under the version-compare unit rule in `skills/version-compare.md`: one unit per clause of the source, id = section mnemonic + running number, table rows keyed by their own row id. This list groups a handful of narrow, same-verdict bullets onto one line for readability (e.g. the unchanged 5.1 WMS bullets under TECH-2); `actuals/findings/` is the authoritative one-file-per-unit set and is the one to count against.

## Units

### 1. Introduction & Background · 3 units
- INTRO-1 | 3 | 1. Introduction & Background | fleet and network scale: 11 distribution centers, 780 trucks, 1,400 retail stores
- INTRO-2 | 3 | 1. Introduction & Background | the March 2026 Meridian Grocers acquisition and its two refrigerated DCs
- INTRO-3 | 3 | 1. Introduction & Background | cold chain monitoring and food-safety compliance as a driver for reissue

### 2. Definitions · 3 units
- DEF-1 | 3 | 2. Definitions | Cold Chain (new term)
- DEF-2 | 3 | 2. Definitions | FSMA (new term)
- DEF-3 | 3 | 2. Definitions | WMS, ERP, Telematics, RFID, DC, SLA (carried over unchanged)

### 3. Project Objectives · 3 units
- OBJ-1 | 3 | 3. Project Objectives | replace legacy WMS across 11 distribution centers
- OBJ-2 | 3 | 3. Project Objectives | fleet telematics, ERP integration, picking-error, on-time delivery, handheld scanning objectives
- OBJ-3 | 4 | 3. Project Objectives | cold chain temperature monitoring objective, tied to FSMA compliance

### 4. Scope of Work · 9 units
- SCOPE-1 | 4 | 4. Scope of Work | WMS deployment across 11 DCs including the two Meridian refrigerated facilities
- SCOPE-2 | 4 | 4. Scope of Work | fleet telematics platform covering ~780 trucks
- SCOPE-3 | 4 | 4. Scope of Work | SAP S/4HANA ERP integration
- SCOPE-4 | 4 | 4. Scope of Work | data migration including the Meridian Grocers legacy inventory system
- SCOPE-5 | 4 | 4. Scope of Work | handheld scanning application, Zebra-compatible
- SCOPE-6 | 4 | 4. Scope of Work | IoT-based cold chain temperature/humidity monitoring with excursion alerting
- SCOPE-7 | 4 | 4. Scope of Work | FSMA-compliant traceability and temperature-log reporting
- SCOPE-8 | 4 | 4. Scope of Work | training for ~1,150 staff including cold chain handling procedures
- SCOPE-9 | 4 | 4. Scope of Work | 24 months post-implementation support

### 5. Technical Requirements · 13 units
- TECH-1 | 5 | 5.1 WMS | lot- and expiration-date tracking for perishable SKUs
- TECH-2 | 5 | 5.1 WMS | barcode/RFID tracking, slotting/wave-picking, real-time visibility, cross-docking, piece picking
- TECH-3 | 5 | 5.2 Fleet Telematics | GPS refresh interval, maximum 30 seconds
- TECH-4 | 5 | 5.2 Fleet Telematics | route optimization and driver behavior scoring
- TECH-5 | 5 | 5.3 Cold Chain Monitoring | IoT sensor-based monitoring, alerting, digital timestamped logs for FSMA
- TECH-6 | 5–6 | 5.4 Hosting, Availability & Security | deployment model: cloud-hosted only, AWS or GCP
- TECH-7 | 5–6 | 5.4 Hosting, Availability & Security | uptime SLA 99.9% or higher, covering cold chain components
- TECH-8 | 5–6 | 5.4 Hosting, Availability & Security | redundant hosting across two regions/availability zones
- TECH-9 | 5–6 | 5.4 Hosting, Availability & Security | SSO via SAML 2.0 or OIDC
- TECH-10 | 5–6 | 5.4 Hosting, Availability & Security | encryption at rest and in transit
- TECH-11 | 5–6 | 5.4 Hosting, Availability & Security | data retention minimum 5 years, including cold chain logs
- TECH-12 | 5 | 5.5 System Integrations | SAP S/4HANA and Zebra handheld integration
- TECH-13 | 5 | 5.5 System Integrations | integration with the Meridian Grocers legacy inventory system

### 6. Functional Requirements Matrix · 9 units
- FR-01 | 6–7 | 6. Functional Requirements Matrix | real-time inventory dashboard across all DCs — Mandatory
- FR-02 | 6–7 | 6. Functional Requirements Matrix | automated wave-picking optimization — Mandatory
- FR-03 | 6–7 | 6. Functional Requirements Matrix | handheld scanner offline mode with sync-on-reconnect — Mandatory
- FR-04 | 6–7 | 6. Functional Requirements Matrix | driver behavior scoring dashboard — Mandatory
- FR-05 | 6–7 | 6. Functional Requirements Matrix | configurable KPI reporting for on-time delivery — Mandatory
- FR-06 | 6–7 | 6. Functional Requirements Matrix | role-based dashboard customization — Desired
- FR-07 | 6–7 | 6. Functional Requirements Matrix | real-time cold chain temperature excursion alerting — Mandatory
- FR-08 | 6–7 | 6. Functional Requirements Matrix | FSMA-compliant traceability report generation — Mandatory
- FR-09 | 6–7 | 6. Functional Requirements Matrix | lot- and expiration-date tracking for perishable SKUs — Mandatory

### 7. Eligibility Criteria · 6 units
- ELIG-1 | 7 | 7. Eligibility Criteria | minimum 8 years relevant experience
- ELIG-2 | 7 | 7. Eligibility Criteria | minimum annual revenue $18,000,000
- ELIG-3 | 7 | 7. Eligibility Criteria | at least 5 reference implementations, 2 including cold chain/refrigerated logistics
- ELIG-4 | 7 | 7. Eligibility Criteria | prior experience with FSMA-compliant food traceability systems
- ELIG-5 | 7 | 7. Eligibility Criteria | minimum insurance: $6M general liability, $2M professional liability/E&O, $3M cyber liability
- ELIG-6 | 7 | 7. Eligibility Criteria | performance bond, 75% of awarded contract value

### 8. Deliverables · 11 units
- DEL-1 | 7 | 8. Deliverables | Project Charter & Implementation Plan
- DEL-2 | 7 | 8. Deliverables | WMS, Telematics & Cold Chain System Design Document
- DEL-3 | 7 | 8. Deliverables | SAP ERP Integration Design & Test Report
- DEL-4 | 7 | 8. Deliverables | WMS Phase 1 Deployment — 3 Pilot Distribution Centers
- DEL-5 | 7 | 8. Deliverables | Legacy Data Migration Completion Report, incl. Meridian Grocers
- DEL-6 | 7 | 8. Deliverables | Fleet Telematics Full Rollout, 780 trucks
- DEL-7 | 7 | 8. Deliverables | Cold Chain Monitoring Rollout — Refrigerated DCs & Trucks
- DEL-8 | 7 | 8. Deliverables | FSMA Traceability & Compliance Report
- DEL-9 | 7 | 8. Deliverables | Training Materials & Delivered Sessions, 1,150 staff
- DEL-10 | 7 | 8. Deliverables | WMS Full Rollout — Remaining Distribution Centers
- DEL-11 | 7 | 8. Deliverables | Final Documentation Package

### 9. Project Timeline · 6 units
- TIME-1 | 7 | 9. Project Timeline | reissue, Q&A, submission, shortlist, presentations, award, kickoff dates
- TIME-2 | 8 | 9. Project Timeline | WMS Phase 1 Go-Live, April 2027
- TIME-3 | 8 | 9. Project Timeline | Cold Chain Monitoring Go-Live, July 2027
- TIME-4 | 8 | 9. Project Timeline | Fleet Telematics Full Rollout, September 2027
- TIME-5 | 8 | 9. Project Timeline | WMS Full Rollout, January 2028
- TIME-6 | 8 | 9. Project Timeline | Full Project Completion, March 2028

### 10. Evaluation Criteria · 6 units
- EVAL-1 | 9 | 10. Evaluation Criteria | Technical Solution & Architecture, 25 points
- EVAL-2 | 9 | 10. Evaluation Criteria | Vendor Experience & References, 15 points
- EVAL-3 | 9 | 10. Evaluation Criteria | Implementation Timeline, 10 points
- EVAL-4 | 9 | 10. Evaluation Criteria | Cost, 25 points; Support & Maintenance Plan, 10 points
- EVAL-5 | 9 | 10. Evaluation Criteria | Food Safety & Cold Chain Compliance, 10 points
- EVAL-6 | 9 | 10. Evaluation Criteria | Cybersecurity Approach, 5 points

### 11. Insurance & Bonding Requirements · 5 units
- INS-1 | 9 | 11. Insurance & Bonding Requirements | Commercial General Liability, $6,000,000 per occurrence
- INS-2 | 9 | 11. Insurance & Bonding Requirements | Professional Liability/E&O, $2,000,000 per claim
- INS-3 | 9 | 11. Insurance & Bonding Requirements | Cyber Liability, $3,000,000 per occurrence
- INS-4 | 9 | 11. Insurance & Bonding Requirements | Performance Bond, 75% of total contract value
- INS-5 | 9 | 11. Insurance & Bonding Requirements | additional-insured requirement

### 12. Commercial Terms · 7 units
- COMM-1 | 9 | 12. Commercial Terms | estimated project budget, $7.0M–$9.5M
- COMM-2 | 9 | 12. Commercial Terms | contract term, 36 months with two 12-month renewals
- COMM-3 | 9–10 | 12. Commercial Terms | payment schedule, six milestones
- COMM-4 | 9 | 12. Commercial Terms | warranty period, 24 months
- COMM-5 | 9 | 12. Commercial Terms | payment terms, Net 30
- COMM-6 | 9 | 12. Commercial Terms | liquidated damages, 0.5%/week capped at 10%
- COMM-7 | 10 | 12. Commercial Terms | retention holdback, 5% per milestone

### 13. Submission Instructions · 3 units
- SUB-1 | 10 | 13. Submission Instructions | submission address, proposals@brightlineretail.com
- SUB-2 | 10 | 13. Submission Instructions | signed hard copy required
- SUB-3 | 10 | 13. Submission Instructions | proposal validity, 150 days

### 14. Terms & Conditions · 2 units
- TC-1 | 10 | 14.1–14.4 | governing law, confidentiality, reservation of rights, intellectual property
- TC-2 | 10 | 14.5 Food Safety Compliance | written FSMA certification requirement

### 15. Contact Information · 2 units
- CONTACT-1 | 10 | 15. Contact Information | issuing officer, Alicia Fenwick
- CONTACT-2 | 10 | 15. Contact Information | email and phone

### Appendix A: Pricing Form · 9 units
- APPA-1 | 11 | Appendix A | A-1 WMS Licensing, 11 Distribution Centers
- APPA-2 | 11 | Appendix A | A-3 Fleet Telematics Hardware & Licensing, 780 Trucks
- APPA-3 | 11 | Appendix A | A-5 Legacy Data Migration Services, incl. Meridian Grocers
- APPA-4 | 11 | Appendix A | A-7 Cold Chain IoT Sensors & Monitoring Platform
- APPA-5 | 11 | Appendix A | A-8 FSMA Traceability & Reporting Module
- APPA-6 | 11 | Appendix A | A-9 Training, 1,150 Staff
- APPA-7 | 11 | Appendix A | A-10 24 Months Post-Implementation Support
- APPA-8 | 11 | Appendix A | A-11 Total Proposed Price
- APPA-9 | 11 | Appendix A | A-2, A-4, A-6 implementation, ERP integration and handheld licensing lines

### Appendix B: Reference Form · 3 units
- APPB-1 | 11 | Appendix B | at least 5 references, 2 including cold chain/refrigerated logistics
- APPB-2 | 11 | Appendix B | "Included Cold Chain Monitoring?" field
- APPB-3 | 11 | Appendix B | remaining reference form fields

### Appendix C: Compliance Certification Checklist · 6 units
- APPC-1 | 11 | Appendix C | minimum 8 years relevant experience
- APPC-2 | 11–12 | Appendix C | revenue threshold, insurance coverage, performance bond rows
- APPC-3 | 11 | Appendix C | WMS supports lot/expiration-date tracking
- APPC-4 | 11 | Appendix C | telematics platform supports 30-second GPS refresh
- APPC-5 | 11 | Appendix C | FSMA-compliant traceability reporting
- APPC-6 | 11 | Appendix C | cloud-only hosting with multi-region redundancy
