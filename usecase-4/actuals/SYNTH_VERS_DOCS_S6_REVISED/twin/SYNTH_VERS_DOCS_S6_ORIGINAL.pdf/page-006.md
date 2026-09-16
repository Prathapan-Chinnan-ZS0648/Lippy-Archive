---
document: SYNTH_VERS_DOCS_S6_ORIGINAL.pdf
for-document: sha256:264b231246823fd6f42c2815424742e4c3ce8f222ca5534b7fa513ffa941eeed
page: 6
tier: TEXT_LAYER
read-by: pdfplumber per-page text extraction; physical PDF page, not the document's own Table of Contents numbering
laid-out-as-a-table: false
verified-by: automated cross-check pass
verified-on: 2026-09-15
verification: corrected
confidence: SURE
---
## 5. Technical Requirements

### 5.1 ATMS Software Platform
- Support for NTCIP 1200-series standards for field device communication.
- Map-based operator console showing real-time status of all field devices.
- Configurable incident management workflow with automated response plan suggestions.
- Role-based access control aligned to TMC operator, supervisor, and administrator roles.

### 5.2 CCTV Cameras
- Minimum 1080p resolution with 30x optical zoom.
- Integrated video analytics for stopped-vehicle and wrong-way-driver detection.
- IP66-rated enclosures rated for the Department's operating climate range.

### 5.3 Dynamic Message Signs (DMS)
- Full-matrix LED display, minimum 3-line message capability.
- Solar-compatible power option for remote sign locations.
- NTCIP 1203 compliant sign controllers.

### 5.4 Ramp Metering
- Adaptive metering algorithms responsive to real-time mainline volume and occupancy.
- Local override capability for TMC operators during incidents.

### 5.5 Communications Network
- Fiber-optic backbone with a minimum 10 Gbps core ring capacity.
- Cellular or licensed-wireless backup connectivity for remote field device locations.
- Network redundancy such that no single fiber cut disables more than 5% of connected field devices.

### 5.6 Hosting, Availability & Security
- Deployment model: CDOT-hosted on-premise at the TMC, or vendor-hosted cloud environment — vendor may propose either model with justification.
- System uptime SLA of 99.5% or higher for the ATMS software platform, measured monthly.
- Single sign-on (SSO) support via SAML 2.0, integrated with CDOT's existing Active Directory.
- Encryption at rest (AES-256 or equivalent) and in transit (TLS 1.2 or higher).
- Video and event data retention of a minimum of 2 years.

### 5.7 Cybersecurity
- Network architecture aligned with the NIST Cybersecurity Framework (Identify, Protect, Detect, Respond, Recover).
- Network segmentation isolating ITS field device traffic from CDOT's corporate IT network.
- Annual third-party penetration testing of the ATMS platform and communications network.

### 5.8 System Integrations
- Integration with CDOT's statewide 511 traveler information system for automated DMS message posting.
- API-based data feed to CDOT's public open-data portal for anonymized traffic volume data.
