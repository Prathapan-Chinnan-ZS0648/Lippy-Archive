# File Index

A list of entries — one per use case (bootstrap.md §2). `use_case_name` is the unique
key; `source_document_path`/`supporting_document_path` may be a single path or a list of
paths within an entry.

```yaml
- use_case_name: "drawing-comparison"
  source_document_path: "documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf"
  supporting_document_path: "documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf"
  skill_file_path: "skills/drawing-comparison/skill.md"

- use_case_name: "bom-extraction"
  source_document_path: "documents/bom-extraction/source/260374 COMBINED PID SET 6-1-26.pdf"
  supporting_document_path: "n/a"
  skill_file_path: "skills/bom-extraction/skill.md"
```