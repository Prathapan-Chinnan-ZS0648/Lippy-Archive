# Derived — SYNTH_VERS_DOCS_S1_REVISED.pdf

The twin pages (`actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED/page-###.md`) remain the source of truth; this file is derived from them and is regenerated whenever a twin page changes.

## Page 1


REVISED ISSUE – SUPERSEDES RFP-BRG-2026-0231


Warehouse Management System (WMS), Fleet Telematics & Cold Chain Monitoring
Program
A multi-year supply chain and food-safety technology modernization initiative


 RFP Number                           RFP-BRG-2026-0231-R1

 Issue Date                           June 2, 2026

 Proposal Submission Deadline         July 14, 2026, 4:00 PM CST


 Category                             Supply Chain Technology — WMS, Fleet Telematics & Cold Chain
                                      Systems



## Page 2

Table of Contents
1. Introduction & Background....................................................................................................................... 3
2. Definitions................................................................................................................................................. 3
3. Project Objectives..................................................................................................................................... 4
4. Scope of Work........................................................................................................................................... 4
5. Technical Requirements............................................................................................................................ 5
6. Functional Requirements Matrix...............................................................................................................7
7. Eligibility Criteria....................................................................................................................................... 7
8. Deliverables............................................................................................................................................... 8
9. Project Timeline........................................................................................................................................ 8
10. Evaluation Criteria................................................................................................................................... 9
11. Insurance & Bonding Requirements.......................................................................................................9
12. Commercial Terms................................................................................................................................ 10
13. Submission Instructions........................................................................................................................ 11
14. Terms & Conditions............................................................................................................................... 11
15. Contact Information.............................................................................................................................. 12
12
13
Appendix C Compliance Certification Checklist..........................................................................................13


## Page 3

1. Introduction & Background

Brightline Retail Group (“BRG” or “the Company”) is a national retail chain operating 11 regional distribution centers
and a private delivery fleet of 780 trucks across 22 states, supplying 1,400 retail stores, following the March 2026
acquisition of Meridian Grocers' logistics network, which added two refrigerated distribution centers and expanded
BRG's presence into the grocery and perishables category for the first time.
BRG's current Warehouse Management System (WMS) was implemented in 2013 and no longer supports the
throughput, integration, and reporting needs of the Company's growing store network. In parallel, BRG's delivery fleet
currently relies on a basic GPS tracking add-on with limited real-time visibility, route optimization, or driver
performance reporting capability. Following the Meridian Grocers acquisition, BRG must also establish temperature-
controlled (“cold chain”) monitoring across its newly acquired refrigerated facilities and trucks to maintain food safety
compliance.
BRG is reissuing this Request for Proposal (RFP) to solicit qualified vendors to replace its legacy WMS, implement a
modern fleet telematics platform, and deploy cold chain temperature monitoring across its distribution and
transportation network.


2. Definitions

 Term                         Definition



                              driver behavior.

                              inventory tracking.


 Cold Chain                   The temperature-controlled supply chain used to preserve perishable goods from
                              storage through delivery. [NEW]

 FSMA                         Food Safety Modernization Act — U.S. federal law governing food safety and
                              traceability requirements. [NEW]



3. Project Objectives

   • Replace the legacy WMS across all 11 distribution centers with a modern, cloud-capable platform.
        the delivery fleet.


## Page 4

  • Establish continuous cold chain temperature monitoring across refrigerated distribution centers and delivery
     trucks to protect perishable inventory and support FSMA compliance. [NEW]


4. Scope of Work

  1. Design, configure, and deploy a replacement WMS across 11 distribution centers, including the two newly
     acquired Meridian Grocers refrigerated facilities, supporting receiving, put-away, picking, packing, and shipping
     workflows.
  2. Implement a fleet telematics platform covering approximately 780 delivery trucks, including GPS tracking, route
  3. Integrate the WMS with BRG's existing SAP S/4HANA ERP system for real-time inventory and order
     synchronization.
  4. Migrate historical inventory, location, and SKU master data from the legacy WMS and from the Meridian
     Grocers legacy inventory system to the new platform.
  5. Deploy a handheld scanning application for warehouse staff, compatible with BRG's existing Zebra device fleet.
  6. Deploy IoT-based cold chain temperature and humidity monitoring across refrigerated storage areas and
     refrigerated delivery trucks, with real-time alerting for excursions. [NEW]
  7. Implement automated FSMA-compliant traceability and temperature-log reporting for all perishable goods
     movements. [NEW]
  8. Provide operator and administrator training for approximately 1,150 warehouse and transportation staff,
     including cold chain handling procedures.
  9. Provide 24 months of post-implementation technical support and system maintenance following final go-live.


## Page 5

5. Technical Requirements

   • Real-time inventory visibility across all 11 distribution centers from a single console.
   • Support for lot- and expiration-date tracking for perishable SKUs. [NEW]

   • Real-time GPS vehicle location tracking with a maximum 30-second refresh interval. [MODIFIED]

5.3 Cold Chain Monitoring [NEW SECTION]
   • Continuous IoT sensor-based temperature and humidity monitoring in refrigerated storage zones and
      refrigerated trailers.
   • Automated real-time alerting to designated staff when temperature excursions exceed configurable thresholds.
   • Digital, timestamped temperature logs retained and exportable for regulatory inspection, consistent with FSMA
      recordkeeping requirements.

5.4 Hosting, Availability & Security
   • Deployment model: cloud-hosted only, using AWS or Google Cloud Platform. On-premise deployment will not
      be considered. [MODIFIED — REMOVES ON-PREM OPTION]
   • System uptime service level agreement (SLA) of 99.9% or higher for hosted WMS, telematics, and cold chain
      monitoring components, measured monthly. [MODIFIED]
   • Redundant hosting across two geographically separated regions or availability zones. [NEW]
   • Single sign-on (SSO) support via SAML 2.0 or OpenID Connect (OIDC), integrated with BRG's existing Active
      Directory. [MODIFIED]
   • Operational and transaction data retention of a minimum of 5 years, including cold chain temperature logs.
      [MODIFIED]

5.5 System Integrations
      shipment data.
   • Integration with the Meridian Grocers legacy inventory system pending full data migration. [NEW]


6. Functional Requirements Matrix



## Page 6





FR-04   Driver behavior scoring dashboard                               Mandatory



FR-07   Real-time cold chain temperature excursion alerting             Mandatory

FR-08   FSMA-compliant traceability report generation                   Mandatory

FR-09   Lot- and expiration-date tracking for perishable SKUs           Mandatory


## Page 7

7. Eligibility Criteria

     • Minimum of 8 years of experience implementing WMS and/or fleet telematics systems for multi-site retail or
        [MODIFIED]
     • Minimum annual revenue of $18,000,000 (audited financials for the most recent fiscal year required).
        [MODIFIED]
     • At least 5 reference implementations for distribution networks operating facilities of 500,000+ square feet,
        completed within the past 5 years, of which at least 2 must include refrigerated/cold chain logistics.
        [MODIFIED]
     • Vendor must demonstrate prior experience with FSMA-compliant food traceability systems. [NEW]
     • Minimum insurance coverage: $6,000,000 general liability; $2,000,000 professional liability/E&O; $3,000,000
        cyber liability. [MODIFIED]
     • Performance bond equal to 75% of the awarded contract value. [MODIFIED]


8. Deliverables

 #         Deliverable                                                           Due


 2         WMS, Telematics & Cold Chain System Design Document                   60 days after contract award



 5         Legacy Data Migration Completion Report (incl. Meridian Grocers)      Prior to Phase 2 go-live

 6         Fleet Telematics Full Rollout (780 Trucks)                            Per telematics milestone

 7         Cold Chain Monitoring Rollout — Refrigerated DCs & Trucks [NEW]       Per cold chain milestone

 8         FSMA Traceability & Compliance Report [NEW]                           Prior to final acceptance

 9         Training Materials & Delivered Sessions (1,150 staff)                 Prior to each go-live

 10        WMS Full Rollout — Remaining Distribution Centers                     Per final WMS milestone

 11        Final Documentation Package                                           Project close-out


9. Project Timeline

 Milestone                                                               Date

 RFP Reissue Date                                                        June 2, 2026

 Vendor Q&A Deadline                                                     June 16, 2026

 Proposal Submission Deadline                                            July 14, 2026

 Shortlist Notification                                                  July 28, 2026

 Vendor Presentations                                                    August 4 – 8, 2026


## Page 8

Milestone                             Date

Contract Award                        August 21, 2026

Project Kickoff                       September 8, 2026

WMS Phase 1 Go-Live (3 Pilot DCs)     April 2027

Cold Chain Monitoring Go-Live [NEW]   July 2027

Fleet Telematics Full Rollout         September 2027

WMS Full Rollout (Remaining DCs)      January 2028

Full Project Completion               March 2028


## Page 9

10. Evaluation Criteria


 Criterion                                                                      Weight

 Technical Solution & Architecture                                              25 points

 Vendor Experience & References                                                 15 points

 Implementation Timeline                                                        10 points

 Cost                                                                           25 points


 Food Safety & Cold Chain Compliance [NEW]                                      10 points

 Cybersecurity Approach [NEW]                                                   5 points


11. Insurance & Bonding Requirements

   • Commercial General Liability: $6,000,000 per occurrence. [MODIFIED]
   • Professional Liability / Errors & Omissions: $2,000,000 per claim. [MODIFIED]
   • Cyber Liability: $3,000,000 per occurrence, covering data breach and business interruption. [NEW]
   • Performance Bond: 75% of total contract value, issued by a surety rated A- or better by A.M. Best. [MODIFIED]


12. Commercial Terms

Estimated Project Budget: $7,000,000 – $9,500,000
Contract Term: 36 months, with two (2) optional 12-month renewals.

Payment Schedule
   • 15% upon contract signing
   • 20% upon WMS Phase 1 go-live
   • 20% upon cold chain monitoring go-live [NEW]
   • 20% upon fleet telematics full rollout
   • 15% upon WMS full rollout
   • 10% upon final acceptance

   • Warranty period: 24 months following final go-live, covering defect remediation at no additional cost.
        [MODIFIED]
   • Payment terms: Net 30 from invoice date. [MODIFIED]
   • Liquidated damages: 0.5% of total contract value per week of delay against the approved schedule, capped at
        10% of total contract value. [NEW]


## Page 10

   • Retention holdback: 5% of each milestone payment withheld and released upon final system acceptance.
         [NEW]


13. Submission Instructions

Proposals must be submitted electronically in PDF format to proposals@brightlineretail.com no later than the
deadline listed above, accompanied by one signed hard copy delivered to the BRG Supply Chain Procurement Office.
Proposals must remain valid for 150 days from the submission deadline.


14. Terms & Conditions

14.1 Governing Law



software.

14.5 Food Safety Compliance [NEW]
Vendor must certify, in writing, that all cold chain monitoring and traceability functionality deployed under this
engagement complies with applicable FSMA recordkeeping and traceability requirements prior to final acceptance of
any milestone involving refrigerated facilities or vehicles.


15. Contact Information

 Issuing Officer                       Alicia Fenwick

 Title                                 Senior Procurement Manager, Supply Chain Technology

 Email                                 afenwick@brightlineretail.com

 Phone                                 (214) 555-0206


## Page 11




 A-1               WMS Licensing (11 Distribution Centers)                                    $______


 A-3               Fleet Telematics Hardware & Licensing (780 Trucks)                         $______


 A-5               Legacy Data Migration Services (incl. Meridian Grocers)                    $______


 A-7               Cold Chain IoT Sensors & Monitoring Platform [NEW]                         $______

 A-8               FSMA Traceability & Reporting Module [NEW]                                 $______

 A-9               Training (1,150 Staff)                                                     $______

 A-10              24 Months Post-Implementation Support                                      $______

 A-11              Total Proposed Price                                                       $______



Provide at least 5 references meeting the eligibility criteria in Section 7, including at least 2 involving cold
chain/refrigerated logistics.

 Field                                      Response

 Client Organization


 Phone / Email



 Included Cold Chain Monitoring?
 (Y/N)

 Contract Value

 Completion Date




 Vendor meets minimum 8 years relevant experience


## Page 12





Proposed WMS supports lot/expiration-date tracking

Proposed telematics platform supports 30-second GPS refresh

Proposed solution supports FSMA-compliant traceability reporting

Proposed hosting is cloud-only (AWS or GCP) with multi-region redundancy

