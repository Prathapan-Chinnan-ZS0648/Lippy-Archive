---
source-document: SYNTH_VERS_DOCS_S4_REVISED.xlsx
use-case: version-compare
skill-version: v5 (current — see skills/version-compare/patternLog.md Entry 11; findings below judged under v2, re-judged 2026-09-20 for the Requirements Matrix unit's vendor-response/vendor-notes columns only under v5's column-granularity rule, remaining units content-compatible and not re-run)
based-on: actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/ (6 unit files, per actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/plan.md)
source: documents/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx
supporting: documents/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx
state: draft — pending HITL review, not yet signed off in manifest.md
---

# Version comparison report — SYNTH_VERS_DOCS_S4_REVISED

## What this covers

Meridian Public School District's original RFP (RFP-MPSD-2026-0053, issued February 9,
2026) versus its revised reissue (RFP-MPSD-2026-0053-R1, issued April 27, 2026),
following the opening of a new elementary school and a district-wide cybersecurity
assessment completed March 2026. Unlike the two prior samples processed under this use
case, both documents here are multi-sheet Excel workbooks (`.xlsx`), not PDFs — the full
clause-by-clause account is in `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/` (one file
per sheet, per `plan.md`); this report summarizes it.

## Verdict counts

| Verdict | Count |
|---|---|
| CHANGED | 34 |
| ADDED | 52 |
| REMOVED | 2 |
| UNCHANGED | 10 |
| **Total clauses examined** | **98** |

## What changed, by theme

- **An entire new sheet added:** "Cybersecurity Addendum," with five new mandatory
  requirements (endpoint detection & response, 24/7 SOC monitoring, a 1-hour breach
  notification SLA, annual third-party vulnerability assessment, and FERPA compliance for
  student data) — added in response to a district-wide cybersecurity assessment. This
  sheet has no counterpart in the original workbook at all.
- **Scale increase from a new school opening:** schools served (14→15, adding Fallbrook
  Elementary), and correspondingly higher hardware quantities across the Pricing Form
  (access points, switches, firewalls) and a new "District Profile (updated)" field on
  the Cover sheet.
- **Cybersecurity hardened within the base Requirements Matrix too**, not just the new
  addendum: Wi-Fi upgraded 6→6E, enhanced CIPA filtering with malware/phishing blocking,
  a new mandatory MFA requirement (R-16), and on-premise monitoring (R-07) replaced by
  cloud-managed monitoring with mobile alerting (R-17) — judged as a REMOVED+ADDED pair,
  not a single reworded clause, since the two requirements' substance differs even
  though the document's own note frames it as a straight replacement.
- **Several previously-optional requirements made mandatory:** bandwidth reporting
  (R-08), advance hardware replacement (R-12), and the 24/7 support hotline (R-15) all
  moved from Desired to Mandatory, without their underlying requirement text changing —
  the priority is a distinct clause from the requirement description.
- **Warranty and training scope increased:** hardware warranty extended 3→5 years;
  administrator training scaled from 8 to 10 staff.
- **Requirements Matrix gained two entirely new columns:** "Vendor Response (F/P/C/N)" and
  "Vendor Notes" exist only in the revised workbook — the original's Requirements Matrix
  has no data or header in those columns at all. Every one of the 16 requirement rows now
  carries a vendor response code and a note (e.g. R-01: "F" / "Proposing Aruba/HPE
  Networking 630 Series Wi-Fi 6E access points district-wide."), judged as 32 individual
  ADDED cells (16 rows × 2 columns) rather than one aggregate note, per the skill's
  column-granularity rule — see `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/02-RequirementsMatrix.md`
  for the full per-cell breakdown.
- **Pricing filled in from a blank template:** the original's Pricing Form had every
  price cell set to a `0` placeholder (it is the unfilled original RFP); the revised
  workbook has real prices filled in, totaling $1,686,300, plus three entirely new line
  items (MFA licensing, cloud monitoring subscription, cybersecurity insurance rider)
  with no counterpart in the original at all.
- **Reference requirements tightened:** minimum references raised 3→4, with a new
  requirement that at least one include a cybersecurity component; a new "E-Rate
  Category 2 Project Experience?" field added; and — unlike the original's unfilled
  template — three complete reference entries are filled in.
- **Timeline pushed out roughly three months**, with a new "Cybersecurity Design Review"
  milestone inserted ahead of installation.
- **Points to flag before submission:**
  - The revised document's own annotation states R-07 was "removed... and replaced by"
    R-17, but R-07 (on-premise monitoring) and R-17 (cloud-managed monitoring with
    mobile alerting) are substantively different requirements — this report treats them
    as REMOVED and ADDED respectively, not as one changed requirement, and that
    distinction may matter for anyone tracking exactly which obligations persist.
  - The Cover sheet's "Category" field text is byte-identical between versions even
    though the document title and overall scope clearly changed to include
    cybersecurity — the original's Category field already said "...Network, Wi-Fi &
    Cybersecurity" ahead of the rest of the document catching up to that framing.

## What did not change

10 clauses were confirmed unchanged, including the Issuing Organization and Category
fields on the Cover sheet, the workbook's list of original section names (Cover,
Requirements Matrix, Pricing Form, Reference Form, Project Timeline — though their
position in that list shifted), and several Requirements Matrix rows whose text was not
touched (switch replacement, uplink speed, firewall deployment, E-Rate assistance and
eligibility, installation scheduling). See `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/`
for the complete list with quotes, per unit.

## Provenance

```text
bootstrap.md (generic rules — never changes per document)
      ↓
fileIndex.md (four resolved inputs: use case name, source, supporting, skill)
      ↓
manifest.md (this document's governance/context — state, sign-off, deviations, digests)
      ↓
skills/version-compare/skill.md (current version, v5 — original judging under v2, Requirements
      Matrix vendor-response/vendor-notes columns re-judged 2026-09-20 under v5)
      ↓
actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/detection.md, plan.md
      ↓
actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/twin/{SYNTH_VERS_DOCS_S4_REVISED,SYNTH_VERS_DOCS_S4_ORIGINAL}/sheet-*.md
      ↓
actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/*.md (6 unit files)
      ↓
this report
```

Not yet reviewed under `HITL/version-compare/SYNTH_VERS_DOCS_S4_REVISED/` or
