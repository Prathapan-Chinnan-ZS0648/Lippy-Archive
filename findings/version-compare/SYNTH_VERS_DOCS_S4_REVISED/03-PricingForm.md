---
use-case: version-compare
skill-version: v2
unit: Pricing Form
verified-by: —
verified-on: —
confidence: draft
---

# Findings — Pricing Form

Grain: one line item (identified by ID, mapped by content). Per
`actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/Detection.md`, every price cell in the supporting
workbook is a placeholder `0`; a real, non-zero figure in the source workbook against
that placeholder is judged CHANGED (a counterpart line item exists), not ADDED.

| ID | Verdict | Old | New |
|---|---|---|---|
| P-01 | CHANGED | "Wi-Fi 6 Access Points (hardware + licensing)" — Qty 420, Unit Price $0, Extended $0 | "Wi-Fi 6E Access Points (hardware + licensing)" — Qty 450, Unit Price $650, Extended $292,500 |
| P-02 | CHANGED | "Wireless Controller & Management Platform" — Qty 1, Unit Price $0, Extended $0 | "Wireless Controller & Management Platform" — Qty 1, Unit Price $85,000, Extended $85,000 |
| P-03 | CHANGED | "PoE+ Access Switches" — Qty 95, Unit Price $0, Extended $0 | "PoE+ Access Switches" — Qty 102, Unit Price $2,400, Extended $244,800 |
| P-04 | CHANGED | "Core Switches" — Qty 14, Unit Price $0, Extended $0 | "Core Switches" — Qty 15, Unit Price $18,500, Extended $277,500 |
| P-05 | CHANGED | "Next-Gen Firewall / UTM Appliances" — Qty 14, Unit Price $0, Extended $0 | "Next-Gen Firewall / UTM Appliances" — Qty 15, Unit Price $9,800, Extended $147,000 |
| P-06 | CHANGED | "Installation & Configuration Labor" — Qty 1, Unit Price $0, Extended $0 | "Installation & Configuration Labor" — Qty 1, Unit Price $310,000, Extended $310,000 |
| P-07 | CHANGED | "Administrator Training (8 staff)" — Qty 1, Unit Price $0, Extended $0 | "Administrator Training (10 staff)" — Qty 1, Unit Price $28,000, Extended $28,000 |
| P-08 | CHANGED | "Annual Support & Maintenance Contract (Year 1)" — Qty 1, Unit Price $0, Extended $0 | "Annual Support & Maintenance Contract (Year 1)" — Qty 1, Unit Price $165,000, Extended $165,000 |
| P-09 | ADDED | NOT ADDRESSED | "Multi-Factor Authentication Licensing (all staff accounts)" — Qty 1, Unit Price $42,000, Extended $42,000 |
| P-10 | ADDED | NOT ADDRESSED | "Cloud-Managed Network Monitoring Subscription (Year 1)" — Qty 1, Unit Price $58,000, Extended $58,000 |
| P-11 | ADDED | NOT ADDRESSED | "Cybersecurity Insurance Rider (District-facing)" — Qty 1, Unit Price $36,500, Extended $36,500 |
| Total Proposed Price | CHANGED | $0 | $1,686,300 |

Note: quantities for P-01, P-03, P-04, and P-05 also increased beyond the unit-quantity
changes already recorded on their corresponding Requirements Matrix rows (R-01, R-03,
R-04, R-05), consistent with the district scaling from 14 to 15 schools.
