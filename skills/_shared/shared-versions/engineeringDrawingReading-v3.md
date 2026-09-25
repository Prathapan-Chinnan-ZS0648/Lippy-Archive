---
name: engineering-drawing-reading
version: 3
status: current — live copy; snapshot preserved at skills/_shared/shared-versions/engineeringDrawingReading-v3.md
supersedes: v2.md (see skills/_shared/shared-versions/ for immutable history)
kind: shared base layer — not a skill in its own right; never resolved directly by
  `fileIndex.md` or `RESOLVE`. A skill built on this layer references it explicitly in its
  own front matter (`builds-on: skills/_shared/engineeringDrawingReading.md`) and states,
  in its own Module 1, that this layer's rules apply before its own.
---

# Engineering-drawing reading — shared base layer

This project's use cases so far (`drawing-comparison`, `bom-extraction`) are both, at
root, the same underlying task: **read an engineering drawing set — a P&ID, a CAD
fabrication sheet, an electrical one-line diagram — and extract structured, checkable
facts from it**, whether the output shape is a comparison verdict or a Bill-of-Materials
line. Both skills were written independently and, without coordination, arrived at
materially the same discipline for handling this domain's recurring failure modes. That
convergence is itself the evidence this layer should exist: duplicated rules drift out of
sync with each other over time (one skill's wording gets refined during a correction, the
other's doesn't), where a single shared statement stays consistent by construction.

This is **not** main's `bootstrap.md`/`Bootstrap.md` pattern — main has no equivalent
layer, because its two use cases (`bid-evaluation`, `version-compare`) are genuinely
different domains (grading a bid response, diffing prose/tabular documents) that don't
share this kind of discipline. This layer exists because our two use cases, unlike
main's, *are* the same domain wearing two different output shapes. Building it is the
concrete difference between reproducing main's structure and designing our own for what
we actually have.

A skill that builds on this layer inherits every rule below as if it were the first part
of its own Module 1. It may add rules Module 1 never mentions (a verdict scale, a
materiality judgment, an absence policy specific to its own shape) but it may **never**
restate, loosen, or contradict a rule below — if a sample seems to need an exception, that
is a signal that either the sample was misread or this layer itself needs a documented
amendment (via the promotion bar, same as any skill change), never a silent per-skill
carve-out.

---

## 1. Position/tag is part of a unit's identity, not a display detail

Two units with byte-identical printed text at two different positions on the same sheet
(two grid nodes with the same member size, two breakers with the same relay symbol) are
two different units. A unit must never be matched to its counterpart, aligned across
revisions, or deduplicated by text content alone — position (grid reference, sheet-and-
breaker-number, tag-and-suffix) is read independently and is part of what makes the unit
the unit it is.

*Confirmed in: `drawing-comparison`'s "repeated-callout ambiguity" (member sizes recurring
at multiple grid nodes); `bom-extraction`'s tag-exactly-as-printed rule and its
`legend-dependent-tag` edge case (a project's own two-letter prefix distinguishing
otherwise-similar tags).*

## 2. The drawing's own legend/tagging table is the sole authority for classification

A unit's category, meaning, or grammar is read from that drawing set's own published
legend, nomenclature sheet, or tagging table — never assumed from a convention that held
on a previous sample, however common that convention usually is. Where a drawing set
publishes no legend of its own, the classification scheme must be confirmed from a stated
project standard before use, and that fact is recorded, not silently carried over from
elsewhere.

*Confirmed in: `drawing-comparison`'s reliance on a sheet's own Notes-box symbology;
`bom-extraction`'s legend-dependent-tag edge case, confirmed twice independently — once
against a P&ID's Legend1/Legend2 sheets, once against an electrical set's GE01/GE02
tagging table.*

## 3. A sheet's own marker or drawing convention is a hint, never proof

A revision cloud, an asterisk, a dashed line weight, a "(FUTURE)" label, a self-annotation
scheme of any kind — these narrow where to look. None of them, alone, is sufficient
grounds to include, exclude, or classify a unit. Every unit is independently checked
against the actual content (the sheet's own text/figure, and at least one other sheet
when the drawing set has one) regardless of what its own marker claims, because a
marking scheme that is usually reliable is not the same fact as a marking scheme that is
complete — and this domain has already produced confirmed counterexamples on both
skills' first samples.

*Confirmed in: `drawing-comparison`'s "self-annotation"/"revision-cloud-untagged" edge
case (two changed callouts carried no cloud at all); `bom-extraction`'s
future-vs-current-equipment edge case (a whole equipment block carried no "FUTURE" text
anywhere, only a dashed line weight, confirmed future only by cross-referencing a third
sheet).*

## 4. Absence and negative facts require an active search, not an inference

A unit is REMOVED, excluded, or reported not-present only after the place it would appear
has actually been checked and found empty — never because it simply wasn't mentioned in
whatever was read first. "Not yet examined" and "confirmed absent" are different facts and
must never be reported as if they were the same one.

*Confirmed in: `drawing-comparison`'s "no verdict from one side" core rule;
`bom-extraction`'s absence-policy (a tag is extracted only when the drawing itself names
it, never inferred from a symbol with no legible tag).*

## 5. A contradiction between two sheets is recorded, never silently resolved

When two sheets describing the same unit disagree on one specific fact — a wire count
here, a bus material there, a pump number in one place and a VFD number in another —
neither is preferred by default (not "the more detailed-looking sheet," not "the one read
first," not "the one that looks more authoritative"). The finding states both readings,
flags the contested field `confidence: UNSURE`, and leaves the rest of the finding at
whatever confidence its other, agreeing facts independently earned. Resolving the
discrepancy — if it ever happens — is a distinct, later event with its own record, not
something folded silently into the original extraction.

*Confirmed in: `drawing-comparison`'s "absence detected by a second, independently-run
attempt" edge case (a correction verified independently, not accepted on a second pack's
word); `bom-extraction`'s "contradictory rating across sheets for the same tag" edge case
(MVSWGR-E/F's bus wire count, stated one way on an overview sheet and another way on the
unit's own dedicated detail sheet).*

## 6. Figures are the default location of the answer, not a named exception

On this domain's documents, the overwhelming majority of content is graphical — a plan
view, a one-line diagram, a schematic symbol — with only sparse, often unreliable
extractable text. Reading a rendered image of the sheet is not a fallback for when the
text layer comes up short; it is the primary source, cross-checked against whatever text
layer exists, not the reverse.

*Confirmed in: `drawing-comparison`'s "figure-answer" edge case, explicit that this
inverts `version-compare`'s assumption (there, figures are the named exception; here,
they are the default); `bom-extraction`'s own note that its P&ID sample's `pdftotext
-layout` output was 187 lines across 13 pages — sparse enough that text-layer-first
reading would have missed nearly everything.*

## 7. World knowledge decodes the drawing's own legend; it never fills a gap the drawing leaves

Domain knowledge (knowing that "PSV" conventionally means pressure-safety valve, that
"NGR" conventionally means neutral grounding resistor) is permitted only to help read a
legend the drawing itself provides, or to recognize a term the drawing uses without
defining when no reasonable ambiguity exists — never to supply a spec, rating,
manufacturer, or classification the drawing does not itself state. A gap the drawing
leaves is reported as a gap (`confidence: UNSURE`, or an explicit spec-gap note), never
quietly filled from outside knowledge of what such an item usually has.

*Confirmed in: both skills' `world-knowledge` front-matter field, worded near-identically
before this layer existed — itself a sign this rule belongs here rather than in either
skill individually.*

## 8. Every value is retrieved by asking a question, never by reading a document and asserting

A unit's value is never established by glancing at a document and writing down what seems
to be there. For every **AKU (Atomic Knowledge Unit)** — the atomic fact a document is
being read for — the sequence is always:

1. **Formulate** an explicit question that, if answered from the relevant document(s),
   would establish the fact in question — written down *before* those documents are
   searched, never composed afterward to justify an answer already known by other means.
2. **Ask** that question against whichever document(s) are configured to answer it. In a
   skill comparing two documents, that is the *other* document (the AKU's own document
   answers a different question — what does *this* document itself state — the counterpart
   question is asked of the *other* one). In a skill reading a single document, with no
   second document to ask, the question is asked of **that same document** — its other
   sheets, its own legend, whatever part of it actually carries the answer — never skipped
   just because there is only one document available. "Ask a question against the
   relevant document(s)" always applies; how many documents happen to be relevant is a
   property of the use case, not of whether this rule applies.
3. **Record the answer exactly as found** — or, if the relevant document(s) were actively
   searched and the fact genuinely is not there, record that the search was made and
   found nothing (per rule 4). This retrieved answer, not a glance-and-assert, is what a
   finding's value is built from, and the finding keeps the **question and the answer as
   their own visible fields**, separate from the AKU's own restated value — a reader can
   see exactly what was asked and exactly what came back, not just a final value asserted
   with no search trail behind it.

This is the domain's retrieval discipline stated once, generally — a skill's own Module 2
names its own stage labels for FORMULATE/ASK/DERIVE and its own Module 5 names its own
Question/Answer field wording, but the sequence and the reason for it are this rule, not
restated per skill.

**In the twin/derived layer specifically**, a document's role determines what its own
`twin/derived/<document>.md` summary contains — not a fixed, identical format regardless
of role:

- A **source** document's derived summary records the AKU identified at each unit and the
  question formulated for it (step 1 above) — this is where FORMULATE becomes a visible,
  checkable artifact instead of an implicit step that leaves no trace. In a single-
  document skill, the one document is the source, so this is the only form its derived
  summary takes.
- A **supporting** document's derived summary is a plain extracted-content summary — never
  a list of AKUs or questions, since a supporting document has no AKUs of its own to
  identify; it exists to answer the source's questions (step 2 above), and its derived
  summary is written so ASK can find the right area to search without re-reading the
  whole document.

A document's derived summary is therefore never a copy-paste of the same format
regardless of which role it plays in a given use case — the format is a direct
consequence of the role, decided once per document, not left to default to whichever
format was easiest to produce first.

*Confirmed in: `drawing-comparison`'s AKU-driven retrieval (added v3, per explicit user
instruction, initially skill-specific because it named "the supporting drawing" as the
thing asked); generalized here after the user explicitly asked for the same approach
across every use case including single-document ones, which resolved the reason it had
been kept skill-specific — see `skills/drawing-comparison/patternLog.md` Entry 8 and
`skills/bom-extraction/patternLog.md`'s corresponding entry.*

---

## How a skill builds on this layer

A skill's own front matter adds:

```yaml
builds-on: skills/_shared/engineeringDrawingReading.md
```

And its Module 1 opens with a short pointer — "This skill builds on
`skills/_shared/engineeringDrawingReading.md`; the rules there apply before anything
below" — followed only by what is genuinely specific to that skill's own output shape
(a verdict scale and materiality judgment for a comparison skill; an extraction-only,
no-verdict stance and a home-sheet rule for an extraction skill). A skill's Module 6
(edge cases) still records its own domain-specific confirmations, but an edge case that
is really just this layer's rule applying to a new circumstance is **cross-referenced**
back to the relevant numbered rule above, not restated as if it were a new discovery.

## Amending this layer

Changed the same way any skill changes, per the promotion bar (see the applicable
project's skill-versioning rules): a new rule is added only on cross-skill confirmation
(both `drawing-comparison` and `bom-extraction` independently need it), explicit user
generalization, or structural necessity. Every amendment snapshots the current content
immutably to `skills/_shared/shared-versions/engineeringDrawingReading-v<N>.md` before the
live file is edited, exactly as a per-skill `skill.md` does. Every skill that builds on
this layer records, in its own `patternLog.md`, when a layer amendment did or did not
require re-judging its own existing findings — the same "did this change verdict-relevant
behavior" question a skill's own version bump already asks.
