---
skill: bid-evaluation
version: 6
status: current — live copy; snapshot preserved at skills/bid-evaluation/skill-versions/v6.md
supersedes: v5.md (see skills/bid-evaluation/skill-versions/ for immutable history)
title: Bid evaluation
intent: Read what a bidder's own submission and/or the evaluation committee recorded for
  that bidder — company/eligibility facts, financial standing, eligibility, awarded
  technical score, final price, deviations — one field/section at a time, and rank the
  bids by the awarded score where a committee determination exists.
shape: RANKED_COMPARISON
grain: one field or section of the bidder's own document (or the committee's record of
  that bidder) that states an independently-checkable fact — chosen by the document's own
  structure, per Module 1 (UNDERSTAND). Five fields are always required regardless of
  document structure, since they are what the ranking (Module 6) is built from: Score,
  Eligibility, Price, Deviations, Basis.
declines-with: not addressed
absence-policy: A bidder in the register with no committee record in the documents is
  reported as not addressed, cites nothing, and is not ranked. A bidder the committee
  rejected before scoring is answered with the committee's own determination and is not
  ranked either — a bid rejected at screening and a bid that scored badly are different
  facts, and silence is never turned into a zero. A field/section this skill expects
  (Module 3's required fields) that the document simply does not contain is "not stated in
  the record" for that one field, never inferred from a different field.
reading-needs: tables
world-knowledge: Not permitted. A bidder's reputation, size or past work is not evidence
  unless the record itself states it.
modules:
  - core-rules
  - workflow
  - required-fields
  - finding-format
  - ranking
  - validation
  - edge-cases
---

# Bid evaluation

This skill reads what one bidder's own document(s) and/or a buyer's evaluation committee
recorded, one field/section at a time, then ranks bidders by awarded score where a
committee determination exists. It is organized as independent modules, mirroring
`skills/version-compare/skill.md`'s structure — Module 1 states what never changes
per-document; Modules 2–7 apply it.

---

## Module 1 — Core rules (invariant across every bidder, every document)

**One finding per field/section, not one finding per bidder.** Each unit gets its own
finding: the field/section name, the fact as the document states it (quoted or closely
paraphrased in the document's own words), and — for the five required fields (Module 3)
— the specific handling that field demands. A bidder's overall answer is the sum of its
own fields' findings, never a single run-on paragraph covering the whole document.

**Answer for this bidder only, from this bidder's own document(s).** Another bidder's
record is not evidence here, whatever it claims — two responses in one tender each
described themselves as the highest-scored, and only each bidder's own record read
separately settles it.

**A fact is read, never computed.** No adding of per-criterion marks, no correcting of
arithmetic the record itself performed, no inferring one field's value from another. A
field is "not stated in the record" only after the whole document has been read — the
document is handed over entire, so "the document does not say" always means the whole
document, never its first pages.

**A figure the record states but the copy does not render legibly is not "not stated in
the record."** Where the source arrives as a scanned or otherwise machine-extracted
document and extraction renders a figure internally inconsistent or implausible against
the surrounding, cleanly-extracted figures in the same record, that field is reported as
not reliably legible from the copy provided — distinct from the record being silent —
and flagged for verification against the original document. Never guess the figure,
never silently recompute or reconstruct it from other fields to make it usable, and never
fold it into "not stated."

**No commercial, legal, or ranking judgment appears outside Module 6.** A field's finding
states only what the document says about that field. Whether that makes the bidder
strong, compliant, or competitive is a ranking-relevant judgment reserved for the five
required fields (Module 3) and Module 6 — an informational field (e.g. a company-profile
fact) is reported, never scored.

---

## Module 2 — Workflow

| # | Stage | What happens |
|---|---|---|
| 1 | UNDERSTAND | Identify the bidder (via the buyer's register if supplied, per Module 7; otherwise one bidder per RESPONSE-named document, its own first page read for its name). Read the whole document once to identify its own distinct fields/sections (e.g. company profile, financial standing, project experience, team/equipment, certifications, statutory declarations, eligibility criteria, price, deviations) — grain is fixed per document before findings are written, per its own structure, not a fixed template imposed on every document. |
| 2 | RETRIEVE | For each identified field/section, retrieve the exact wording from this bidder's own document/record — never from memory of a similar field seen in another bidder's document. |
| 3 | ANSWER | Apply Module 1's per-field rule to every field identified in stage 1, plus every one of Module 3's five required fields even if stage 1 did not surface it as its own section (in that case, answer it "not stated in the record" explicitly — a required field is never silently skipped). |
| 4 | VALIDATE | Run Module 5's checklist before treating any bidder's findings as final. |
| 5 | RANK | Assemble the ranking view (Module 6) from the five required fields only — informational fields never enter the ranking. |

---

## Module 3 — Required fields (always answered, regardless of document structure)

These five carry the ranking-relevant facts and are answered for every bidder even when
the document's own structure does not name them as their own section:

- **Score** — the awarded technical score as a bare number, **the record's total, never a
  single criterion's score**: on a score sheet the total column is the score, and a
  criterion mark opening the answer puts the wrong number into the ranking. A score the
  committee marked "for record purposes only" on a bid it disqualified is still recorded
  here, disqualification noted alongside. **Where the committee awarded no numeric
  score**, this field instead records the committee's own overall determination, quoted —
  TECHNICALLY QUALIFIED, DISQUALIFIED AT ELIGIBILITY SCREENING, whatever its words were.
  A determination without a number ranks nowhere (Module 6) — that is correct, not an
  omission.
- **Eligibility** — the committee's determination, with the criteria that failed and why,
  quoted. This field reports each named criterion's compliance status as the record
  states it — never a status computed by counting how many criteria failed. A single
  failed criterion has disqualified a bid in one record and, elsewhere in the same
  tender, a different single failed criterion did not — eligibility outcomes are the
  committee's own judgment call on each criterion's materiality, not an arithmetic
  threshold this skill applies itself. The Score field's determination (qualified/
  disqualified/qualified-with-deviations) is what the answer rests on; this field is
  evidence for that determination, never a recomputation of it.
- **Price** — the final evaluated price as the record states it. Where a normalized or
  comparison figure stands beside the quoted one, the quoted contract price is the price
  and the normalization is mentioned as the record's own working. Where the record
  further separates the quoted figure into a base (pre-tax) amount and a tax-inclusive
  total — whatever it calls each, the label varies by record and is never a fixed
  vocabulary this skill enumerates (a "Contract Price," "Base Price," "Total Bid Value,"
  or otherwise) — the final, tax-inclusive quoted total is the price; a narrower base-only
  figure standing beside it, however labeled, is a component of that same quoted price,
  not a separate lower price, and is never substituted for or conflated with it.
- **Deviations** — what the committee flagged, or "none recorded".
- **Basis** — two or three sentences of reasoning a reviewer can check: why the Score
  field's determination follows from the record (the record's own remarks, quoted where
  they carry the reason), and where in the record each required field above was read —
  the section heading or page — so a reader can turn straight to it. Reasoning explains
  what the record says; it never adds what the record does not.

Every other field/section Module 2 stage 1 identifies (company profile, financial
standing, project experience, team/equipment, certifications, statutory declarations, a
supporting-documents checklist, or any other section a specific document happens to
carry) is answered the same way — field name, fact as stated, source location — but is
**informational only**: it carries no verdict, is never scored, and never enters Module
5's ranking. A document with no such sections beyond the five required fields (e.g. a
committee's own scoring record, rather than a bidder's self-declared submission) simply
has no informational findings — this is not a gap to fill.

---

## Module 4 — Finding format (one file per field/item, per bootstrap.md §4.1)

Every finding (Module 3's five required fields, and every informational field a
document's own structure carries) is its own file,
`findings/bid-evaluation/<source-document-name>/<Field>.md`, with this front matter and
body shape:

```yaml
item: <field name, e.g. Score, Eligibility, Price, Deviations, Basis, CompanyProfile>
question: <the question this field answers, phrased from this field's own description in
  Module 3 (required fields) or from the document's own structure (informational
  fields, per Module 2 stage 1) — never invented independently of this skill>
group: required | informational
addressed: true | false
verdict: STATED | PARTIALLY STATED | NOT STATED | NOT RELIABLY LEGIBLE | NOT APPLICABLE
source: <document filename, or NONE if addressed: false>
section: <heading or page the fact was read from, or "—" if addressed: false>
cites: <same as section, or "—">
for-document: <source-document-name>
skill-version: v6
verified-by: <reviewer name once HITL review runs, else "—">
verified-on: <date once HITL review runs, else "—">
```

Body, in this order:

- `# <item>` — the field name as the heading.
- The question, bolded, matching the front matter's `question` field exactly.
- The verdict word(s), on their own line.
- `## What the record says` — the fact as the record states it, quoted or closely
  paraphrased, in the reviewer's own words per bootstrap.md §4.1 — never invented, never
  blended with reasoning.
- `## Why this verdict` — one or two sentences tying the verdict word to what was (or
  was not) found, kept visibly separate from the quoted evidence above.
- `## Evidence` — the exact passage the finding rests on, as a blockquote, with its
  `[document, page/section]` citation directly beneath it. Omitted (or stating `(none —
  addressed: false)`) only when `addressed: false`.

**Verdict vocabulary, defined once here, never redefined per field:**

- **STATED** — the record answers this field's question in full.
- **PARTIALLY STATED** — the record answers part of the question but not all of it (e.g.
  Eligibility's criteria list is present but no headline determination, or the reverse);
  the finding's "What the record says" states exactly which part is present and which is
  missing.
- **NOT STATED** — the record does not address this field at all (Module 1's
  absence-policy).
- **NOT RELIABLY LEGIBLE** — the record states this field but a scanned/extracted copy
  does not render it usably (Module 1's OCR-legibility rule) — never merged with NOT
  STATED.
- **NOT APPLICABLE** — the field's own precondition never arose in this record (e.g.
  Price or Score when the committee's process ended at eligibility screening before any
  price/score stage was reached) — distinct from NOT STATED, which means the stage was
  reached but the record is silent.

A required field (Module 3) is never omitted regardless of verdict — even a NOT STATED
or NOT APPLICABLE required field gets its own file, so a reader can see the field was
checked, not skipped. An informational field is only created when the document's own
structure actually carries it (Module 2 stage 1) — there is no NOT STATED/NOT APPLICABLE
file for an informational field a document never had.

---

## Module 5 — Validation

- [ ] Every one of the five required fields (Module 3) has its own finding — none
      skipped, none merged into another field's answer.
- [ ] Score is a bare number (the record's total) or, if none was awarded, the
      committee's own quoted overall determination — never a computed or inferred value.
- [ ] No field's finding states something the document itself does not say.
- [ ] A figure reported NOT RELIABLY LEGIBLE is distinguished from one reported NOT
      STATED — the two are different facts (Module 1, Module 4).
- [ ] No informational field carries a verdict beyond STATED/PARTIALLY STATED/NOT
      STATED, is scored, or enters the ranking.
- [ ] Every non-NOT-STATED field quotes or closely paraphrases the record's own words in
      "What the record says," with a pointer to where in the record it was read.
- [ ] Every finding follows Module 4's exact front-matter and body shape — no field
      skips a required front-matter key or body section.

---

## Module 6 — Ranking (built from Module 3's required fields only)

One row per bidder in the register: the Score field's value (or the committee's
determination where none was awarded), the Eligibility field's determination, the Price
field's value, the passage each required field rests on, and the rank — computed from
Score values alone, ties level (Module 7), unscored and unrecorded bidders unranked.
Informational fields (Module 3, second paragraph) never appear in this ranking; they
remain available in each bidder's own findings for a reader who wants the fuller record.

A batch of documents that share no common tender/committee (each bidder's own,
unrelated tender, with no shared evaluation record) has no meaningful ranking at all,
regardless of whether individual bidders' Score/Eligibility/Price fields are answered —
Module 6 does not force a comparison where none of the required fields share a common
evaluator or criteria set; state this plainly rather than producing a table that implies
a comparison the documents do not support.

---

## Module 7 — Edge-case handling

| Edge case | Handling |
|---|---|
| Buyer's own bid-opening register supplied | The register (who submitted, which document holds their record — the `record` column) always wins over deriving bidders from document names. A register row whose record column names no document — registered, never submitted — gets no evidence and declines honestly. |
| No register supplied | Written by a program from the supporting/source documents whose names carry RESPONSE (or the run's equivalent source-document set): one bidder per document, the bidder's name read off its own first page and checked against it, the document as that bidder's record. Retrieval is a program matching that name, not a search — each bidder's item is handed exactly the pages of its own record; searching multiple responses for a name by keyword has found nothing on one corpus and the wrong document on another, while a register (or one-document-per-bidder convention) says which document to read all along. |
| A skill file naming one corpus's own column headings (`fields=C1,C2,C3,C4`) | Never done — a prior version of this skill did this and every field matched nothing on any real record. A skill file must never carry one corpus's column names. |
| A tie in Score | Declared, not broken. Two bids with the same awarded score stay level in Module 6; separating them requires a criterion that was never published, and applying an unpublished criterion is the thing a procurement challenge is won on. |
| Silence | Never a zero. A registered bidder with no committee record anywhere in the documents is not addressed, at the bidder level, not merely one field of it. |
