# File Index

The sample registry (`bootstrap.md` §2). One entry per **sample** — one concrete job, one
source document (or document set) run through one use case's skill — never one entry per
use case: several samples routinely share the same `use_case_name`. `sample_name` is the
unique key; `source_document_path`/`supporting_document_path` point inside that sample's
own `<sample_name>/documents/` folder, and may be a list only for a single
sample's genuinely multi-file job (`bootstrap.md` §2).

```yaml
- sample_name: "AD-3010-C-330030-SHT-004-REV4"
  use_case_name: "drawing-comparison"
  source_document_path: "AD-3010-C-330030-SHT-004-REV4/documents/source/AD-3010-C-330030-SHT-004-REV4.pdf"
  supporting_document_path: "AD-3010-C-330030-SHT-004-REV4/documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf"
  skill_file_path: "skills/drawing-comparison/skill.md"

- sample_name: "260374-COMBINED-PID-SET-6-1-26"
  use_case_name: "bom-extraction"
  layout: legacy   # not yet migrated to this framework's per-sample top-level-folder layout (bootstrap.md §2) — paths below are this sample's real, current (pre-revamp) locations, pending its own migration pass
  source_document_path: "documents/bom-extraction/source/260374 COMBINED PID SET 6-1-26.pdf"
  supporting_document_path: "n/a"
  skill_file_path: "skills/bom-extraction/skill.md"

- sample_name: "Prepurchase-Elect-Dwgs-10-30-2024"
  use_case_name: "bom-extraction"
  layout: legacy   # not yet migrated to this framework's per-sample top-level-folder layout (bootstrap.md §2) — paths below are this sample's real, current (pre-revamp) locations, pending its own migration pass
  source_document_path: "documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf"
  supporting_document_path: "n/a"
  skill_file_path: "skills/bom-extraction/skill.md"
```
