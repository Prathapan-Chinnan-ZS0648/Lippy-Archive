---
document: SYNTH_VERS_DOCS_S2_REVISED.pdf
for-document: sha256:3e71f9d61b8bb53a59cb8785f2ef9883111afcfaca15f6ac65713aa4f30ebe21
verified-by: automated cross-check pass
verified-on: 2026-09-11
confidence: SURE
---

# SYNTH_VERS_DOCS_S2_REVISED.pdf

98 clauses across 16 numbered sections and 3 appendices, cut under the version-compare unit rule in `skills/version-compare.md`: one unit per clause of the source, id = section mnemonic + running number, table rows keyed by their own row id. The 5 clauses the source removed from Section 6 (`ONB-1` through `ONB-5`) are not source units — they are documented in `actuals/twin/derived/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf.md` and in `actuals/findings/`, since a removed clause has no counterpart to cut from the source. `actuals/findings/` is the authoritative one-file-per-unit set and is the one to count against (103 findings: 98 source units plus the 5 REMOVED units).

## Units

### 1. Introduction & Background · 3 units
- INTRO-1 | 3 | 1. Introduction & Background | fleet/employee scale: 55 branches, six states, 2,650 employees
- INTRO-2 | 3 | 1. Introduction & Background | the February 2026 Colonial Trust Bank acquisition and its 9 Maryland branches
- INTRO-3 | 3 | 1. Introduction & Background | Major Incident Response capability and Sev-1 outage rise as a driver for reissue

### 2. Definitions · 1 unit
- DEF-1 | 3 | 2. Definitions | ITSM, Helpdesk, SLA, TAM, FFIEC, MSA (carried over unchanged)

### 3. Project Objectives · 2 units
- OBJ-1 | 3 | 3. Project Objectives | TrackIT replacement, helpdesk support, resolution-time, self-service, FFIEC objectives
- OBJ-2 | 3 | 3. Project Objectives | Major Incident MTTR reduction objective

### 4. Scope of Work · 7 units
- SCOPE-1 | 3 | 4. Scope of Work | ITSM platform deployment across incident/request/problem/change management
- SCOPE-2 | 3 | 4. Scope of Work | helpdesk support for ~2,650 employees across 55 locations
- SCOPE-3 | 4 | 4. Scope of Work | ticket/CMDB migration including Colonial Trust's legacy system
- SCOPE-4 | 4 | 4. Scope of Work | self-service employee portal with knowledge base
- SCOPE-5 | 4 | 4. Scope of Work | Azure AD integration for authentication/asset mapping
- SCOPE-6 | 4 | 4. Scope of Work | formal Major Incident Management process
- SCOPE-7 | 4 | 4. Scope of Work | training for ~75 IT staff

### 5.1 ITSM Platform · 5 units
- TECH-1 | 5 | 5.1 ITSM Platform | ITIL v4 alignment
- TECH-2 | 5 | 5.1 ITSM Platform | CMDB with automated asset discovery
- TECH-3 | 5 | 5.1 ITSM Platform | self-service portal + mobile app
- TECH-4 | 5 | 5.1 ITSM Platform | configurable workflow automation
- TECH-5 | 5 | 5.1 ITSM Platform | Major Incident workflow templates, notification/paging

### 5.2 Helpdesk Operations · 3 units
- TECH-6 | 5 | 5.2 Helpdesk Operations | helpdesk coverage hours, business-hours to 24/7/365
- TECH-7 | 5 | 5.2 Helpdesk Operations | multichannel intake
- TECH-8 | 5 | 5.2 Helpdesk Operations | first-contact resolution target 70%

### 5.3 Hosting, Availability & Security · 6 units
- TECH-10 | 5 | 5.3 Hosting, Availability & Security | uptime SLA, 99.9%
- TECH-11 | 5 | 5.3 Hosting, Availability & Security | SSO via SAML 2.0
- TECH-12 | 5 | 5.3 Hosting, Availability & Security | encryption at rest/in transit
- TECH-13 | 5 | 5.3 Hosting, Availability & Security | data retention minimum, 5 years
- TECH-14 | 5 | 5.3 Hosting, Availability & Security | SOC 2 Type II certification requirement
- TECH-9 | 5 | 5.3 Hosting, Availability & Security | deployment model, cloud-only

### 5.4 System Integrations · 3 units
- TECH-15 | 5 | 5.4 System Integrations | SSO integration with Azure AD
- TECH-16 | 5 | 5.4 System Integrations | read-only export to FIS core banking platform
- TECH-17 | 5 | 5.4 System Integrations | integration with Colonial Trust legacy ticketing exports

### 5.5 Vendor Support Responsibilities · 2 units
- TECH-18 | 5 | 5.5 Vendor Support Responsibilities | Vendor Support Responsibilities rows 1-5, reformatted to a table
- TECH-19 | 5 | 5.5 Vendor Support Responsibilities | Major Incident Response row, new

### 6. [Reserved] · 1 unit
- RES-1 | 7 | 6. [Reserved] | Section 6 reservation notice; onboarding terms moved to the MSA

### 7. Functional Requirements Matrix · 8 units
- FR-01 | 7 | 7. Functional Requirements Matrix | self-service password reset with MFA — Mandatory
- FR-02 | 7 | 7. Functional Requirements Matrix | automated ticket routing — Mandatory
- FR-03 | 7 | 7. Functional Requirements Matrix | configurable SLA timers — Mandatory
- FR-04 | 7 | 7. Functional Requirements Matrix | CMDB automated asset discovery — Mandatory
- FR-05 | 7 | 7. Functional Requirements Matrix | satisfaction survey — Desired
- FR-06 | 7 | 7. Functional Requirements Matrix | native mobile app — Desired
- FR-07 | 7 | 7. Functional Requirements Matrix | Major Incident stakeholder notification/paging — Mandatory
- FR-08 | 7 | 7. Functional Requirements Matrix | post-incident review workflow — Mandatory

### 8. Eligibility Criteria · 5 units
- ELIG-1 | 8 | 8. Eligibility Criteria | minimum 7 years relevant experience
- ELIG-2 | 8 | 8. Eligibility Criteria | minimum annual revenue $12,000,000
- ELIG-3 | 8 | 8. Eligibility Criteria | at least 4 reference implementations, 1,500+ employees
- ELIG-4 | 8 | 8. Eligibility Criteria | prior experience operating a Major Incident Management process
- ELIG-5 | 8 | 8. Eligibility Criteria | minimum insurance coverage

### 9. Deliverables · 9 units
- DEL-1 | 8 | 9. Deliverables | Project Charter & Implementation Plan
- DEL-2 | 8 | 9. Deliverables | ITSM Platform System Design Document
- DEL-3 | 8 | 9. Deliverables | CMDB & Legacy Data Migration Completion Report, incl. Colonial Trust
- DEL-4 | 8 | 9. Deliverables | Self-Service Portal & Knowledge Base Launch
- DEL-5 | 8 | 9. Deliverables | Helpdesk Transition & Ramp-Up Plan
- DEL-6 | 8 | 9. Deliverables | Major Incident Management Runbook
- DEL-7 | 8 | 9. Deliverables | SOC 2 Type II Attestation Report
- DEL-8 | 8 | 9. Deliverables | Training Materials & Delivered Sessions, 75 IT staff
- DEL-9 | 8 | 9. Deliverables | Final Documentation Package

### 10. Project Timeline · 5 units
- TIME-1 | 8 | 10. Project Timeline | reissue, Q&A, submission, shortlist, presentations, award, kickoff dates
- TIME-2 | 9 | 10. Project Timeline | Helpdesk Transition Complete, November 2026
- TIME-3 | 9 | 10. Project Timeline | Major Incident Process Go-Live, December 2026
- TIME-4 | 9 | 10. Project Timeline | ITSM Platform Go-Live, January 2027
- TIME-5 | 9 | 10. Project Timeline | Full Project Completion, March 2027

### 11. Evaluation Criteria · 5 units
- EVAL-1 | 10 | 11. Evaluation Criteria | Technical Solution & Architecture, 25 points
- EVAL-2 | 10 | 11. Evaluation Criteria | Vendor Experience & References, 15 points
- EVAL-3 | 10 | 11. Evaluation Criteria | Implementation Timeline, 10 points
- EVAL-4 | 10 | 11. Evaluation Criteria | Cost, 25 points; Support & Maintenance Plan, 10 points
- EVAL-5 | 10 | 11. Evaluation Criteria | Major Incident Readiness, 15 points

### 12. Insurance Requirements · 1 unit
- INS-1 | 10 | 12. Insurance Requirements | Commercial General Liability, Professional Liability, Cyber Liability, additional-insured clause

### 13. Commercial Terms · 2 units
- COMM-1 | 10 | 13. Commercial Terms | estimated project budget, $3.6M–$4.7M
- COMM-2 | 10 | 13. Commercial Terms | contract term, 36 months with two 12-month renewals

### 13. Commercial Terms — Payment Schedule · 1 unit
- COMM-3 | 10 | 13. Commercial Terms — Payment Schedule | payment schedule, five milestones

### 13. Commercial Terms — Other Terms · 3 units
- COMM-4 | 10 | 13. Commercial Terms — Other Terms | warranty period, 24 months
- COMM-5 | 10 | 13. Commercial Terms — Other Terms | payment terms, Net 30
- COMM-6 | 10 | 13. Commercial Terms — Other Terms | liquidated damages, 0.5%/week capped at 10%

### 13.3 Service Level Credit Schedule · 3 units
- SLC-1 | 11 | 13.3 Service Level Credit Schedule | ticket first-response time credit
- SLC-2 | 11 | 13.3 Service Level Credit Schedule | Severity 1 resolution time credit
- SLC-3 | 11 | 13.3 Service Level Credit Schedule | platform uptime credit

### 14. Submission Instructions · 3 units
- SUB-1 | 11 | 14. Submission Instructions | submission address, proposals@ashfordfg.com
- SUB-2 | 11 | 14. Submission Instructions | proposal validity, 150 days
- SUB-3 | 11 | 14. Submission Instructions | sealed hard copy not required

### 15. Terms & Conditions · 2 units
- TC-1 | 11 | 15. Terms & Conditions | governing law, confidentiality, reservation of rights, intellectual property
- TC-2 | 11 | 15. Terms & Conditions | Major Incident reporting obligation, CISO notification + post-incident report

### 16. Contact Information · 2 units
- CONTACT-1 | 11 | 16. Contact Information | issuing officer, Renee Castillo
- CONTACT-2 | 11 | 16. Contact Information | email and phone

### Appendix A: Pricing Form · 8 units
- APPA-1 | 12 | Appendix A: Pricing Form | A-1 ITSM Platform Licensing, 2,650 users
- APPA-2 | 12 | Appendix A: Pricing Form | A-3 Managed Helpdesk Services, 24/7/365
- APPA-3 | 12 | Appendix A: Pricing Form | A-4 Legacy Data & CMDB Migration Services, incl. Colonial Trust
- APPA-4 | 12 | Appendix A: Pricing Form | A-6 Major Incident Management Program Setup
- APPA-5 | 12 | Appendix A: Pricing Form | A-7 SOC 2 Type II Audit & Attestation Costs
- APPA-6 | 12 | Appendix A: Pricing Form | A-8 Training, 75 IT Staff
- APPA-7 | 12 | Appendix A: Pricing Form | A-9 Total Proposed Price
- APPA-8 | 12 | Appendix A: Pricing Form | A-2, A-5 implementation and portal setup lines

### Appendix B: Reference Form · 2 units
- APPB-1 | 12 | Appendix B: Reference Form | at least 4 references
- APPB-2 | 12 | Appendix B: Reference Form | remaining reference form fields

### Appendix C: Compliance Certification Checklist · 6 units
- APPC-1 | 12 | Appendix C: Compliance Certification Checklist | minimum 7 years relevant experience
- APPC-2 | 12 | Appendix C: Compliance Certification Checklist | revenue threshold, insurance coverage rows
- APPC-3 | 12 | Appendix C: Compliance Certification Checklist | WMS/SSO via SAML 2.0 row
- APPC-4 | 12 | Appendix C: Compliance Certification Checklist | helpdesk model meets 24/7/365 coverage requirement
- APPC-5 | 12 | Appendix C: Compliance Certification Checklist | hosting environment SOC 2 Type II certified
- APPC-6 | 12 | Appendix C: Compliance Certification Checklist | Major Incident Management Runbook submitted
