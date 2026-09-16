---
document: SYNTH_VERS_DOCS_S2_REVISED.pdf
for-document: sha256:3e71f9d61b8bb53a59cb8785f2ef9883111afcfaca15f6ac65713aa4f30ebe21
page: 5
tier: TEXT_LAYER
read-by: pdftotext (poppler) -layout
laid-out-as-a-table: true
verified-by: automated cross-check pass
verified-on: 2026-09-11
verification: corrected
confidence: SURE
---

## 5. Technical Requirements

### 5.1 ITSM Platform

- Alignment with ITIL v4 service management practices.
- Built-in configuration management database (CMDB) with automated asset discovery.
- Self-service portal accessible via web browser and a companion mobile app.
- Configurable workflow automation for common request types (password resets, access requests, hardware requests).
- Built-in Major Incident workflow templates, including automated stakeholder notification and status paging. [NEW]

### 5.2 Helpdesk Operations

- Tier 1 and Tier 2 helpdesk coverage 24 hours a day, 7 days a week, 365 days a year. [MODIFIED — was business hours only]
- Multichannel intake: phone, email, and self-service portal.
- First-contact resolution target of 70% or higher for Tier 1 tickets.

### 5.3 Hosting, Availability & Security

- Deployment model: cloud-hosted only. On-premise deployment will not be considered. [MODIFIED — REMOVES ON-PREM OPTION]
- System uptime service level agreement (SLA) of 99.9% or higher, measured monthly. [MODIFIED]
- Single sign-on (SSO) support via SAML 2.0, integrated with AFG's existing Azure Active Directory.
- Encryption at rest (AES-256 or equivalent) and in transit (TLS 1.2 or higher).
- Ticket and activity data retention of a minimum of 5 years. [MODIFIED]
- SOC 2 Type II certification required for the proposed hosting environment. [NEW]

### 5.4 System Integrations

- SSO integration with AFG's existing Azure Active Directory environment.
- Read-only data export capability to AFG's core banking platform (FIS) for asset-to-account correlation reporting.
- Integration with Colonial Trust Bank's legacy ticketing export files pending full data migration. [NEW]

### 5.5 Vendor Support Responsibilities [REFORMATTED — PRESENTED AS A TABLE IN THIS REVISION]

The selected vendor's ongoing support obligations shall include the following, with associated target service levels:

| Responsibility | Description | Target SLA |
|---|---|---|
| Tier 1 Helpdesk Coverage | 24/7/365 support for password resets, account lockouts, and basic troubleshooting | Answer within 60 seconds; resolve within 15 minutes |
| Technical Account Manager | Named TAM as single point of contact for service escalations | Response within 4 business hours |
| Monthly Service Reporting | Ticket volume, resolution time, and SLA compliance reporting | Delivered by the 5th business day of each month |
| Self-Service Knowledge Base | Maintained repository of self-service articles | Minimum 300 articles, updated monthly |
| On-Site Support Coverage | On-site technician presence at AFG headquarters and the five highest-headcount branch locations | Business hours, Monday – Friday |
| Major Incident Response [NEW] | Dedicated Major Incident Commander engaged for Severity 1 outages | Engaged within 15 minutes of Sev-1 declaration |

Note: Rows 1–5 restate the equivalent bullet-point content from the original RFP, updated to a tabular format with explicit SLA targets added. Row 6 (Major Incident Response) is a new addition.
