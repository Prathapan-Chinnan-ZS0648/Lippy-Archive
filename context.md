# Lippy Archive

design · revision 3 · 10 September 2026 · for the team producing actuals

## One folder that holds the work and the truth, stage by stage

A Lippy Archive is a project in plain files. It holds what Lumina produces at every stage of a job, and beside it the human-verified actual for that stage, in the same shape. A run is compared to the truth file against file. When a new skill arrives, the places for its actuals already exist. This revision adds what a team of many people needs to produce actuals the same way: a verification standard, writing rules per document type, per-skill finding shapes and identity rules, defined tolerances, templates, governance and confidentiality.

**The one principle.** The actual for a stage is written in the exact format Lumina writes that stage's output. Not a summary table of it, not a scoring sheet about it. The same file, corrected by a person. Everything else in this document follows from that.

### Contents

- [What it is, and what it is for](#1--what-it-is-and-what-it-is-for)
- [The folder](#2--the-folder)
- [The four root files](#3--the-four-root-files)
- [The stages: run, actual, comparison](#4--the-stages-what-lumina-writes-what-the-actual-is-how-they-are-compared)
- [Per-skill declarations: units, labels, finding shape](#5--per-skill-declarations-units-labels-finding-shape)
- [Document types and what a page is](#6--document-types-and-what-a-page-is)
- [Writing rules for twin actuals](#7--writing-rules-for-twin-actuals)
- [The verification standard](#8--the-verification-standard)
- [Comparison tolerances](#9--comparison-tolerances)
- [Pack profile: the hard cases a pack must carry](#10--pack-profile-the-hard-cases-a-pack-must-carry)
- [The scorecard and noise](#11--the-scorecard-and-noise)
- [Templates, spreadsheets and the converter](#12--templates-spreadsheets-and-the-converter)
- [Governance](#13--governance)
- [Confidentiality and storage](#14--confidentiality-and-storage)
- [Adding a skill](#15--adding-a-skill)
- [The ABB archive under this design](#16--the-abb-archive-under-this-design)
- [Open decisions](#17--open-decisions)

---

## 1 · What it is, and what it is for

Lumina works in stages: it reads documents into a Document Twin, derives what the source asks, detects the use case and composes a Plan of Action, runs the plan into a Business Twin of findings, and writes a report. Each stage writes files. Those files already live in a project folder on Git with nothing in a database.

The Lippy Archive is that project folder, made complete. Four files at the root say what the project is, what was asked, what was decided, and what files exist. Under them sit the documents, the skill files, one folder per run of Lumina's outputs, and beside the runs `actuals/`: the same tree, holding the verified truth for every stage.

Two kinds of correctness are measured from it, and they are kept apart:

- **Data correctness**: is the truth itself right? Measured by reader agreement, resolver decisions, and the checker (section 8).
- **Implementation correctness**: does Lumina match the truth? Measured by comparing a run to the actuals, stage by stage, with defined tolerances (sections 9 and 11).

Three things the archive gives that nothing else does: hand-on-hand comparison because a run and its truth have the same paths and formats; actuals that outlive the engine and are reused across skills sharing documents; and a folder any agent, Hermes, Goose, Pi or Lumina, can work in from `bootstrap.md` alone.

---

## 2 · The folder

```
<project>/
  bootstrap.md                what this project is and how to work in it; the brief; declarations; pack profile
  prompting.md                every instruction received, dated, in order
  pivot.md                    every decision, with an explicit yes or no, who and when; reader agreement
  file-index.md               every file: role, version, digest, verified-by, dates, size, description

  documents/
    source/                   what is answered: the register, the RFP, the question list, the contract
    supporting/               what answers it: dossiers, SOPs, letters, policies, the earlier version

  skills/
    compliance-assessment.md  the skill file, in Lumina's skill format, with units, labels and finding shape
    <another-skill>.md        one per skill this project runs

  actuals/                    THE TRUTH, one tree in Lumina's own formats
    twin/
      <document>/page-001.md  the correct read of every page of every document
      derived/<document>.md   the units a source asks; the sections a supporting document states
      section-map.md
    detection.md              the use case a person says this project is
    plan.md                   the plan a person would approve
    findings/<unit>.md        one finding per unit, as a reviewer would write it, in the skill's finding shape
    graph.md                  how findings relate (optional in the first packs)
    report/
      report.md               the deliverable rows and the counts
      <customer template>.xlsx / .pdf / .pptx   the filled deliverable where a template exists

  runs/
    <run-id>/                 what Lumina produced, same tree as actuals/, read-only, one per run
      twin/ … detection.md  plan.md  findings/  graph.md  report/
      run.md                  model, versions, timings, run count, the scorecard against actuals/

  templates/                  empty skeletons per stage with every front-matter field named (section 12)
  Doc/  Deck/  Excel/         the delivered outputs of the accepted run
```

### Why `actuals/` is a whole tree

A stage cannot be judged without the stage before it. A finding that cites the right page is only right if the twin read that page correctly; a plan is only right for the use case detected. Every stage has its actual, so every stage can be scored on its own.

### Why `runs/` is beside it

The comparison is a diff, not an interpretation. Same paths, same front matter, same sections. A run folder is never edited; a person's corrections go into `actuals/` and `pivot.md`.

---

## 3 · The four root files

### `bootstrap.md`

What this project is and how to work in it

```
# ABB security assessment of the Intics platform

skill: compliance-assessment
domain: industrial IT security · supplier assessment
source: documents/source/Copy of Evidencelistconsolidated.xlsx
supporting: documents/supporting/ZUCI_ABB-IT-Dossier-V4.pdf; documents/supporting/…
scale: COMPLIANT, PARTIALLY COMPLIANT, NOT COMPLIANT, NOT ADDRESSED, NOT APPLICABLE
absence: NOT ADDRESSED
labels: SUPPLIER, CUSTOMER, THIRD PARTY
pages: counted from the first page of each file, starting at 1
state: draft | verified | signed
signed-by: —
profile: planted-absence 4; superseded-document 1; near-miss 3; spilled-table 2; figure-answer 2; scan 0; contradiction 2

## Brief
(what this is for · who answers · the documents · how to judge · what to produce · what not to do)

## Operational guidelines
1. Every instruction goes in prompting.md, dated.
2. Every decision goes in pivot.md with a yes or no, who, and when.
3. file-index.md is kept current; a document's digest is recorded when it is added.
4. Pages are read from the PDF; quotes are copied exactly.
5. A run never edits actuals/; a person never edits runs/.
6. Every actual carries verified-by, verified-on and confidence in its front matter.
```

The front matter is what a program reads. The brief is what a reader and the engine read. The guidelines are what an agent obeys. `state` and `profile` are new in this revision: the state says whether the pack may be scored against, and the profile says which failure modes it covers (section 10).

### `prompting.md`

Every instruction, in order

```
## 2026-09-08 · brief installed as version 2
## 2026-09-10 · to the readers of actuals/twin
Correct the twin read of every page against the PDF, following section 7 of the design. Two readers per page; disagreements to the resolver.
## 2026-09-10 · to the readers of actuals/findings
Write the finding in the skill's finding shape. Quote copied from the page. Confidence UNSURE where you would not sign it.
```

On a live project these are the prompts given to Lumina or an agent. On a verified project they are the instructions given to the people writing the actuals.

### `pivot.md`

Every decision, with a yes or no; and the agreement record

```
## Method
Two readers per file, independent, from the documents; resolver: head of QA. — yes, Sanjeeya V, 2026-09-10

## Agreement
| stage | files | both readers agreed | resolved by resolver | still UNSURE |
| twin | 121 | 109 | 12 | 0 |
| findings | 124 | 98 | 16 | 10 |

## 21 · CLD-09-13 · residency is answered by the deployment posture
… COMPLIANT resting on dossier p61. — yes, Sanjeeya V, 2026-09-07

## 34 · BCD-09-1 · split
claude-opus-5: COMPLIANT; gpt-5.6-terra-pro: PARTIALLY COMPLIANT. Left for a domain reviewer. — no, not settled, 2026-09-10
```

Disagreements between readers, rules changed mid-way, rows a reviewer overrode, every "not settled", and the agreement table that is the data-correctness measure of the pack. An actual not backed by a pivot entry or a verified-by line is not an actual.

### `file-index.md`

Every file, its standing, and its digest

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| documents/supporting/ZUCI_ABB-IT-Dossier-V4.pdf | SUPPORTING | 4 | sha256:fcaefa55… | — | — | 2026-09-10 | 2026-09-10 | 7.3 MB | technical dossier; primary evidence |
| actuals/twin/ZUCI_ABB-IT-Dossier-V4.pdf/page-027.md | ACTUAL | 2 | for sha256:fcaefa55… | — | reader A, reader B; resolved | 2026-09-10 | 2026-09-12 | 3 KB | corrected read; table fixed |
| runs/2026-09-10-a/findings/BCD-02-2.md | RUN | — | — | — | — | 2026-09-10 | 2026-09-10 | 6 KB | Lumina's finding, run a |

Roles are SOURCE, SUPPORTING, SKILL, ACTUAL, RUN, TEMPLATE, OUTPUT, ARCHIVE. A document's digest is recorded when it is added; every twin actual and finding actual names the digest of the document it was written for. When a document is re-issued, the checker lists every actual whose digest no longer matches, and those actuals are stale until re-verified.

---

## 4 · The stages: what Lumina writes, what the actual is, how they are compared

`run` marks what the engine writes; `actual` marks the verified truth. Tolerances for the comparisons are in section 9.

### `documents/`

**Source and supporting, exactly as supplied**

The inputs, unchanged, in two folders by role. A superseded revision stays in `supporting/` so a run can be checked for not citing it. Nothing in this folder is ever edited; a new version of a document is a new file with the old one marked superseded in `file-index.md`. Filenames are kept as supplied, spaces included; the index is where they are described.

### `skills/`

**The skill file, one per skill, in Lumina's format**

```
---
skill: compliance-assessment
title: Compliance assessment
intent: Judge each requirement against the supporting evidence, and cite what it rests on.
shape: ASSESSED_REGISTER
grain: one requirement
scale: COMPLIANT, PARTIALLY COMPLIANT, NOT COMPLIANT, NOT ADDRESSED
recommend-when: PARTIALLY COMPLIANT, NOT COMPLIANT
absence-policy: Report "the documents do not address this". Never answer from general knowledge.
reading-needs: tables
world-knowledge: Not permitted.
---
# Compliance assessment
## Steps
| # | Operation | Parameters |
| 1 | UNDERSTAND | grain=row, id=ABB Control #, question=Questions > Control Description, group=Domain |
| 2 | SPLIT | field=question, separator=<br> |
| 3 | CLASSIFY | field=question, labels=SUPPLIER, CUSTOMER, THIRD PARTY, into=class, guide=… |
| 4 | RETRIEVE | query=question |
| 5 | ASSESS | only=class:SUPPLIER |
| 6 | LINK | on=evidence, type=rests on the same evidence as |
| 7 | GENERATE | — |
## The rule
(prose)
## Units            ← new in revision 3, section 5
## Labels           ← new
## Finding shape    ← new
```

**actual** The skill file is itself an actual: it is what a person says the skill is. Its steps declare the plan, its scale declares the verdicts, its rule is what the judge reads, and its three new sections declare how units are identified, which labels exist, and what a finding for this skill contains. A project copies the skill files it uses so the archive is self-contained.

**Compared:** a run's plan must be composed from these steps; a run's verdicts must be on this scale; a run's findings must carry the sections the finding shape declares.

### `twin/`

**Document Twin: every page of every document**

```
---
document: ZUCI_ABB-IT-Dossier-V4.pdf
for-document: sha256:fcaefa55…
page: 27
tier: TEXT_LAYER
read-by: Argon via docling/2.126.0
laid-out-as-a-table: true
verified-by: reader A; reader B; resolved by head of QA
verified-on: 2026-09-12
verification: corrected
confidence: SURE
---
## 1.5.3 Resiliency Objectives

| Objective | Target |
| --- | --- |
| RPO | Near-zero (replication is continuous and near real-time) |
| RTO | Minutes, depending on automation and pre-warmed standby capacity |

> Zuci / Intics / ABB Confidential · Page 27
```

**run** One file per page: front matter saying how it was read, then the page as Markdown with headings, paragraphs, tables, checkboxes, figures described, and header and footer as quotes.

**actual** The same file, corrected by a person against the document, for every page, following the writing rules in section 7. The front matter gains `for-document`, `verified-by`, `verified-on`, `verification` and `confidence`. `verification` is one of `corrected` (a person changed it), `read-through` (a person read it against the document and changed nothing), or `unread` (nobody has looked; it is not an actual yet). A page that says `unread` is never scored, and the checker counts them so the gap is visible.

Beside the pages, `derived/<document>.md` holds the units a source asks and the sections a supporting document states, in the list format Lumina writes them, and `section-map.md` the whole map. The actual for a source's units is the source cut correctly under the skill's unit rule (section 5).

#### How the units are grouped

The units of a source are its knowledge units, and their grouping is part of the truth, not a display choice. A derived actual keeps the hierarchy the source has: the document, then the source's own grouping (a register's Domain, an RFP's section, a contract's clause family), then each control or clause with its id, name and description, then the question units under it. Every unit line is still Lumina's own line, `- id | page | group | question`, so a run and the actual diff line by line; the headings above the lines carry the hierarchy.

```
## Units

### Business Continuity & Disaster Recovery · 12 controls · 20 units

**BCD-02 · Identify Critical Assets** — Mechanisms exist to identify and document the critical systems… (ERL row 2)
- BCD-02-1 | 2 | Business Continuity & Disaster Recovery | Is the solution onboarded to CommVault and Disaster Recovery service?
- BCD-02-2 | 2 | Business Continuity & Disaster Recovery | Have you identified the RTO and RPO for the application?
…
```

For a supporting document the grouping is the document's own sections: `section-map.md` and the derived file list each section with its page range, what it states and what it does not, in document order, nested only as deep as the document's headings go. A source with several sheets or parts groups by sheet or part first.

**Compared:** the set of unit ids and their group are exact; the control's id, name and description above them are exact; question text by similarity (section 9).

**Compared:** per page, text similarity above the tolerance; every table with the same rows and cells; every figure sentence present; header and footer as quotes, not body. Per document, every derived unit id and question equal; every section's from-to overlapping.

### `detection.md`

### `plan.md`

**Plan of Action: the use case and the steps**

```
---
skill: compliance-assessment
confidence: HIGH
candidates: compliance-assessment (HIGH); question-answer (LOW)
---
# Plan of Action · version 1
| # | Operation | What it does on this project | Example |
| 1 | UNDERSTAND | Read every row of the register — 124 units by "ABB Control #", grouped by "Domain" | Row BCD-02-2 becomes the unit "Have you identified the RTO and RPO…" |
| 2 | SPLIT | 52 rows hold several questions; each becomes its own unit | CLD-09 holds 14 |
| … |
```

**run** Detection says which skill the project is and why; the plan is the skill's steps made concrete for this project, with examples and a cost. **actual** The skill a person says this project is, and the plan a person would approve; usually the skill's steps with the project's own parameters, so writing it is confirming, not composing.

**Compared:** detected skill equals the actual; the operation sequence equals the actual; each step's parameters cover the actual's.

### `findings/`

**Business Twin: one finding per unit, in the skill's finding shape**

```
---
item: BCD-02-2
for-document: sha256:fcaefa55…
question: Have you identified the RTO and RPO for the application/ solution?
group: Business Continuity & Disaster Recovery
addressed: true
verdict: COMPLIANT
source: ZUCI_ABB-IT-Dossier-V4.pdf, page 27
section: 1.5.3 Resiliency Objectives
cites: ZUCI_ABB-IT-Dossier-V4.pdf, page 27; ZUCI_ABB-IT-Dossier-V4.pdf, page 25
verified-by: reviewer name; resolved by …
verified-on: 2026-09-12
confidence: SURE
---
# BCD-02-2
**Have you identified the RTO and RPO for the application/ solution?**
COMPLIANT

## What the documents say
The RPO is near-zero for databases, Elasticsearch and critical data, achieved by continuous replication; the RTO is minutes, depending on automation and pre-warmed standby capacity.

## Why this verdict
Both objectives are identified and stated with their basis [ZUCI_ABB-IT-Dossier-V4.pdf, page 27]. The failover design that delivers them is on the preceding page [ZUCI_ABB-IT-Dossier-V4.pdf, page 25].

## Evidence
> RPO: Near-zero (replication is continuous and near real-time)
> — ZUCI_ABB-IT-Dossier-V4.pdf, 1.5.3 Resiliency Objectives, page 27

## Also considered
- ZUCI_ABB-IT-Dossier-V4.pdf, 1.5 Disaster Recovery and Business Continuity, page 25
```

**run** Lumina writes this file for every unit, plus "What was said of each page" and "How this was found". An absence has `addressed: false` and says why; a not-applicable says whose it is.

**actual** The same file written by a reviewer, in the sections the skill's finding shape declares: the verdict they would sign, the page and section it rests on, the quote copied from the page, what the documents say and why in their words, and for a partial or negative verdict what is met and what is missing. "How this was found" belongs to a run and is absent from an actual. A unit the reviewer cannot settle carries `confidence: UNSURE` and stays in the folder.

**Compared, in this order, so a miss is attributed to the stage that caused it:**

1. verdict equal, or one step off on the scale (reported separately);
2. the run's source page equals the actual's, or lies in the actual's cites;
3. the run's quote is on the page the run cites, checked against the twin actual;
4. every reference in the run's "why" points at a page in the actual's cites;
5. an actual absence is a run absence, never a verdict; an actual not-applicable is a run not-applicable with the same whose;
6. for a partial verdict, the run's missing element names the actual's;
7. the prose sections are judged, not diffed: a judge model scores the run's "what the documents say" against the actual's for the same facts, and that score is reported on its own line, never mixed with the exact fields above.

Where 2 fails, the run's "How this was found" says which pass lost the page, and the scorecard counts it under that pass.

### `graph.md`

**How the findings relate**

**run** Edges between findings resting on the same evidence, and what each document claims about itself. **actual** Optional in the first packs; where a reviewer knows two controls are one finding, the edge is written, otherwise the file says "not verified" and is not scored.

### `report/`

**The deliverable**

```
# The register answered
## Counts by group
| group | COMPLIANT | PARTIALLY COMPLIANT | NOT COMPLIANT | NOT ADDRESSED | NOT APPLICABLE |
## Rows, in register order
| id | question | verdict | citation | section | quoted sentence | one line of reasoning |
## Controls that need attention before submission
```

**run** `report.md` and the exports the skill declares: Excel, PDF, deck. **actual** The report a reviewer would send. Where the customer has its own response template, the filled template is the report actual and `report.md` is derived from it; where there is none, `report.md` is the actual.

**Compared:** row for row on id, verdict, citation and section; counts equal; the template's cells equal the run's export where both exist.

---

## 5 · Per-skill declarations: units, labels, finding shape

Three things differ by skill and decide how every actual is written. They live in the skill file, so a new skill declares them once and the team, the engine and the checker read the same text. The eight skills in the engine today and the shapes they declare:

| skill | unit and its id | labels | scale or answer | finding shape: sections after the verdict |
|---|---|---|---|---|
| compliance-assessment | one requirement; id = the register's control number, split questions -1, -2 in order; Nil answers the control text | SUPPLIER, CUSTOMER, THIRD PARTY | COMPLIANT · PARTIALLY · NOT · NOT ADDRESSED · NOT APPLICABLE | What the documents say · Why this verdict · Evidence · Also considered · Met · Missing |
| question-answer | one question; id = Q-nnn in list order, or the list's own numbering | — | answer; in-documents yes/no | Answer · Evidence · Also considered · Not in the documents (nearest page) |
| version-compare | one clause of the older version, plus clauses only in the newer; id = clause number | — | ADDED · REMOVED · CHANGED · UNCHANGED; material yes/no | Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters |
| tender-analysis | one requirement of the tender; id = the tender's clause or R-nnn | MANDATORY, DESIRABLE, INFORMATION | per the skill file | What is asked · Where · Our position · Evidence |
| bid-evaluation | one criterion per bidder; id = criterion-bidder | — | score on the declared scale | Score · Basis · Evidence · Gaps |
| obligations-and-deadlines | one obligation; id = O-nnn in document order | OURS, THEIRS, MUTUAL | date or trigger; owner | Obligation · Who · When · Evidence · Consequence |
| parts-costing | one part or line; id = the part number or line number | — | value; unit; source | Value · Unit · Evidence · Conflicts |
| cde-classification (planned) | one item; id from the source | — | COMPLIANT · DEVIATION · EXCEPTION | Label · Precedents (ids from history) · Rationale · Evidence; needs documents/supporting/history |

Any new skill fills the same four columns in its skill file before its first pack is written. The names in the last column are the section headings of its finding file, so a finding actual for that skill is the file with exactly those sections.

**Splitting rule, stated once per skill.** What separates several questions in one cell (a line break, a bullet, a semicolon), what counts as a placeholder (Nil, N/A, none, a dash), and what a placeholder falls back to. Two people cutting the same register must get the same 124 units, or nothing downstream compares.

---

## 6 · Document types and what a page is

Pages are counted from the first page of the file, starting at 1, and the printed number is ignored. That covers PDFs. For everything else:

| type | what a "page" is | twin actual file | citation form |
|---|---|---|---|
| PDF | the physical page | page-NNN.md | doc.pdf, page N |
| Spreadsheet (xlsx, csv) | one sheet is one page, in workbook order; rows are cited within it | page-NNN.md per sheet, the sheet as a Markdown table with the row number as the first column | doc.xlsx, sheet ERL, row 14 |
| Word, text, Markdown | the twin's own pagination as read; the twin actual carries it | page-NNN.md | doc.docx, page N |
| Image, scan of one page | one page | page-001.md, vision read, figure rules apply | doc.png, page 1 |
| Email, message export | one message is one page, in thread order | page-NNN.md with from, to, date in front matter | thread.eml, page N |
| Presentation | one slide is one page | page-NNN.md | deck.pptx, page N |

---

## 7 · Writing rules for twin actuals

One rule per hard case, so a hundred pages are corrected one way. Each rule is what the reader writes and what the comparison then expects.

**Headings and body**
Headings as Markdown headings at the level the document shows. Body text as paragraphs, one per paragraph on the page. Line breaks inside a paragraph are joined.

**Headers, footers, page furniture**
As blockquotes at the top and bottom, never as body. Page numbers, confidentiality marks and document titles that repeat on every page are furniture.

**Tables**
Markdown tables with one header row. A merged cell is repeated in every row it spans. A cell with several lines is one cell with the lines joined by "; ". A table that spills to the next page is written whole on the page it starts, and the next page carries a one-line note "Table continued from page N" and no repeat of the rows.

**Figures and diagrams**
A line with the figure's caption, then one sentence per statement the figure makes, in reading order, under it. Labels inside boxes are quoted as written. A figure with no words is one line saying what it shows.

**Scans and handwriting**
Transcribed as read. A word that cannot be read is written as `[illegible]`. A page whose reading is uncertain is UNSURE. The tier in front matter says `scan`.

**Checkboxes and forms**
A checked box is "[x] label", an unchecked one "[ ] label". A form field is "label: value".

**Multi-column and rotated pages**
Columns are written in reading order, first column then second. A rotated page is written as it reads when turned.

**Empty and cover pages**
An empty page is a file whose body is the single line "(empty page)". A cover page is written like any other.

**Numbers, units, dates**
As written on the page. Never normalised in the actual; normalisation belongs to the comparison (section 9).

---

## 8 · The verification standard

This is what makes the actuals data, not opinion. It applies to every actual file.

1. **Two readers per file, independent.** Each reads from the document, not from the other reader's work and not from a run's output except as a starting draft that is marked as such.
2. **A resolver settles every disagreement** and records it in `pivot.md` with a yes. A file with an unresolved disagreement is UNSURE.
3. **Agreement is recorded** per stage in `pivot.md`'s agreement table: files, agreed, resolved, still UNSURE. A pack whose agreement on findings is below the threshold set in bootstrap (proposed: 85 percent before resolution) is not signed until its readers have been re-briefed and the low-agreement files re-read.
4. **Every actual carries** `verified-by`, `verified-on`, `confidence` and, for twin pages, `verification`. A file without them is not an actual.
5. **The checker runs before hand-over.** It enforces the format rules and the digests; a pack that fails is not handed over.
6. **Pack states:** draft (being written), verified (checker passes, agreement recorded), signed (a named person has signed it in bootstrap). Runs are scored against verified or signed packs only.
7. **A domain reviewer signs.** For ABB that is someone from Zuci's delivery team or ABB, not the engine's authors. The signature line in bootstrap says who.

---

## 9 · Comparison tolerances

Named in one place so every scorecard means the same thing. Numbers marked "proposed" are set here so that the first pack can measure whether they are right; they are changed by a pivot entry, not silently.

| what | match means | method |
|---|---|---|
| Twin page text | similarity ≥ 0.95 (proposed) | character-level similarity after removing whitespace, markup and furniture; furniture compared separately as present or absent |
| Twin table | same row count and every cell equal after normalisation | cells compared with whitespace collapsed, case ignored, numbers and units normalised (24 h = 24 hours) |
| Twin figure | every sentence of the actual's figure block present in the run's | containment after normalisation |
| Derived units | id set and group equal; control id, name and description equal; each question text similarity ≥ 0.9 (proposed) | exact on id, group and control; similarity on text |
| Section | title similarity ≥ 0.8 and page ranges overlap | — |
| Detection | skill equal | exact |
| Plan | operation sequence equal; each actual parameter present in the run's | exact on operations; key-value containment on parameters |
| Verdict | equal; one step off reported separately | exact on the declared scale |
| Resting page | equal; or within the actual's cites reported as "right section" | exact on document and page |
| Quote | on the cited page | containment in the twin actual after removing everything but letters and digits; for a figure, containment in the figure block |
| Answer prose | scored 0 to 1 by a judge with the actual as reference: every fact in the run's answer is in the actual or on a cited page, and no fact the actual calls missing is claimed | reported on its own line; never added to the exact fields |
| Absence and not-applicable | equal kind; for not-applicable, whose equal | exact |
| Report rows | id, verdict, citation, section equal; counts equal | exact |

Numbers, units and dates are normalised only in the comparison: "24 h", "24 hours" and "twenty-four hours" compare equal; "2 March 2026" and "2026-03-02" compare equal. The actual keeps the page's own wording.

---

## 10 · Pack profile: the hard cases a pack must carry

A pack that has only easy rows tests nothing that fails. Each pack declares in bootstrap which failure modes it carries and how many rows exercise each. A pack is not signed with fewer than three of these, and the set across packs for a skill must cover all of them.

| failure mode | what the pack must contain | what it catches |
|---|---|---|
| planted absence | a unit nothing in the documents answers, with near words present elsewhere | answering from silence or good practice |
| superseded document | an older revision in supporting/, marked superseded, that answers a unit differently | citing the wrong revision |
| contradiction | two current documents that disagree on a unit | picking one without naming the conflict |
| near miss | a page about the same area that does not state the control | the gate and the judge accepting a neighbour |
| stated absence | a page that says the control is not implemented | treating a stated failure as silence |
| spilled table | a table across a page break whose answer is on the second page | the reader taking a row as a header |
| figure answer | an answer only inside a diagram | figures dropped by the trust gate |
| scan or handwriting | a page with no text layer | vision read quality |
| packed cell | a source row with several questions | splitting |
| placeholder question | a Nil or empty question with a real control text | falling back to the control |
| not the supplier's | units about the customer's or a third party's tooling | labelling |
| answer sheet | a document that answers most units by design | hub suppression removing it |

---

## 11 · The scorecard and noise

```
# runs/2026-09-10-a/run.md
skill: compliance-assessment · pack: abb-intics (signed 2026-09-14)
model: cyankiwi/gemma-4-26B-A4B-it-AWQ-4bit · reader: docling 2.126 · engine: sweep-6 · 15 min
runs: 3 (a, b, c) · this file: a · spread across the 3 runs: overall ±4, right page ±3

| stage      | actuals | matched | wrong | not settled | where it was lost                          |
| twin       | 121 pp  | 117     | 4     | 0           | 2 tables, 2 figures                        |
| derived    | 124     | 124     | 0     | 0           |                                            |
| detection  | 1       | 1       | 0     | 0           |                                            |
| plan       | 7 steps | 7       | 0     | 0           |                                            |
| findings   | 124     | 77      | 37    | 10          | search 12 · gate 14 · judge 8 · label 3    |
|   verdict one step off              | 6  |
|   right section, wrong page         | 4  |
|   answer prose (judged, 0–1)        | 0.81 |
| report     | 124 rows| 77      | 37    | 10          |                                            |
```

The schema is the same for every skill and every pack, so an engine change is judged on all packs at once. Two rules against fooling ourselves: every change is run three times and the spread is printed beside the score, and a change smaller than the spread is not a change. UNSURE rows are counted in "not settled" and never in matched or wrong.

---

## 12 · Templates, spreadsheets and the converter

A team of many people will not hand-write Markdown files with front matter, and they should not have to.

- `templates/` in every archive holds an empty skeleton per stage and per skill: a twin page, a derived list, a finding in the skill's finding shape, a report, each with every front-matter field named and a one-line comment saying what goes in it.
- Excel labelling sheets, one per stage, with the same columns as the files' front matter and sections. Readers work in the sheet.
- A converter, `lippy import <sheet>` and `lippy export <archive>`, moves between the sheets and the files without loss, so the files stay the truth and the sheet stays the tool.
- `lippy check <archive>` enforces sections 5 to 8 and the digests; readers run it before hand-over. `lippy compare <archive> <run>` writes the scorecard in section 11. Both read only files; neither needs Lumina running.
- Starting drafts from a run are allowed and marked. A twin page may start as Lumina's read and a finding as Lumina's finding; the front matter says `drafted-from: runs/2026-09-10-a` and the reader's job is to correct, not to write from nothing. A file still equal to its draft with `verification: read-through` is a real actual; one with `unread` is not.

---

## 13 · Governance

- **Who may change an actual:** a reader, through the resolver; every change is a new version in `file-index.md` and an entry in `pivot.md`. No change without a pivot entry.
- **Disputes:** anyone, including the engine's authors, may raise one by adding a "not settled" entry to `pivot.md` naming the file, the two positions and the evidence. The resolver closes it with a yes and a date. Engine work never tunes toward an unsettled row.
- **UNSURE budget:** a pack may be signed with at most 10 percent of its findings UNSURE (proposed); above that it stays verified, not signed, and cannot be the only pack a change is judged on.
- **Signing:** a named domain reviewer, not an engine author, signs in bootstrap. Re-signing is required when a document is re-issued or the skill file changes.
- **Reviewer promotions:** a finding accepted on Lumina's Findings screen can be promoted into `actuals/` with one action; it enters as a draft with the reviewer as one of the two readers, and needs the second reader before it is SURE.

---

## 14 · Confidentiality and storage

- Customer documents are customer confidential. An archive that holds them lives in a private repository with named access, and is never attached to a public artifact, chat or ticket.
- `bootstrap.md` carries a classification line (internal, customer-confidential, public-synthetic) and the checker refuses to export a customer-confidential archive as a zip without a named recipient in `pivot.md`.
- Synthetic packs, like the NorthPharma set, are public-synthetic and are the packs shared with partners and used in demonstrations.
- Retention follows the customer agreement; the archive records the date after which its documents must be removed, and the checker warns past it.

---

## 15 · Adding a skill

1. Write `skills/<skill>.md`: intent, shape, grain, scale, absence policy, steps, the rule, and the three declarations of section 5: units and their id, labels, finding shape.
2. Generate the templates for it: `lippy templates <skill>` writes the empty finding skeleton in its finding shape and the labelling sheet.
3. Put the documents in `documents/source` and `documents/supporting`; twin actuals for documents shared with an existing project are reused by digest.
4. Write `actuals/detection.md` and `actuals/plan.md`: the skill's steps with this project's parameters.
5. Write the finding actuals and the report actual under the verification standard; declare the pack profile; pass the checker; get it signed.
6. Run Lumina three times; the runs land in `runs/`; the scorecard says what to fix and at which stage.

---

## 16 · The ABB archive under this design

| part | from the project now | needs a person |
|---|---|---|
| documents/ | the register and the three PDFs by role, digests recorded | — |
| skills/ | the compliance-assessment skill file as it stands | add the units, labels and finding-shape sections; confirm |
| actuals/twin | 121 page drafts from the Document Twin, each marked drafted-from and unread | two readers per page under section 7; diagram and table pages first |
| actuals/twin/derived | the 124 units cut from the register under the skill's unit rule | read-through |
| actuals/detection, plan | the skill and its seven steps with this project's parameters | approve |
| actuals/findings | 124 skeletons in the finding shape with the key's verdict, page and quote, drafted-from the key; the 7 and 10 September decisions in pivot; 10 rows UNSURE | a reviewer writes "what the documents say" and "why" for each; settles the 10 split rows; a Zuci or ABB reviewer signs |
| actuals/report | rows and counts derived from the findings | fill ABB's own response template as the Excel actual |
| runs/ | the last three runs as run folders with scorecards | — |
| profile | planted absence, near miss, packed cell, placeholder, not the supplier's, answer sheet, figure answer are all present in ABB | declare the counts in bootstrap |

Throughput, how long a page or a finding takes two readers, is not known and is not guessed here. The first twenty pages and twenty findings are timed, and the plan for the rest is made from that measurement.

**What revision 1 got wrong, so it is not repeated.** It organised the truth around a scoring script's seven tables instead of Lumina's own files, so a run and its truth could not be put side by side, and its ABB build picked quotes by word matching with answers no reviewer had written. Revision 2 fixed the shape. Revision 3 adds what a team needs to produce the truth the same way every time: the verification standard, the writing rules, the per-skill declarations, the tolerances, the templates and the governance.

---

## 17 · Open decisions

- The agreement threshold (proposed 85 percent) and the UNSURE budget (proposed 10 percent): confirm or change before the first pack is signed.
- Whether the dossier's 99 twin pages are corrected in full before the first scored comparison, or the cited and hard pages first with the rest marked unread and scored later. The design allows both; the state is visible either way.
- The list of planned skills beyond the eight named in section 5, so their declarations are written before their packs.
- The name. "Lippy Archive" is used as written on the whiteboard; the first real project's bootstrap should say what it stands for.
