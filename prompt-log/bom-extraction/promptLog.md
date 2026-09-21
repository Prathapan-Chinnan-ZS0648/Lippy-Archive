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
