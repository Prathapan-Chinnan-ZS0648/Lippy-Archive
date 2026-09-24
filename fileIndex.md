# File Index

A list of entries — one per use case (bootstrap.md §2). `use_case_name` is the unique
key; `source_document_path`/`supporting_document_path` may be a single path or a list of
paths within an entry. `signed_by` names the human reviewer authorized to sign off on
this use case's work — a name only, never a status/date (those stay in that use case's
`manifest/<usecase>/manifest.md`, per-document, once HITL review actually completes).

```yaml
- use_case_name: "bid-evaluation"
  source_document_path:
    - "documents/bid-evaluation/source/RESPONSE_DOC_S1.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S2.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S3.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S4.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S5.docx"
    - "documents/bid-evaluation/source/RESPONSE_DOC_S6.docx"
    - "documents/bid-evaluation/source/Coastline_Builders_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Deccan_Highways_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Eastern_Ridge_Infra_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Himalayan_Pathways_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Meridian_Roadways_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Nilgiri_Infraprojects_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Northland_Builders_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Shivalik_Infracon_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Sunrise_Infratech_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/source/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE.pdf"
  supporting_document_path:
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/BASE_DOC.docx"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
    - "documents/bid-evaluation/supporting/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE.pdf"
  skill_file_path: "skills/bid-evaluation/skill.md"
  signed_by: "Prathapan C"
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
  signed_by: "Prathapan C"
```