---
document: SYNTH_VERS_DOCS_S2_REVISED.pdf
page: 5
verification: unread
---

```text
5. Technical Requirements

5.1 ITSM Platform
   • Alignment with ITIL v4 service management practices.
   • Built-in configuration management database (CMDB) with automated asset discovery.
   • Self-service portal accessible via web browser and a companion mobile app.
   • Configurable workflow automation for common request types (password resets, access requests, hardware
      requests).
   • Built-in Major Incident workflow templates, including automated stakeholder notification and status paging.
      [NEW]

5.2 Helpdesk Operations
   • Tier 1 and Tier 2 helpdesk coverage 24 hours a day, 7 days a week, 365 days a year. [MODIFIED — was business
      hours only]
   • Multichannel intake: phone, email, and self-service portal.
   • First-contact resolution target of 70% or higher for Tier 1 tickets.

5.3 Hosting, Availability & Security
   • Deployment model: cloud-hosted only. On-premise deployment will not be considered. [MODIFIED —
      REMOVES ON-PREM OPTION]
   • System uptime service level agreement (SLA) of 99.9% or higher, measured monthly. [MODIFIED]
   • Single sign-on (SSO) support via SAML 2.0, integrated with AFG's existing Azure Active Directory.
   • Encryption at rest (AES-256 or equivalent) and in transit (TLS 1.2 or higher).
   • Ticket and activity data retention of a minimum of 5 years. [MODIFIED]
   • SOC 2 Type II certification required for the proposed hosting environment. [NEW]

5.4 System Integrations
   • SSO integration with AFG's existing Azure Active Directory environment.
   • Read-only data export capability to AFG's core banking platform (FIS) for asset-to-account correlation reporting.
   • Integration with Colonial Trust Bank's legacy ticketing export files pending full data migration. [NEW]

5.5 Vendor Support Responsibilities [REFORMATTED — PRESENTED AS A TABLE IN THIS
REVISION]
The selected vendor's ongoing support obligations shall include the following, with associated target service levels:

 Responsibility               Description                                      Target SLA

 Tier 1 Helpdesk Coverage     24/7/365 support for password resets, account    Answer within 60 seconds;
                              lockouts, and basic troubleshooting              resolve within 15 minutes

 Technical Account            Named TAM as single point of contact for         Response within 4 business
 Manager                      service escalations                              hours

 Monthly Service Reporting    Ticket volume, resolution time, and SLA          Delivered by the 5th business
                              compliance reporting                             day of each month

 Self-Service Knowledge       Maintained repository of self-service articles   Minimum 300 articles, updated
 Base                                                                          monthly

```
