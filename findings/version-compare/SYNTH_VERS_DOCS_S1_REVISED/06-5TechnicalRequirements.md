---
run: SYNTH_VERS_DOCS_S1
use-case: version-compare
skill-version: v1
unit: 5. Technical Requirements
verified-by: —
verified-on: —
confidence: draft
---

# Findings — 5. Technical Requirements


## 5. Technical Requirements

### 5.1 Warehouse Management System (WMS)

| Clause | Verdict | Old | New |
|---|---|---|---|
| Barcode/RFID tracking | UNCHANGED | "Support for barcode and RFID-based inventory tracking." | identical |
| Slotting/wave-picking | UNCHANGED | "Configurable slotting optimization and wave-picking logic." | identical |
| DC console count | CHANGED | "Real-time inventory visibility across all 9 distribution centers from a single console." | "Real-time inventory visibility across all 11 distribution centers from a single console." |
| Cross-docking/picking | UNCHANGED | "Support for cross-docking and case-level and each-level (piece) picking." | identical |
| Lot/expiration tracking | ADDED | NOT ADDRESSED | "Support for lot- and expiration-date tracking for perishable SKUs." |

### 5.2 Fleet Telematics

| Clause | Verdict | Old | New |
|---|---|---|---|
| GPS refresh interval | CHANGED | "Real-time GPS vehicle location tracking with a maximum 60-second refresh interval." | "Real-time GPS vehicle location tracking with a maximum 30-second refresh interval." |
| Route optimization | UNCHANGED | "Automated route optimization based on delivery windows and store priority." | identical |
| Driver behavior scoring | UNCHANGED | "Driver behavior scoring (harsh braking, speeding, idling)." | identical |

### 5.3 Cold Chain Monitoring

| Clause | Verdict | Old | New |
|---|---|---|---|
| Entire section 5.3 | ADDED | NOT ADDRESSED (no cold chain section exists in the original) | "Continuous IoT sensor-based temperature and humidity monitoring in refrigerated storage zones and refrigerated trailers." / "Automated real-time alerting to designated staff when temperature excursions exceed configurable thresholds." / "Digital, timestamped temperature logs retained and exportable for regulatory inspection, consistent with FSMA recordkeeping requirements." |

### 5.4 Hosting, Availability & Security

| Clause | Verdict | Old | New |
|---|---|---|---|
| Deployment model | CHANGED | "Deployment model: cloud-hosted or on-premise — vendor may propose either model with technical and cost justification." | "Deployment model: cloud-hosted only, using AWS or Google Cloud Platform. On-premise deployment will not be considered." |
| Uptime SLA | CHANGED | "System uptime service level agreement (SLA) of 99.5% or higher for hosted WMS and telematics components, measured monthly." | "System uptime service level agreement (SLA) of 99.9% or higher for hosted WMS, telematics, and cold chain monitoring components, measured monthly." |
| Redundant hosting | ADDED | NOT ADDRESSED | "Redundant hosting across two geographically separated regions or availability zones." |
| SSO | CHANGED | "Single sign-on (SSO) support via SAML 2.0, integrated with BRG's existing Active Directory." | "Single sign-on (SSO) support via SAML 2.0 or OpenID Connect (OIDC), integrated with BRG's existing Active Directory." |
| Encryption | UNCHANGED | "Encryption at rest (AES-256 or equivalent) and in transit (TLS 1.2 or higher)." | identical |
| Data retention | CHANGED | "Operational and transaction data retention of a minimum of 3 years." | "Operational and transaction data retention of a minimum of 5 years, including cold chain temperature logs." |

### 5.5 System Integrations

| Clause | Verdict | Old | New |
|---|---|---|---|
| SAP integration | UNCHANGED | "API-based, near-real-time integration with BRG's existing SAP S/4HANA ERP system for inventory, order, and shipment data." | identical |
| Zebra integration | UNCHANGED | "Integration with BRG's existing Zebra handheld device fleet for warehouse scanning." | identical |
| Meridian integration | ADDED | NOT ADDRESSED | "Integration with the Meridian Grocers legacy inventory system pending full data migration." |
