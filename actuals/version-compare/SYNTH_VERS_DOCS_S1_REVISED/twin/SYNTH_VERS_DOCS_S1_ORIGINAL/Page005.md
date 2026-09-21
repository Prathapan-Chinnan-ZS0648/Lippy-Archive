---
document: SYNTH_VERS_DOCS_S1_ORIGINAL.pdf
page: 5
verification: unread
---

```text
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

```
