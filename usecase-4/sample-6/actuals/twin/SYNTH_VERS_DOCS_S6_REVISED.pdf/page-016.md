---
document: SYNTH_VERS_DOCS_S6_REVISED.pdf
for-document: sha256:268b95136365b80a89a7f5344e4385865526db2d9f356cfad7ca0316e8ef22ae
page: 16
tier: TEXT_LAYER
read-by: pdfplumber per-page text extraction; physical PDF page, not the document's own Table of Contents numbering
laid-out-as-a-table: true
verified-by: automated cross-check pass
verified-on: 2026-09-15
verification: corrected
confidence: SURE
---
## Appendix D: Technical Specifications Detail

### D.1 CCTV Camera Specification
| Parameter | Minimum Requirement |
| --- | --- |
| Resolution | 4K (2160p) [MODIFIED — was 1080p] |
| Optical Zoom | 30x |
| Enclosure Rating | IP66 |
| Low-Light Performance | 0.01 lux color, 0.001 lux B/W |
| Video Analytics | Stopped-vehicle and wrong-way detection |
| Communication Protocol | ONVIF Profile S/T compliant |

### D.2 Dynamic Message Sign (DMS) Specification
| Parameter | Minimum Requirement |
| --- | --- |
| Display Type | Full-matrix LED |
| Message Lines | 3 lines minimum |
| Brightness | Auto-dimming, 1,000–10,000 nits range |
| Controller Protocol | NTCIP 1203 compliant |
| Power Option | AC and solar-compatible |

### D.3 Ramp Meter Controller Specification
| Parameter | Minimum Requirement |
| --- | --- |
| Metering Algorithm | Adaptive, volume/occupancy responsive |
| Detector Interface | Loop and radar detector compatible |
| Override Capability | Local and remote TMC override |
| Communication Protocol | NTCIP 1207 compliant |

### D.4 Communications Network Specification
| Parameter | Minimum Requirement |
| --- | --- |
| Core Backbone Capacity | 25 Gbps minimum, ring topology [MODIFIED — was 10 Gbps] |
| Field Device Connectivity | Fiber preferred; licensed wireless where fiber infeasible |
| Redundancy | No single fiber cut disables more than 5% of devices |
| Backup Connectivity | Cellular failover for remote sites |

### D.5 Security Operations Center (SOC) Specification [NEW]
| Parameter | Minimum Requirement |
| --- | --- |
| Monitoring Coverage | 24/7/365 |
| Intrusion Notification SLA | 30 minutes from confirmed detection |
| Vulnerability Scanning Frequency | Quarterly, all internet-facing components |
| Personnel Certification | CISSP or GIAC required for SOC analysts |
