---
document: SYNTH_VERS_DOCS_S1_REVISED.pdf
for-document: sha256:8a8bd85ca1f4bd20c8fb8ab36a40b3c1180f03cc76d25f9476b44e82f61a1b6b
page: 5
tier: TEXT_LAYER
read-by: pdftotext (poppler) -layout
laid-out-as-a-table: false
verified-by: automated cross-check pass
verified-on: 2026-09-11
verification: corrected
confidence: SURE
---

## 5. Technical Requirements

### 5.1 Warehouse Management System (WMS)

- Support for barcode and RFID-based inventory tracking.
- Configurable slotting optimization and wave-picking logic.
- Real-time inventory visibility across all 11 distribution centers from a single console.
- Support for cross-docking and case-level and each-level (piece) picking.
- Support for lot- and expiration-date tracking for perishable SKUs. [NEW]

### 5.2 Fleet Telematics

- Real-time GPS vehicle location tracking with a maximum 30-second refresh interval. [MODIFIED]
- Automated route optimization based on delivery windows and store priority.
- Driver behavior scoring (harsh braking, speeding, idling).

### 5.3 Cold Chain Monitoring [NEW SECTION]

- Continuous IoT sensor-based temperature and humidity monitoring in refrigerated storage zones and refrigerated trailers.
- Automated real-time alerting to designated staff when temperature excursions exceed configurable thresholds.
- Digital, timestamped temperature logs retained and exportable for regulatory inspection, consistent with FSMA recordkeeping requirements.

### 5.4 Hosting, Availability & Security

- Deployment model: cloud-hosted only, using AWS or Google Cloud Platform. On-premise deployment will not be considered. [MODIFIED — REMOVES ON-PREM OPTION]
- System uptime service level agreement (SLA) of 99.9% or higher for hosted WMS, telematics, and cold chain monitoring components, measured monthly. [MODIFIED]
- Redundant hosting across two geographically separated regions or availability zones. [NEW]
- Single sign-on (SSO) support via SAML 2.0 or OpenID Connect (OIDC), integrated with BRG's existing Active Directory. [MODIFIED]
- Encryption at rest (AES-256 or equivalent) and in transit (TLS 1.2 or higher).
- Operational and transaction data retention of a minimum of 5 years, including cold chain temperature logs. [MODIFIED]

### 5.5 System Integrations

- API-based, near-real-time integration with BRG's existing SAP S/4HANA ERP system for inventory, order, and shipment data.
- Integration with BRG's existing Zebra handheld device fleet for warehouse scanning.
- Integration with the Meridian Grocers legacy inventory system pending full data migration. [NEW]

## 6. Functional Requirements Matrix

Vendors must indicate compliance with each functional requirement in their proposal response using the codes: F (Fully Compliant), P (Partially Compliant — explain), C (Customization Required), N (Not Supported).
