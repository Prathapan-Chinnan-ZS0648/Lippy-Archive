---
use-case: version-compare
skill-version: v2
unit: 5. Technical Requirements
verified-by: —
verified-on: —
confidence: draft
---

# Findings — 5. Technical Requirements

## 5.1 ITSM Platform

| Clause | Verdict | Old | New |
|---|---|---|---|
| ITIL v4 alignment | UNCHANGED | "Alignment with ITIL v4 service management practices." | identical |
| CMDB with asset discovery | UNCHANGED | "Built-in configuration management database (CMDB) with automated asset discovery." | identical |
| Self-service portal + mobile app | UNCHANGED | "Self-service portal accessible via web browser and a companion mobile app." | identical |
| Configurable workflow automation | UNCHANGED | "Configurable workflow automation for common request types (password resets, access requests, hardware requests)." | identical |
| Major Incident workflow templates | ADDED | NOT ADDRESSED | "Built-in Major Incident workflow templates, including automated stakeholder notification and status paging." |

## 5.2 Helpdesk Operations

| Clause | Verdict | Old | New |
|---|---|---|---|
| Coverage hours | CHANGED | "Tier 1 and Tier 2 helpdesk coverage during AFG business hours, 7:00 AM – 7:00 PM Eastern Time, Monday through Friday." | "Tier 1 and Tier 2 helpdesk coverage 24 hours a day, 7 days a week, 365 days a year." |
| Multichannel intake | UNCHANGED | "Multichannel intake: phone, email, and self-service portal." | identical |
| First-contact resolution target | UNCHANGED | "First-contact resolution target of 70% or higher for Tier 1 tickets." | identical |

## 5.3 Hosting, Availability & Security

| Clause | Verdict | Old | New |
|---|---|---|---|
| Deployment model | CHANGED | "Deployment model: cloud-hosted or on-premise — vendor may propose either model with technical and cost justification." | "Deployment model: cloud-hosted only. On-premise deployment will not be considered." |
| Uptime SLA | CHANGED | "System uptime service level agreement (SLA) of 99.5% or higher, measured monthly." | "System uptime service level agreement (SLA) of 99.9% or higher, measured monthly." |
| SSO | UNCHANGED | "Single sign-on (SSO) support via SAML 2.0, integrated with AFG's existing Azure Active Directory." | identical |
| Encryption | UNCHANGED | "Encryption at rest (AES-256 or equivalent) and in transit (TLS 1.2 or higher)." | identical |
| Data retention | CHANGED | "Ticket and activity data retention of a minimum of 3 years." | "Ticket and activity data retention of a minimum of 5 years." |
| SOC 2 Type II certification | ADDED | NOT ADDRESSED | "SOC 2 Type II certification required for the proposed hosting environment." |

## 5.4 System Integrations

| Clause | Verdict | Old | New |
|---|---|---|---|
| Azure AD SSO integration | UNCHANGED | "SSO integration with AFG's existing Azure Active Directory environment." | identical |
| FIS read-only export | UNCHANGED | "Read-only data export capability to AFG's core banking platform (FIS) for asset-to-account correlation reporting." | identical |
| Colonial Trust legacy export integration | ADDED | NOT ADDRESSED | "Integration with Colonial Trust Bank's legacy ticketing export files pending full data migration." |

## 5.5 Vendor Support Responsibilities

The revision reformats this subsection from bullet-point prose into a table, marked
`[REFORMATTED — PRESENTED AS A TABLE IN THIS REVISION]`, with the revision's own note:
"Rows 1–5 restate the equivalent bullet-point content from the original RFP, updated to a
tabular format with explicit SLA targets added. Row 6 (Major Incident Response) is a new
addition." Verified independently below, matched by content rather than position (per
skill Module 2, MAP stage) — the bullets and rows do not appear in the same order.

| Clause (old bullet / new row) | Verdict | Old | New |
|---|---|---|---|
| Tier 1 Helpdesk Coverage | CHANGED | "Maintain a dedicated Tier 1 helpdesk available during AFG business hours for password resets and account lockouts." | "Tier 1 Helpdesk Coverage — 24/7/365 support for password resets, account lockouts, and basic troubleshooting — Target SLA: Answer within 60 seconds; resolve within 15 minutes." |
| Technical Account Manager | CHANGED | "Provide a named Technical Account Manager (TAM) as a single point of contact for service escalations." | "Technical Account Manager — Named TAM as single point of contact for service escalations — Target SLA: Response within 4 business hours." |
| Monthly Service Reporting | CHANGED | "Deliver monthly service performance reports covering ticket volume, resolution time, and SLA compliance." | "Monthly Service Reporting — Ticket volume, resolution time, and SLA compliance reporting — Target SLA: Delivered by the 5th business day of each month." |
| Self-Service Knowledge Base | CHANGED | "Maintain a knowledge base of at least 200 self-service articles, updated quarterly." | "Self-Service Knowledge Base — Maintained repository of self-service articles — Target SLA: Minimum 300 articles, updated monthly." |
| On-Site Support Coverage | CHANGED | "Provide on-site support coverage at AFG's headquarters campus during business hours." | "On-Site Support Coverage — On-site technician presence at AFG headquarters and the five highest-headcount branch locations — Target SLA: Business hours, Monday – Friday." |
| Major Incident Response | ADDED | NOT ADDRESSED | "Major Incident Response — Dedicated Major Incident Commander engaged for Severity 1 outages — Target SLA: Engaged within 15 minutes of Sev-1 declaration." |

Each of the five matched rows carries the same underlying obligation as its original
bullet but adds a quantified target (article count raised 200→300 with cadence
monthly vs. quarterly; on-site coverage extended from headquarters-only to headquarters
plus the five highest-headcount branches) — judged CHANGED rather than
REMOVED+ADDED, since a counterpart plainly exists for each (skill absence-policy: REMOVED
or ADDED apply only where there is no counterpart at all).
