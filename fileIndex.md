# File Index

A list of entries — one per use case (bootstrap.md §2). `use_case_name` is the unique
key; `source_document_path`/`supporting_document_path` may be a single path or a list of
paths within an entry.

```yaml
- use_case_name: "bid-evaluation"
  source_document_path:
    - "documents/bid-evaluation/source/RESPONSE_DOC_S1.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S2.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S3.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S4.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S5.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S6.docx"
  supporting_document_path:
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
  skill_file_path: "skills/bid-evaluation/skill.md"

- use_case_name: "version-compare"
  source_document_path:
    - "documents/version-compare/source/SYNTH_VERS_DOCS_S1_REVISED.pdf"
    - "documents/version-compare/source/SYNTH_VERS_DOCS_S2_REVISED.pdf"
    - "documents/version-compare/source/SYNTH_VERS_DOCS_S3_REVISED.docx"
    - "documents/version-compare/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx"
    - "documents/version-compare/source/SYNTH_VERS_DOCS_S5_REVISED.pptx"
  supporting_document_path:
    - "documents/version-compare/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf"
    - "documents/version-compare/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf"
    - "documents/version-compare/supporting/SYNTH_VERS_DOCS_S3_ORIGINAL.docx"
    - "documents/version-compare/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx"
    - "documents/version-compare/supporting/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx"
  skill_file_path: "skills/version-compare/skill.md"

- use_case_name: "drawing-comparison"
  source_document_path: "documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf"
  supporting_document_path: "documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf"
  skill_file_path: "skills/drawing-comparison/skill.md"
```