---
document: <filename>                        # the document this page belongs to, e.g. SYNTH_VERS_DOCS_S1_REVISED.pdf
for-document: sha256:<digest>                # sha256 of the whole document file
page: <N>                                    # physical page number, counted from 1
tier: TEXT_LAYER | SCAN                      # whether the page has a native text layer or needs OCR/vision
read-by: <tool/version>                      # extraction method, e.g. "pdfplumber per-page text extraction"
laid-out-as-a-table: true | false            # whether the page's content is a table
verified-by: <names>                         # who read/corrected this page
verified-on: <date>
verification: corrected | read-through | unread
confidence: SURE | UNSURE
---
# Page <N> · <document>

<!-- the corrected read of the page: prose, tables, quoted text, exactly as the page states it -->
