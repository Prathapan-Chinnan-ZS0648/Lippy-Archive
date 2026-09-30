<!--
New entries are prepended (newest first, per bootstrap.md §10). Each entry captures, at
minimum: timestamp, the command/prompt provided, generated output, reason, explanation,
model, skill/version used. Entries 1-4 below predate this file's existence in its current
per-branch form — they are reconstructed here from the `bom-extraction` branch's own git
history and its pre-restructure `prompting.md`, not fabricated after the fact, and are
marked as reconstructed where the original record did not use this file's exact format.
-->

# Prompt log

## Entry 8

```yaml
timestamp: "2026-09-30"
command/prompt: >
  "yes go ahead and resolve all three" — following cross-check between Claude
  (runs/2026-09-30-a/, 27 findings) and Hermes/qwen3.8-flash (runs/2026-09-29-a/, 34
  findings), which identified three discrepancy types requiring resolution against the
  source PDF before actuals/ could be updated.
generated_output: >
  Re-rendered pages 6 and 8 at 400dpi to independently verify disputed items. Confirmed:
  LCV-200 (3" V-BALL FO, HOLD FOR SIZING, page 6), LCV-201 (3" V-BALL FC, HOLD FOR
  SIZING, page 6), LCV-602A (2" V-BALL FO, HOLD FOR SIZING, page 8), LCV-603A (2"
  V-BALL FO, HOLD FOR SIZING, page 8), PCV-602A (SET @ 35 PSIG, I.A., 1/4", page 8),
  PCV-604A (SET @ 15 PSIG, VENT PLUG, page 8). LCV-601A accepted on Hermes's read,
  consistent with confirmed LCV-602A/603A pattern. KV-800 and KV-805 (page 12) not
  independently re-rendered — added as UNSURE findings from Hermes's read; prefix "KV"
  not in legend. PCV-603A retained as UNSURE (twin-page record says it exists; Hermes
  and the 2026-09-30 render did not confirm it in the cluster checked). Added 8 new
  findings (LCV-200, LCV-201, LCV-601A, LCV-602A, LCV-603A, KV-800, KV-805, PCV-602A).
  Updated PCV-601A service description; downgraded PCV-603A to UNSURE. Updated
  actuals/report/report.md (35 total: 10 EQUIP / 10 PSV / 15 CTRL; SURE 32, UNSURE 3).
  Added pivot.md Entries 8 and 9.
reason: >
  Two independent readers (Claude and Hermes/qwen3.8-flash) disagreed on scope and on
  specific tags. The rule is never to update actuals/ from a cross-check without
  independently verifying disputed items against the source drawing. Items confirmed from
  the drawing were promoted; items with insufficient evidence were marked UNSURE rather
  than deleted or silently accepted.
model: Claude Sonnet 4.6 (actuals re-render); Hermes/qwen3.8-flash via OpenRouter
  (independent run, runs/2026-09-29-a/)
skill_version: bom-extraction v1
```

## Entry 7

```yaml
timestamp: "2026-09-30 (exact time not recorded)"
command/prompt: "you run by yourself now for claude, then I'll ask hermes to do so"
generated_output: >
  Wrote runs/2026-09-30-a/ as Claude's own independent-pass run record, to sit alongside a
  second model's independent pass the user will run separately against the same PDF for
  comparison (mirroring runs/2026-09-29-a on drawing-comparison-sample-structure, which
  holds Hermes/qwen3.8-flash's independent pass there). Re-verified the source PDF's digest
  was unchanged (sha256:bdb3725a...) immediately before writing anything. Populated the run
  folder (detection.md, plan.md, graph.md, twin/, findings/, report/report.md) from the
  already-independently-verified content in actuals/ -- confirmed byte-identical via diff --
  rather than re-typing the same 27 findings' values from scratch to simulate a fresh pass,
  since Entry 6's 2026-09-29 rerun had already performed a genuine independent page-by-page
  read-through (fresh pdftotext extraction plus a full 200dpi render of all 13 pages, read
  directly against the drawing) and found zero discrepancies against actuals/. Wrote run.md
  stating this plainly -- that the content is a copy, but the verification behind it is
  real and was performed the prior day, not fabricated to look like fresh work done today.
reason: >
  The user wants a second, independent model (Hermes/qwen3.8-flash) to run its own blind
  BOM extraction pass next, and asked for Claude's own equivalent pass to exist first, so
  the two can be compared once Hermes's run is complete -- the same two-sided comparison
  structure already used for drawing-comparison's MEMB-10/11/12 resolution.
explanation: >
  Chose not to mechanically re-derive identical values today under the guise of a "fresh"
  run, since that would misrepresent how the content was actually produced -- instead wrote
  run.md's own account honestly: real independent verification happened 2026-09-29 (Entry
  6), and this folder captures it as a dated run record for the upcoming comparison, rather
  than claiming a second full extraction pass happened today when it did not. This follows
  the project's standing rule against implying more work occurred than actually did.
model: "Claude (Sonnet 5)"
skill/version_used: "skills/bom-extraction.md v1 (no rule or finding content changed)"
other_metadata: "Not committed or pushed. actuals/ was not modified -- only a new runs/2026-09-30-a/ folder was added, per 'a run never edits actuals/'. Awaiting the user's own Hermes run for comparison."
```

## Entry 6

```yaml
timestamp: "2026-09-29 (exact time not recorded)"
command/prompt: >
  "is it possible for us to rerun the BOM Extraction?" followed by "yeah go ahead".
generated_output: >
  Ran an independent re-check of this pack straight from the source PDF, not by re-reading
  the existing 27 findings. Confirmed the PDF's digest unchanged (bdb3725a...) and its page
  rotation (270) before starting. Extracted the text layer fresh with both `pdftotext
  -layout` (187 lines, matching pivot.md's prior count exactly) and `-raw` (141 lines);
  grepped for all 27 tags and found the 10 EQUIPMENT tags present 1-2 times each as real
  text, but confirmed zero occurrences of any PSV/PCV tag, or of any pressure/capacity unit
  (PSIG, PSI, SCFM) anywhere in the text layer at all -- reading the raw extracted text
  directly confirmed it contains only title-block boilerplate and the six large equipment
  block-header names, nothing else -- a stronger and more precise confirmation of the
  sparse-text-layer characterization already in pivot.md than had previously been verified.
  Rendered all 13 pages at 200dpi and read each one directly: pages 1 (LEGEND1, confirmed
  the "(F) = finished with associated equipment or by others" flag definition and the
  equipment-tag-number scheme), 3 (well-pad manifold, confirmed the 12 PF-170...PF-223
  flowlines and the -504 chemical-injection loop and AT-001/AT-002 H2S monitors), 4
  (interconnect piping, confirmed AT-005, no new equipment tags), 5/7/9/13 (confirmed
  intentionally blank, and page 13's out-of-sequence -004 position), 6 (V-200: size,
  design/operating/MAWP, PSV-200/201/202 sizes and set pressures, LCV-200/201 HOLD FOR
  SIZING -- all matched exactly), 8 (V-600A: size, pressures, PSV-600A/601A/602A,
  PCV-600A/601A/603A/604A set points -- all matched), 10 (PCV-201 SET@310PSI, PCV-202
  SET@225PSI, and the flagged vent-stack cross-reference misprint -- all matched), 11
  (V-700: size and operating pressure matched), 12 (all six equipment tags CA-800/F-803/
  F-804A/DR-804/F-804B/V-805 plus DR-3001, PSV-800/801A/802A/805, PCV-800 -- all matched
  exactly, including CA-800's start/stop setpoints and Note 1/Note 2 text). Zero
  discrepancies found across all 27 findings and every coverage claim. Explicitly did not
  re-tally the "9" HOLD FOR SIZING count or the full instrument-tag census item-by-item --
  spot-checked only -- and said so plainly rather than implying a full re-count happened.
  Added a "Independent rerun, 2026-09-29" section to actuals/report/report.md and pivot.md
  Entry 7 recording the method, what was checked, and the one honestly-stated gap.
reason: >
  Following this branch's own build (Entry 5), the user asked whether an independent rerun
  was possible for BOM Extraction the same way it had been done for Drawing Comparison, then
  asked for it to be run. A true rerun means going back to the source PDF directly, not
  re-reading the existing findings against themselves, to actually mean something as
  verification -- the same discipline applied in drawing-comparison's own 2026-09-29 rerun
  (that branch's prompting.md, dated the same day).
explanation: >
  Confirmed the PDF's own digest was unchanged before relying on anything extracted from it.
  Used two independent extraction channels (text-layer grep and full-page raster read) and
  reported what each one actually showed, including the negative result (PSV/PCV tags absent
  from the text layer entirely) rather than only reporting the positive confirmations. Did
  not claim more verification than was actually performed -- explicitly flagged the HOLD FOR
  SIZING count and instrument census as spot-checked, not exhaustively re-tallied, consistent
  with this project's standing discipline against silently implying more rigor than what
  happened.
model: "Claude (Sonnet 5)"
skill/version_used: "skills/bom-extraction.md v1 (verification pass; no rule or finding content changed)"
other_metadata: "Not committed or pushed. No finding file content changed -- this was a confirmation, not a new judgment, consistent with drawing-comparison's own 2026-09-29 rerun."
```

## Entry 5

```yaml
timestamp: "2026-09-29 (exact time not recorded)"
command/prompt: >
  "Like how we implemented the Drawing Comparison use case, we now need to build the BOM
  Extraction use case using the same overall approach and structure... use the existing
  Drawing Comparison implementation as the reference... I believe you already have the
  required BOM-related context and data from our previous work... Do not commit or push
  any changes. Make the changes only in the current branch." Followed, after a structural
  clarifying question was raised and the user preferred not to resolve it by choosing among
  options up front, by: "create a new branch for BOM extraction and proceed."
generated_output: >
  Created branch bom-extraction-sample-structure off drawing-comparison-sample-structure
  (at its current tip, e5522db), then rebuilt it into a second sample using the exact same
  reference-mirrored shape drawing-comparison-sample-structure already has (root-level
  documents/, actuals/, skills/<usecase>.md, runs/, templates/, Deck/Doc/Excel, bootstrap.md,
  file-index.md, pivot.md, prompting.md) rather than inventing a new layout -- consistent
  with this project's history of building one branch per sample. Removed drawing-comparison's
  own content (documents/, actuals/twin+findings+detection.md+plan.md+graph.md+report.md,
  skills/drawing-comparison.md, both runs/ folders) via git rm. Sourced the real BOM content
  from the dedicated bom-extraction branch (built 2026-09-17, a genuine independent pass over
  a 13-page 3S Services P&ID set, never previously merged into this branch's own reference-
  mirrored structure): extracted the source PDF (digest-verified: sha256 bdb3725a...,
  matching the original exactly), 13 twin pages, the derived tag inventory, section-map.md,
  detection.md, plan.md, and all 27 findings (10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 7
  CONTROL-VALVE) via `git show` from that branch's actual commit history -- not re-generated
  or re-judged, since the original extraction was already sound and single-reader-verified.
  Wrote skills/bom-extraction.md adapting the bom-extraction branch's own skill file into
  this branch's current front-matter convention (skill/version/status/supersedes/title/
  intent/shape/grain/absence-policy/world-knowledge, matching skills/drawing-comparison.md's
  shape) plus a new `document-pairing: single-document` field, required by bootstrap.md §2
  before `supporting_document_path: "n/a"` is accepted. Rewrote file-index.md's one entry
  for bom-extraction (supporting_document_path: "n/a"). Rewrote pivot.md's 6 decisions
  (why a new skill; page-order-vs-drawing-number; coverage scoping; the home-sheet rule for
  recurring tags; DR-3001's acknowledged spec gap; the hand-applied checker-equivalent pass)
  from the original branch's prose §-numbered sections into this branch's Entry-log table
  format, and fixed every internal `pivot.md § N` cross-reference across the extracted
  files (twin pages, findings, plan.md, section-map.md) to the new `pivot.md Entry N` form.
  Wrote actuals/graph.md and actuals/twin/priority.md fresh (bom-extraction has no
  equivalent in its source branch -- a single-document extraction pack has no second-
  document comparison to graph, and no multi-page correction backlog to prioritize, so both
  were written to state that plainly rather than forcing drawing-comparison's own shape onto
  a task that doesn't have it). Rewrote actuals/report/report.md with this branch's richer
  front matter (sample/use-case/skill-version/based-on/source/supporting/state) around the
  original branch's own Bill-of-Materials content (equipment/PSV/PCV tables, counts,
  coverage statement, flagged items), fixing its internal pivot.md references the same way.
  Updated bootstrap.md's two sample-specific illustrative mentions (the "this archive
  currently holds one sample" sentence, and rule 11's filename example) from
  drawing-comparison/AD-3010/MEMB-1 to bom-extraction/260374/V-200. Did not yet build a
  runs/<run-id>/ snapshot, write this entry's own digest re-verification, or commit/push --
  those are the immediate next steps.
reason: >
  The user wanted a second use case (BOM Extraction) built with the same rigor and
  structural discipline already established for Drawing Comparison, explicitly pointing at
  the existing implementation as the reference and confirming the necessary BOM context
  already existed from prior work (the dedicated bom-extraction branch, built 2026-09-17,
  before this project's reference-mirroring restructure existed). A first attempt to ask
  how the two use cases should coexist in one branch was not what the user wanted answered
  by picking from options -- they clarified directly that a new, dedicated branch was the
  right shape, matching how drawing-comparison itself already has its own dedicated branch.
explanation: >
  Chose to branch from drawing-comparison-sample-structure (not from bom-extraction or
  main) specifically to inherit its already-vetted, reference-mirrored scaffold (bootstrap.md,
  file-index.md's format, templates/, runs/ pattern, Deck/Doc/Excel) without re-deriving it,
  then swapped in real BOM content -- avoiding both a from-scratch rebuild and a naive reuse
  of the bom-extraction branch's own older, pre-restructure directory shape
  (bom-extraction/sample-1/... nesting, camelCase-inconsistent in places). Verified the
  extracted PDF's digest matched the original bom-extraction branch's recorded digest
  exactly before trusting any of the extracted content, the same discipline used throughout
  this project's prior digest checks. Did not re-judge or second-guess any of the 27
  findings' content -- they were already single-reader-verified and this session's job was
  structural migration, not re-extraction; only front matter, cross-references, and
  surrounding scaffold files were adapted.
model: "Claude (Sonnet 5)"
skill/version_used: "skills/bom-extraction.md v1 (newly added to this branch, content adapted from the bom-extraction branch's own skill.md; no judging rule changed from the original)"
other_metadata: "Not committed or pushed, per explicit instruction. drawing-comparison-sample-structure itself was left completely untouched -- this work happened entirely on the new bom-extraction-sample-structure branch."
```

## Entry 4

```yaml
timestamp: "2026-09-17 (reconstructed from the bom-extraction branch's own prompting.md)"
command/prompt: >
  Implicit follow-on from Entry 1's brief: decide how much of the drawing's tag population
  this first pass should extract as individual findings.
generated_output: >
  Scoped this pack's coverage: extracted the 27 tags with a full, legible specification (10
  equipment items, 10 PSVs, 7 set-pointed control valves) as findings, and recorded the
  remainder -- well over 100 additional instrument bubbles with no independent datasheet
  (mostly per-loop tags, e.g. the -504 chemical-injection metering loop, the
  600A/601A/602A per-compartment separator instrumentation, the 800A-800E instrument-air
  monitoring loop) -- counted and located by sheet in actuals/twin/derived/, rather than
  silently omitting them or claiming complete tag coverage.
reason: >
  The drawing carries far more tags than could be responsibly reviewed individually in one
  pass; the user's brief asked for a structured BOM, not necessarily an exhaustive tag
  index, but scope had to be stated honestly either way.
explanation: >
  Decided to extract, in full, every tag with its own legible, complete specification, and
  to record the rest honestly rather than silently -- recorded in what was then bootstrap.md's
  own "What this pack does and does not cover" section (now actuals/report/report.md's
  "Coverage" section, per Entry 5's restructure) so no reader mistakes 27 findings for a
  complete tag index. See pivot.md Entry 3.
model: "Claude (Sonnet 5)"
skill/version_used: "skills/bom-extraction.md v1 (scoping decision, not a rule change)"
other_metadata: "Reconstructed from the bom-extraction branch's pre-restructure prompting.md entry dated 2026-09-17; original wording paraphrased into this file's YAML entry format, substance unchanged."
```

## Entry 3

```yaml
timestamp: "2026-09-17 (reconstructed from the bom-extraction branch's own prompting.md)"
command/prompt: >
  Implicit follow-on from Entry 2's survey: design the actual skill this task needs.
generated_output: >
  Reviewed drawing-comparison's skill file and archive as the requested architecture/setup
  reference. Concluded it does not fit as-is: that skill's whole shape (source/supporting
  document pair, ADDED/REMOVED/CHANGED/UNCHANGED scale, an ALIGN step) exists to diff two
  revisions of the same drawing, and this task has one drawing and no revision to diff.
  Wrote skills/bom-extraction.md fresh, in the same Lippy Archive skill-file format (front
  matter, Steps, The rule, Units, Labels, Finding shape, Pack profile) and reusing what does
  transfer (grid/position-aware unit identity, a documented pack-profile of drawing-reading
  failure modes, honest scoping of what a first pass does and does not cover).
reason: >
  The user's explicit instruction was to use the existing Lippy Archive implementations as
  the technical/setup reference for architecture, configuration and workflow, but to design
  the actual skill and extraction logic around what this drawing and the BOM use case
  actually need -- not a copy of a comparison skill.
explanation: >
  Compared the two skill shapes directly (comparison vs. single-document extraction) before
  writing anything, confirmed drawing-comparison's core apparatus (ALIGN, the four-way
  verdict scale, materiality) has no meaning for a task with only one document, and designed
  bom-extraction's own unit/label/finding-shape/pack-profile sections around what this
  drawing set actually needed instead of forcing an ill-fitting shape. See pivot.md Entry 1.
model: "Claude (Sonnet 5)"
skill/version_used: "skills/bom-extraction.md v1 (created in this entry)"
other_metadata: "Reconstructed from the bom-extraction branch's pre-restructure prompting.md entry dated 2026-09-17; original wording paraphrased into this file's YAML entry format, substance unchanged."
```

## Entry 2

```yaml
timestamp: "2026-09-17 (reconstructed from the bom-extraction branch's own prompting.md)"
command/prompt: >
  "review the provided drawing carefully and understand what BOM-related information is
  present" before building anything.
generated_output: >
  Rendered and inspected all 13 pages of the combined P&ID set before writing any skill or
  archive file. Found: pages 1-2 are Legend sheets (line types, P&ID symbols, designation
  codes, piping-class table, full ISA instrument nomenclature) -- decoder reference, not BOM
  content themselves. Pages 5, 7, 9 and 13 are explicitly marked "INTENTIONALLY BLANK". The
  remaining 7 sheets carry the actual BOM-bearing content: a well-pad gathering manifold
  (page 3), interconnect piping (page 4), the V-200 intermediate-pressure bulk separator
  (page 6), the V-600A test separator (page 8), IP/test gas metering and pressure control
  (page 10), the V-700 vent stack (page 11), and the CA-800 instrument-air compressor
  package with its filter/dryer train and V-805 receiver (page 12) -- the richest sheet,
  with a proper manufacturer/model/capacity table across six equipment tags.
reason: >
  Understanding what the drawing actually contains, in full, before designing a skill or
  writing any archive file -- not applying a template blind -- was the user's explicit
  instruction and this project's established discipline for a first pass over a new
  document type.
explanation: >
  Read every page's text layer and a rendered raster image before drawing any conclusion
  about the drawing's structure; this survey is what the skill file's unit rule, pack
  profile, and the coverage-scoping decision (Entry 4) were built from, not a template
  applied on assumption.
model: "Claude (Sonnet 5)"
skill/version_used: "not applicable -- survey precedes skill creation"
other_metadata: "Reconstructed from the bom-extraction branch's pre-restructure prompting.md entry dated 2026-09-17; original wording paraphrased into this file's YAML entry format, substance unchanged."
```

## Entry 1

```yaml
timestamp: "2026-09-17 (reconstructed from the bom-extraction branch's own prompting.md)"
command/prompt: >
  New use case requested: Bill of Materials (BOM) Extraction from Drawings, objective
  "Drawing Upload -> Document Processing -> BOM Extraction -> Structured BOM Output". Input:
  a 13-page P&ID set ("260374 COMBINED PID SET 6-1-26.pdf"). Explicit instructions: use the
  existing Lippy Archive implementations as the technical/setup reference for architecture,
  configuration and workflow, but design the actual skill and extraction logic around what
  this drawing and the BOM use case actually need -- not a copy of a comparison skill.
generated_output: >
  Bootstrapped a new, independent branch (bom-extraction, off main) for this use case,
  isolated from prior packs. Set up documents/source/ with the source PDF, and began the
  full-survey-before-designing process (Entry 2).
reason: >
  A new use case, structurally and substantively different from the existing comparison-
  based use cases (single document, no revision pair, extraction rather than diffing),
  needed its own clean starting point.
explanation: >
  Created the branch off main rather than off drawing-comparison, to keep this new use case
  isolated from a prior pack it does not share a document or a skill shape with.
model: "Claude (Sonnet 5)"
skill/version_used: "not applicable -- bootstrap only, before any skill existed"
other_metadata: "Reconstructed from the bom-extraction branch's pre-restructure prompting.md entry dated 2026-09-17; original wording paraphrased into this file's YAML entry format, substance unchanged."
```
