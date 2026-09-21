# Derived — SYNTH_VERS_DOCS_S1_ORIGINAL.pdf

A read-through concatenation of this document's twin pages, in order, for reading convenience. The twin pages (`actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL/page-###.md`) remain the source of truth; this file is derived from them and is regenerated whenever a twin page changes.

## Page 1

BRIGHTLINE RETAIL GROUP
Supply Chain Procurement & Vendor Management

ORIGINAL ISSUE


REQUEST FOR PROPOSAL
Warehouse Management System (WMS) & Fleet Telematics Modernization Program
A multi-year supply chain technology modernization initiative


 RFP Number                           RFP-BRG-2026-0231

 Issue Date                           March 9, 2026

 Proposal Submission Deadline         April 17, 2026, 4:00 PM CST

 Issuing Organization                 Brightline Retail Group (BRG)

 Category                             Supply Chain Technology — WMS & Fleet Telematics Systems

 Estimated Contract Value             See Section 12 — Commercial Terms


## Page 2

Table of Contents
1. Introduction & Background....................................................................................................................... 3
2. Definitions................................................................................................................................................. 3
3. Project Objectives..................................................................................................................................... 4
4. Scope of Work........................................................................................................................................... 4
5. Technical Requirements............................................................................................................................ 5
6. Functional Requirements Matrix...............................................................................................................6
7. Eligibility Criteria....................................................................................................................................... 6
8. Deliverables............................................................................................................................................... 7
9. Project Timeline........................................................................................................................................ 7
10. Evaluation Criteria................................................................................................................................... 8
11. Insurance & Bonding Requirements.......................................................................................................8
12. Commercial Terms.................................................................................................................................. 9
13. Submission Instructions.......................................................................................................................... 9
14. Terms & Conditions............................................................................................................................... 10
15. Contact Information.............................................................................................................................. 10
Appendix A Pricing Form............................................................................................................................ 11
Appendix B Reference Form....................................................................................................................... 11
Appendix C Compliance Certification Checklist..........................................................................................12


## Page 3

1. Introduction & Background

Brightline Retail Group (“BRG” or “the Company”) is a national retail chain operating 9 regional distribution centers
and a private delivery fleet of 640 trucks across 22 states, supplying 1,150 retail stores. BRG's current Warehouse
Management System (WMS) was implemented in 2013 and no longer supports the throughput, integration, and
reporting needs of the Company's growing store network.
In parallel, BRG's delivery fleet currently relies on a basic GPS tracking add-on with limited real-time visibility, route
optimization, or driver performance reporting capability.
BRG is issuing this Request for Proposal (RFP) to solicit qualified vendors to replace its legacy WMS and implement a
modern fleet telematics platform across its distribution and transportation network.


2. Definitions

 Term                          Definition

 WMS                           Warehouse Management System — software used to manage inventory, receiving,
                               put-away, picking, and shipping within a distribution center.

 ERP                           Enterprise Resource Planning — BRG's existing SAP S/4HANA system of record for
                               finance, procurement, and inventory accounting.

 Telematics                    Technology used to remotely track and monitor vehicle location, performance, and
                               driver behavior.

 RFID                          Radio-Frequency Identification — tagging technology used for automated
                               inventory tracking.

 DC                            Distribution Center — a BRG regional warehouse facility.

 SLA                           Service Level Agreement — a contractually defined performance commitment.


3. Project Objectives

   • Replace the legacy WMS across all 9 distribution centers with a modern, cloud-capable platform.
   • Implement a fleet telematics platform providing real-time location, route, and driver behavior visibility across
        the delivery fleet.
   • Integrate the WMS with BRG's existing SAP S/4HANA ERP for inventory and financial accuracy.
   • Reduce order picking errors by at least 30% within 12 months of full deployment.
   • Improve on-time delivery performance to retail stores to 98% or higher.
   • Equip warehouse staff with modern handheld scanning tools to replace aging RF terminals.


4. Scope of Work

   1. Design, configure, and deploy a replacement WMS across 9 distribution centers, supporting receiving, put-
        away, picking, packing, and shipping workflows.
   2. Implement a fleet telematics platform covering approximately 640 delivery trucks, including GPS tracking, route
        optimization, and driver behavior scoring.
   3. Integrate the WMS with BRG's existing SAP S/4HANA ERP system for real-time inventory and order
        synchronization.


## Page 4

4. Migrate historical inventory, location, and SKU master data from the legacy WMS to the new platform.
5. Deploy a handheld scanning application for warehouse staff, compatible with BRG's existing Zebra device fleet.
6. Provide operator and administrator training for approximately 900 warehouse and transportation staff.
7. Provide 18 months of post-implementation technical support and system maintenance following final go-live.


## Page 5

5. Technical Requirements

5.1 Warehouse Management System (WMS)
   • Support for barcode and RFID-based inventory tracking.
   • Configurable slotting optimization and wave-picking logic.
   • Real-time inventory visibility across all 9 distribution centers from a single console.
   • Support for cross-docking and case-level and each-level (piece) picking.

5.2 Fleet Telematics
   • Real-time GPS vehicle location tracking with a maximum 60-second refresh interval.
   • Automated route optimization based on delivery windows and store priority.
   • Driver behavior scoring (harsh braking, speeding, idling).

5.3 Hosting, Availability & Security
   • Deployment model: cloud-hosted or on-premise — vendor may propose either model with technical and cost
      justification.
   • System uptime service level agreement (SLA) of 99.5% or higher for hosted WMS and telematics components,
      measured monthly.
   • Single sign-on (SSO) support via SAML 2.0, integrated with BRG's existing Active Directory.
   • Encryption at rest (AES-256 or equivalent) and in transit (TLS 1.2 or higher).
   • Operational and transaction data retention of a minimum of 3 years.

5.4 System Integrations
   • API-based, near-real-time integration with BRG's existing SAP S/4HANA ERP system for inventory, order, and
      shipment data.
   • Integration with BRG's existing Zebra handheld device fleet for warehouse scanning.


6. Functional Requirements Matrix

Vendors must indicate compliance with each functional requirement in their proposal response using the codes: F
(Fully Compliant), P (Partially Compliant — explain), C (Customization Required), N (Not Supported).

 ID               Requirement                                                                  Priority

 FR-01            Real-time inventory dashboard across all distribution centers                Mandatory

 FR-02            Automated wave-picking optimization                                          Mandatory

 FR-03            Handheld scanner offline mode with sync-on-reconnect                         Mandatory

 FR-04            Driver behavior scoring dashboard                                            Desired

 FR-05            Configurable KPI reporting for on-time delivery                              Mandatory

 FR-06            Role-based dashboard customization                                           Desired


## Page 6

7. Eligibility Criteria

To be eligible for consideration, vendors must meet all of the following minimum criteria:
     • Minimum of 6 years of experience implementing WMS and/or fleet telematics systems for multi-site retail or
        distribution operations.
     • Minimum annual revenue of $10,000,000 (audited financials for the most recent fiscal year required).
     • At least 3 reference implementations for distribution networks operating facilities of 500,000+ square feet,
        completed within the past 5 years.
     • Minimum insurance coverage: $3,000,000 general liability; $1,000,000 professional liability/E&O.
     • Performance bond equal to 50% of the awarded contract value.


8. Deliverables

 #         Deliverable                                                         Due

 1         Project Charter & Implementation Plan                               30 days after contract award

 2         WMS & Telematics System Design Document                             60 days after contract award

 3         SAP ERP Integration Design & Test Report                            100 days after contract award

 4         WMS Phase 1 Deployment — 3 Pilot Distribution Centers               Per Phase 1 milestone

 5         Legacy Data Migration Completion Report                             Prior to Phase 2 go-live

 6         Fleet Telematics Full Rollout (640 Trucks)                          Per telematics milestone

 7         Training Materials & Delivered Sessions (900 staff)                 Prior to each go-live

 8         Final Documentation Package                                         Project close-out


9. Project Timeline

 Milestone                                                             Date

 RFP Issue Date                                                        March 9, 2026

 Vendor Q&A Deadline                                                   March 23, 2026

 Proposal Submission Deadline                                          April 17, 2026

 Shortlist Notification                                                May 1, 2026

 Vendor Presentations                                                  May 11 – 15, 2026

 Contract Award                                                        May 29, 2026

 Project Kickoff                                                       June 15, 2026

 WMS Phase 1 Go-Live (3 Pilot DCs)                                     December 2026

 Fleet Telematics Full Rollout                                         March 2027

 WMS Full Rollout (Remaining DCs)                                      July 2027

 Full Project Completion                                               September 2027


## Page 7



## Page 8

10. Evaluation Criteria

Proposals will be scored on a 100-point scale as follows:

 Criterion                                                                      Weight

 Technical Solution & Architecture                                              30 points

 Vendor Experience & References                                                 20 points

 Implementation Timeline                                                        15 points

 Cost                                                                           25 points

 Support & Maintenance Plan                                                     10 points


11. Insurance & Bonding Requirements

   • Commercial General Liability: $3,000,000 per occurrence.
   • Professional Liability / Errors & Omissions: $1,000,000 per claim.
   • Performance Bond: 50% of total contract value, issued by a surety rated A- or better by A.M. Best.
   • BRG and its officers, agents, and employees must be named as additional insureds on all policies except
        professional liability.


12. Commercial Terms

Estimated Project Budget: $4,500,000 – $6,000,000
Contract Term: 24 months, with one (1) optional 12-month renewal.

Payment Schedule
   • 20% upon contract signing
   • 30% upon WMS Phase 1 go-live
   • 30% upon fleet telematics full rollout
   • 20% upon final acceptance

Other Commercial Terms
   • Warranty period: 12 months following final go-live, covering defect remediation at no additional cost.
   • Payment terms: Net 45 from invoice date.
   • No liquidated damages clause applies to this engagement.


13. Submission Instructions

Proposals must be submitted electronically in PDF format to procurement@brightlineretail.com no later than the
deadline listed above. Proposals must remain valid for 120 days from the submission deadline. A sealed hard copy is
not required. Late submissions will not be considered.


## Page 9

14. Terms & Conditions

14.1 Governing Law
This RFP and any resulting contract shall be governed by the laws of the State of Texas.

14.2 Confidentiality
All proposal materials submitted become the property of BRG and will be treated as confidential business
information, subject to standard non-disclosure obligations between the parties.

14.3 Reservation of Rights
BRG reserves the right to reject any or all proposals, waive minor irregularities, and negotiate final contract terms
with the selected vendor.

14.4 Intellectual Property
All custom configurations, integrations, and documentation developed specifically for BRG under this engagement
shall become the property of BRG upon final payment. Vendor retains ownership of pre-existing, generally licensed
software.


15. Contact Information

 Issuing Officer                       Thomas Ridley

 Title                                 Procurement Manager, Supply Chain Technology

 Email                                 tridley@brightlineretail.com

 Phone                                 (214) 555-0179


## Page 10

Appendix A: Pricing Form

Vendors must complete the following pricing form in full. Unit prices must be all-inclusive of labor, materials, travel,
and overhead unless otherwise noted.

 Line Item         Description                                                              Price

 A-1               WMS Licensing (9 Distribution Centers)                                   $______

 A-2               WMS Implementation & Configuration Services                              $______

 A-3               Fleet Telematics Hardware & Licensing (640 Trucks)                       $______

 A-4               SAP ERP Integration Services                                             $______

 A-5               Legacy Data Migration Services                                           $______

 A-6               Handheld Scanner Application Licensing & Deployment                      $______

 A-7               Training (900 Staff)                                                     $______

 A-8               18 Months Post-Implementation Support                                    $______

 A-9               Total Proposed Price                                                     $______


Appendix B: Reference Form

Provide at least 3 references meeting the eligibility criteria in Section 7. Duplicate this table as needed.

 Field                                    Response

 Client Organization

 Contact Name & Title

 Phone / Email

 Project Scope Summary

 Facility Size / Fleet Size

 Contract Value

 Completion Date


Appendix C: Compliance Certification Checklist

 Requirement                                                                                Certified (Y/N)

 Vendor meets minimum 6 years relevant experience

 Vendor meets minimum annual revenue threshold

 Vendor holds required insurance coverage

 Vendor can provide performance bond as specified

 Proposed WMS supports RFID and barcode tracking


## Page 11


Proposed telematics platform supports 60-second GPS refresh

