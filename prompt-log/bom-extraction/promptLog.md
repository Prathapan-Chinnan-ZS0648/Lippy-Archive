<!--
New entries are prepended (newest first, per bootstrap.md §10). Each entry captures, at
minimum: timestamp, the command/prompt provided, generated output, reason, explanation,
model, skill/version used. Entries below predate this file's existence (it was created
2026-09-21 when this use case was migrated from the separate bom-extraction branch into
this branch's bootstrap.md framework) — they are reconstructed here from that branch's
actual git history and its pre-migration `prompting.md`/`pivot.md` files, not fabricated
after the fact, and are marked as reconstructed where the original record did not use
this file's exact format.
-->

# Prompt log

## Entry 5

```yaml
timestamp: "2026-09-23 (exact time not recorded)"
command/prompt: >
  "Also, this AKU-based approach should not be limited to the Drawing Comparison use
  case. It should be a common approach that works across all use cases, including
  scenarios where there is only a single document... Ask those questions against the
  relevant document(s), even when there is only one document available."
generated_output: >
  Same action as prompt-log/drawing-comparison/promptLog.md Entry 10 — see that entry for
  the full record. In summary: skills/_shared/engineeringDrawingReading.md enhanced v1 ->
  v2 with rule 8 (question-driven retrieval, generalized to work whether "the relevant
  document(s)" is a second document or the same one an AKU came from). This skill enhanced
  v3 -> v4 (v3 snapshotted immutably first): added a `retrieval-model` front-matter field,
  added a Module 1 "AKU-driven retrieval" subsection specific to this skill (a
  classification question asked of the drawing's own legend/tagging table; a specification
  question asked of the tag's home sheet and every sheet it appears on — both against the
  single source document, since this skill has none other). Restructured Module 2's
  workflow table: CLASSIFY + RETRIEVE + JUDGE replaced by FORMULATE -> ASK -> DERIVE.
  Updated Module 4's checklist and Module 5's output shape (added Classification/
  Specification Question and Answer as explicit finding fields). Updated
  manifest/bom-extraction/manifest.md for both documents (digests, governance, new
  "Open items" entries).
reason: >
  User generalized the retrieval methodology drawing-comparison had just been given,
  specifically resolving why it had been kept skill-specific: this use case, having no
  supporting document at all, is exactly the case proving "ask against the relevant
  document(s)" does not require a second document.
explanation: >
  Promoted to the shared layer per explicit user generalization, reinforced by both use
  cases being updated together (cross-skill confirmation). No extraction-relevant
  behavior changed for either existing sample's findings (27 P&ID, 23 electrical) — both
  remain pre-v4 records, not retrofitted with reconstructed questions, with re-running
  either under v4 left as an open decision, not made here.
model: Claude Sonnet 5
skill/version_used: "skills/bom-extraction/skill.md v4; skills/_shared/engineeringDrawingReading.md v2"
other_metadata: "companion entry in prompt-log/drawing-comparison/promptLog.md Entry 10 carries the full shared-layer rationale, not duplicated here"
```

## Entry 4

```yaml
timestamp: "2026-09-22 (exact time not recorded)"
command/prompt: >
  "Okay, we have already understood the setup from the main branch... But now, I don't
  want to simply copy or reproduce the same structure... think through the architecture
  and structure for our use case and explain how we can proceed from here, don't commit
  and push anything, just make changes"
generated_output: >
  Same action as prompt-log/drawing-comparison/promptLog.md Entry 8 — see that entry for
  the full record. In summary: created skills/_shared/engineeringDrawingReading.md (v1),
  enhanced this skill's own skill.md v2 -> v3 to build on it (v2 snapshotted immutably
  first), and added bootstrap.md §17/§18 documenting the shared-layer pattern and
  `_agent-comparison/` as explicit, general capabilities of this project's own
  architecture rather than main-inherited structure.
reason: >
  User explicitly did not want main's structure reproduced as-is; asked for this
  branch's own use cases to be designed on their own terms.
explanation: >
  This skill's own Entries 6-8 (the new drawing type, the future-vs-current convention,
  the contradictory-rating edge case) turned out to be close cousins of rules
  skills/drawing-comparison/skill.md had already confirmed under different names — the
  concrete evidence that motivated relocating both skills' shared discipline into one
  place. No extraction result changed for either of this skill's existing samples (27
  P&ID findings, 23 electrical findings) — restructuring only; neither was re-run. Per
  the user's explicit instruction, no commit or push was made.
model: Claude Sonnet 5
skill/version_used: "skills/bom-extraction/skill.md v3; skills/_shared/engineeringDrawingReading.md v1"
other_metadata: "companion entry in prompt-log/drawing-comparison/promptLog.md Entry 8 carries the full shared-layer rationale, not duplicated here"
```

## Entry 3

```yaml
timestamp: "2026-09-21 (exact time not recorded)"
command/prompt: "this is the new document for bom extraction usecase, /home/kowsalya.nachimuthu@zucisystems.com/Downloads/3S/Prepurchase Elect Dwgs_10-30-2024.pdf, execute this"
generated_output: >
  Ran the full bom-extraction pipeline (RESOLVE/NORMALIZE/JUDGE/REPORT, per
  bootstrap.md's START composition) against a new second source document under this use
  case: an 11-page electrical one-line/elevation/physical-plan drawing set for a
  generator/switchgear/transformer prepurchase package (Upper Trinity Regional Water
  District, Tom Harpool Regional WTP Phase 2 Expansion). Added the document as a second
  entry in fileIndex.md's bom-extraction source_document_path list (supporting_document_
  path: "n/a" continues to apply to the whole entry). Built the full twin (11 pages,
  text layer cross-checked against 150dpi renders, several targeted full-resolution crops
  to verify exact ratings and line-weight conventions), detection.md, plan.md,
  sectionMap.md, graph.md, and 23 findings (3 generators, 5 neutral grounding resistors,
  5 switchgear units, 8 transformer-related units, 4 other equipment items), plus
  report.md and a new document section in manifest/bom-extraction/manifest.md.
  Enhanced skills/bom-extraction/skill.md from v1 to v2 (snapshotting v1 immutably first,
  per bootstrap.md §9): added a Module 3 domain-guidance row for electrical one-line
  diagram sets (single EQUIPMENT category, future-vs-current status as a required
  classification step) and two new Module 6 edge cases (future-vs-current equipment
  convention; contradictory rating across sheets for the same tag), and marked three
  existing rows "confirmed across 2 samples". Logged the reasoning in
  skills/bom-extraction/patternLog.md Entries 6-8.
reason: >
  User supplied a new source document for the existing bom-extraction use case and asked
  for it to be processed through the pipeline, consolidating both documents under the
  same use case (per the earlier "single place, multiple usecases" request that brought
  bom-extraction onto this branch in Entry 2).
explanation: >
  This document is genuinely a different drawing type (electrical one-lines, not a P&ID)
  with real facts the existing skill's Module 3 had no category for — the skill gap was
  identified and closed via a proper version bump, not by force-fitting the new tags into
  P&ID-shaped categories. Two real findings deserve note: (1) an unresolved discrepancy
  between Drawing E07 and each switchgear's own dedicated detail sheet (E08/E09) over
  MVSWGR-E/F's bus wire count and material — recorded as confidence: UNSURE on that
  specific field in both findings, not silently resolved by preferring one sheet; (2) a
  fourth generator bay (GEN-G6) and several other items are drawn in the same style as
  current equipment on some sheets but explicitly marked "(FUTURE)" on Drawing E15's
  elevation — every unit's future-vs-current status was cross-checked against at least
  one other sheet before being included or excluded, never taken from a single sheet's
  line-weight alone. The existing 27-finding P&ID pack was confirmed unaffected by the v2
  skill change and was not re-judged (see manifest/bom-extraction/manifest.md).
model: Claude Sonnet 5
skill/version_used: "skills/bom-extraction/skill.md v2 (enhanced from v1 by this entry)"
other_metadata: "source PDF copied from /home/kowsalya.nachimuthu@zucisystems.com/Downloads/3S/Prepurchase Elect Dwgs_10-30-2024.pdf into documents/bom-extraction/source/, digest 422b2638d13fee272299e72f6fd9112852686baeea4863d3f79f9a79ad5ebb73"
```

## Entry 2

```yaml
timestamp: "2026-09-21 (exact time not recorded)"
command/prompt: >
  "likewise we do have another branch for bom-extraction which is another usecase, can
  we bring that here, so in single place, we'll have multiple usecases like main"
generated_output: >
  Migrated bom-extraction from its separate `bom-extraction` branch's ad hoc layout
  (`bom-extraction/sample-1/`) into this branch's bootstrap.md framework, alongside
  drawing-comparison, so both use cases live in one place per fileIndex.md — matching how
  main configures bid-evaluation and version-compare side by side. Added a bom-extraction
  entry to fileIndex.md; copied documents/bom-extraction/source/260374 COMBINED PID SET
  6-1-26.pdf; rebuilt actuals/bom-extraction/260374 COMBINED PID SET
  6-1-26/{twin/,sectionMap.md,detection.md,plan.md,graph.md}; migrated all 27 findings
  into findings/bom-extraction/260374 COMBINED PID SET 6-1-26/ with camelCase filenames
  (v200.md, psv200.md, etc.), content preserved, cross-references re-expressed;
  reports/.../report.md; manifest/bom-extraction/manifest.md (new);
  skills/bom-extraction/{skill.md v1, patternLog.md, skill-versions/v1.md} (restructured
  into the Module 1-6 format from the prior flat skill file, content preserved); and this
  file. Extended bootstrap.md §2 and its RESOLVE command definition to document
  supporting_document_path: "n/a" as a valid declaration of a genuine single-document use
  case — this task has no supporting/comparison document at all, which the framework's
  schema did not previously allow for, so fileIndex.md's bom-extraction entry could not
  otherwise be expressed without either a fictitious supporting path or leaving a
  required field unset.
reason: >
  User wanted both use cases consolidated onto this one branch's managed tree, matching
  main's own pattern of configuring multiple use cases (bid-evaluation, version-compare)
  side by side in a single fileIndex.md.
explanation: >
  Flagged the missing-supporting-document schema gap explicitly (AskUserQuestion) before
  acting, rather than silently self-pairing source and supporting or leaving the gap
  unaddressed, since bom-extraction's own prior pivot.md already recorded (2026-09-17)
  that a fictitious supporting document was considered and explicitly rejected for this
  task. User chose to extend bootstrap.md's schema itself, which keeps the fix general
  rather than a use-case-specific hack, consistent with bootstrap.md's own rule against
  ever being edited to special-case one use case. No finding content, extraction result,
  or confidence call was changed during migration.
model: Claude Sonnet 5
skill/version_used: "skills/bom-extraction/skill.md v1 (restructured, not re-judged)"
other_metadata: "the separate bom-extraction branch itself was not touched, committed to, or pushed — this migration only reads its content via git show, per the same no-touch-other-branches discipline used for the drawing-comparison-hermes-qwen migration"
```

## Entry 1

```yaml
timestamp: "2026-09-17 (reconstructed from the bom-extraction branch's git history)"
command/prompt: >
  Read the 13-page combined P&ID set for 3S Services project 260374 and extract a
  structured Bill of Materials: every tagged piece of physical equipment, every
  pressure-safety/relief valve, and every control/shutdown valve with a stated set-point.
generated_output: >
  Built the full pack from scratch on the separate bom-extraction branch: extracted twin
  pages and derived per-sheet tag inventory from all 13 pages (text layer plus rendered
  raster, since the drawing's content is almost entirely graphical), wrote the
  bom-extraction skill (a new skill, not reused from drawing-comparison or
  question-answer — see skills/bom-extraction/patternLog.md Entry 1), and produced 27
  findings (10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 7 CONTROL-VALVE) plus report.md, with
  the drawing's much larger INSTRUMENT population and a 12-line flowline list counted but
  not individually extracted this pass.
reason: >
  User wanted a new use case built end-to-end, adjacent to the existing
  version-compare/drawing-comparison work but for a single-document Bill-of-Materials
  extraction task rather than a two-revision comparison.
explanation: >
  Confirmed the drawing set's own two Legend sheets (LEGEND1, LEGEND2) as the authoritative
  source for tag grammar before classifying any tag, rather than assuming generic P&ID
  convention. Recorded DR-3001's acknowledged spec gap ("(f)", furnished by others)
  plainly rather than inferring it from the adjacent DR-804 tag's data. Recorded the
  combined PDF's non-sequential page order (drawing -004 appears last, not in its numeric
  slot) as fact rather than silently working around it.
model: Claude Sonnet 5
skill/version_used: "bom-extraction skill created in this entry (pre-framework flat file)"
other_metadata: "verification method: single-reader cross-check, not two independent human readers plus a resolver — recorded honestly as a distinct, weaker method, per pivot.md's own Method section on the source branch"
```
