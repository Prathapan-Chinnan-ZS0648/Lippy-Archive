<!--
New entries are prepended (newest first, per bootstrap.md §10). Each entry captures, at
minimum: timestamp, the command/prompt provided, generated output, reason, explanation,
model, skill/version used. Entries below predate this file's existence (it was created
2026-09-21 when this use case was migrated into the bootstrap.md framework) — they are
reconstructed here from the branch's actual git history and the pre-migration
`prompting.md`/`pivot.md`/`audit-log.md` files, not fabricated after the fact, and are
marked as reconstructed where the original record did not use this file's exact format.
-->

# Prompt log

## Entry 11

```yaml
timestamp: "2026-09-24 (exact time not recorded)"
command/prompt: >
  "In the Twin -> Derived section, we are currently providing a summary for each
  document. The requirement is that the content should depend on the document type: If
  the document is a Source Document, the Derived section should contain the identified
  AKU(s) and the corresponding question(s)... If the document is a Supporting Document,
  the Derived section should contain the summary/extracted information from that
  document... Please update the implementation accordingly and proceed with this
  requirement."
generated_output: >
  Added twin/derived-layer guidance to skills/_shared/engineeringDrawingReading.md rule 8
  (v2 -> v3, v2 snapshotted immutably first): a source document's derived summary records
  its AKUs and formulated questions; a supporting document's stays a plain content
  summary. skills/drawing-comparison/skill.md enhanced v4 -> v5 (v4 snapshotted first)
  with a one-paragraph cross-reference to this guidance. Regenerated both of this pack's
  twin/derived files: `AD-3010-C-330030-SHT-004-REV4.md` (source) now lists all 22 AKUs
  with a formulated question per AKU, grouped by area exactly as the plan.md/findings
  already establish; `AD-3010-C-330030-SHT-004-REV3.md` (supporting) kept its existing
  plain area-by-area summary format, which already matched the new rule, with a `role:
  supporting` field and clarifying note added. Updated manifest/drawing-comparison/
  manifest.md's digests, governance, and Sample context to record both the rule change
  and the fact this document's derived files (unlike its findings) were actually
  regenerated.
reason: >
  User pointed out the derived-file format was the same regardless of document role,
  and specified the correct rule by role, then explicitly asked for it to be applied,
  not just documented for future use.
explanation: >
  Distinguished this regeneration from the standing "do not retrofit findings" policy
  (Entries 7 and 9): a finding's Old/New/verdict is a claim requiring independent
  verification, and composing its question after already knowing its answer would
  fabricate that verification trail. A derived file's AKU+question listing is different
  in kind — it is a mechanical restatement of facts already fixed and independently
  verified (grid position, this-sheet's-own-value, both established in plan.md and the
  existing findings before this action), the question wording asserts no REV3-side
  answer, and no finding's own Old/New content, verdict, or confidence was touched to
  produce it. Regenerated the source document's derived file in full; left the
  supporting document's derived file's actual content unchanged, since it already
  matched the new rule.
model: Claude Sonnet 5
skill/version_used: "skills/drawing-comparison/skill.md v5; skills/_shared/engineeringDrawingReading.md v3"
other_metadata: "companion entry in prompt-log/bom-extraction/promptLog.md for the same action, since it touched both use cases at once"
```

## Entry 10

```yaml
timestamp: "2026-09-23 (exact time not recorded)"
command/prompt: >
  "Also, this AKU-based approach should not be limited to the Drawing Comparison use
  case. It should be a common approach that works across all use cases, including
  scenarios where there is only a single document... Ask those questions against the
  relevant document(s), even when there is only one document available... The
  implementation should be designed so that the same AKU -> Question -> Answer approach
  can be reused for Drawing Comparison and any future use case, rather than building it
  specifically for one use case."
generated_output: >
  Generalized AKU-driven retrieval from a drawing-comparison-specific rule into
  skills/_shared/engineeringDrawingReading.md's own rule 8 (v1 -> v2, v1 snapshotted
  immutably first): "the relevant document(s)" a question is asked against may be a
  second document (a comparison skill) or the same document the AKU came from (a
  single-document skill) — the rule applies identically either way. Enhanced
  skills/drawing-comparison/skill.md v3 -> v4 (v3 snapshotted first) to reference shared
  rule 8 instead of restating it, keeping only what's specific to this skill (that "the
  relevant document" is always the supporting drawing here). Enhanced
  skills/bom-extraction/skill.md to the same generalized rule in the same action — see
  prompt-log/bom-extraction/promptLog.md's corresponding entry for that skill's own
  redesign (CLASSIFY+RETRIEVE+JUDGE -> FORMULATE+ASK+DERIVE, questions asked of the
  source document's own legend and home sheet, since it has no supporting document).
  Updated manifest/drawing-comparison/manifest.md and manifest/bom-extraction/
  manifest.md's digest tables, governance fields, and Open-items sections for both
  documents across both use cases.
reason: >
  User directly generalized the retrieval methodology added in Entry 9, specifically
  addressing the reason it had been kept skill-specific (it looked like it required a
  second document) by pointing out that "ask against the relevant document(s)" already
  covers the single-document case — the same document, asked of itself.
explanation: >
  This resolves the open question Entry 9 left explicit in its own reasoning (why the
  rule was not promoted to the shared layer at the time). Promoted immediately, since the
  promotion bar's explicit-user-generalization leg is satisfied directly by the
  instruction, reinforced by both use cases being updated together in one action
  (cross-skill confirmation). No verdict/extraction-relevant behavior changed for any
  existing finding in either use case (22 drawing-comparison, 27+23 bom-extraction across
  two documents) — all remain pre-v4/pre-this-generalization records, explicitly not
  retrofitted, with re-running each under the new methodology left as an open decision
  per document, not decided unilaterally.
model: Claude Sonnet 5
skill/version_used: "skills/drawing-comparison/skill.md v4; skills/_shared/engineeringDrawingReading.md v2 (both enhanced in this entry)"
other_metadata: "companion entry in prompt-log/bom-extraction/promptLog.md for the same action, since it touched both use cases at once"
```

## Entry 9

```yaml
timestamp: "2026-09-22 (exact time not recorded)"
command/prompt: >
  "The source document, from which the actual AKU is identified, should first be used to
  formulate the relevant question(s). That question should then be asked against the
  supporting document(s), and the answer/result should be derived specifically from those
  supporting documents... Source Document -> Identify AKU -> Formulate Question -> Ask
  Question Against Supporting Document -> Derive Result -> Prepare Final Report. Please
  update the flow accordingly rather than directly deriving the final result from the
  source document alone."
generated_output: >
  Enhanced skills/drawing-comparison/skill.md v2 -> v3 (v2 snapshotted immutably first):
  changed the retrieval methodology from direct comparison (look up the same grid
  position on both drawings and match) to question-driven retrieval. Added front-matter
  `retrieval-model: question-driven`; rewrote `declines-with`/`absence-policy` (both
  previously contradicted the new flow). Added Module 1 "AKU-driven retrieval" subsection
  defining AKU (Atomic Knowledge Unit), formulate-before-searching discipline, and
  answer-as-its-own-record. Restructured Module 2's workflow table: ALIGN+CLASSIFY+
  JUDGE+RETRIEVE replaced by FORMULATE -> ASK -> DERIVE. Updated Module 4's checklist and
  Module 5's output shape (added Question/Answer as explicit finding fields). Updated
  manifest/drawing-comparison/manifest.md's Governance, Sample context, Digests, and
  added an explicit "Open items" note that the 22 existing findings are pre-v3 records,
  not retrofitted, and that whether to re-run this pack under v3 is an open decision.
reason: >
  User specified this exact flow directly and asked for the skill to follow it instead of
  deriving results from the source document (or a direct source-vs-supporting
  glance-and-match) alone.
explanation: >
  Confirmed two things before acting, since this changes core judging methodology: what
  "AKU" means (confirmed: Atomic Knowledge Unit) and scope (confirmed: drawing-comparison
  only, since bom-extraction has no supporting document to ask a question against at
  all — the flow does not structurally apply there, and was not promoted to
  skills/_shared/engineeringDrawingReading.md for the same reason). Explicitly did not
  retrofit the 22 existing findings with reconstructed questions, since composing a
  question after its answer is already known is exactly what the new Module 1 rule
  forbids — flagged as an open, undecided question for the user rather than silently
  choosing to re-run or to leave the pack as pre-v3.
model: Claude Sonnet 5
skill/version_used: "skills/drawing-comparison/skill.md v3 (created in this entry)"
other_metadata: "not yet committed to git at the time this entry was written"
```

## Entry 8

```yaml
timestamp: "2026-09-22 (exact time not recorded)"
command/prompt: >
  "Okay, we have already understood the setup from the main branch... But now, I don't
  want to simply copy or reproduce the same structure... think through the architecture
  and structure for our use case and explain how we can proceed from here, don't commit
  and push anything, just make changes"
generated_output: >
  Designed and implemented a genuine architectural contribution beyond main's framework:
  skills/_shared/engineeringDrawingReading.md (v1) — a shared base layer stating 7 rules
  both drawing-comparison and bom-extraction had independently, without coordination,
  arrived at (position/tag-is-identity, legend-is-sole-authority, markers-are-hints-not-
  proof, absence-needs-active-search, contradictions-are-recorded-not-resolved, figures-
  are-the-default-answer, world-knowledge-decodes-never-fills). Refactored both skills to
  build on it: skills/drawing-comparison/skill.md v1 -> v2, skills/bom-extraction/
  skill.md v2 -> v3 (both snapshotted immutably first), each with duplicated Module 1/6
  content replaced by a `builds-on` pointer and cross-references to the shared rule
  numbers. Added bootstrap.md §17 (documenting the shared-layer pattern itself as a
  general capability, including its own promotion-bar and versioning discipline) and §18
  (documenting `_agent-comparison/` — a practice already in informal use since
  2026-09-17 — as a first-class, explicitly-scoped part of this project's architecture,
  something main has no equivalent of at all). Fixed a pre-existing dangling `(§17)`
  cross-reference in bootstrap.md §12 (inherited from origin/main's own copy, which also
  only goes to §16) to point at the correct `§12`. Updated both manifest.md files'
  digest tables and skill-version governance fields for the new versions.
reason: >
  User explicitly did not want main's structure reproduced as-is, and asked for the
  branch's own use cases to be thought through on their own terms — what's genuinely
  reusable conceptually from main vs. what should be designed differently for what this
  project actually has.
explanation: >
  The concrete finding motivating the shared layer: comparing the two skills' Module 1
  content side by side showed near-identical rules independently written for each,
  which is itself the evidence a shared layer belongs where main's structure has no
  equivalent (main's two use cases are different enough domains that this never
  happened there). Elevated `_agent-comparison/` from an ad hoc, undocumented convention
  used several times already to an explicitly documented, scoped part of the
  architecture, rather than leaving it as something main's framework has no room for.
  No finding content, verdict, or extraction result changed for either skill's existing
  samples (22 drawing-comparison findings, 27+23 bom-extraction findings across two
  documents) — this is a restructuring for maintainability and genuine architectural
  ownership, not a re-judgment; none were re-run. Per the user's explicit instruction, no
  commit or push was made.
model: Claude Sonnet 5
skill/version_used: "skills/drawing-comparison/skill.md v2; skills/_shared/engineeringDrawingReading.md v1 (both created/enhanced in this entry)"
other_metadata: "companion entry logged in prompt-log/bom-extraction/promptLog.md for the same action, since it touched both use cases at once"
```

## Entry 7

```yaml
timestamp: "2026-09-21 (exact time not recorded)"
command/prompt: "file name should be camelcase" / "Bootstrap.md, Documentation.html and so on first letter should be small, correct all thosde"
generated_output: >
  Renamed every framework-managed filename in this use case's tree to true camelCase
  (first letter lowercase): bootstrap.md, fileIndex.md, pivot.md, documentation.html,
  bin/readMe.md, skills/drawing-comparison/{skill.md, patternLog.md}, actuals/.../
  {detection.md, plan.md, graph.md, sectionMap.md, twin/*/page001.md},
  findings/.../{memb1-16, ctrl1-3, title1, rev1, note1}.md, reports/.../report.md,
  manifest/drawing-comparison/manifest.md, prompt-log/drawing-comparison/promptLog.md.
  Updated every internal cross-reference across the managed tree to match (including the
  functional path check in bin/_common.sh), and edited bootstrap.md rule 19's own wording
  and examples to describe camelCase (lowercase-first) instead of PascalCase, adding a
  note that this diverges from origin/main's own spelling of these same files
  (`Bootstrap.md`, `FileIndex.md`, etc. there use capital-first). Updated the two skill
  digest entries in manifest/drawing-comparison/manifest.md to the new post-rename SHA-256
  (content unchanged apart from the basename references inside the file itself).
reason: >
  User first asked for finding filenames to be camelCase (addressed in Entry 6's
  migration); when the root infra files (Bootstrap.md, FileIndex.md, Pivot.md,
  Documentation.html) were left capital-first to match origin/main exactly, the user was
  asked to confirm given the conflict with main's own naming, and explicitly chose to
  diverge from main and lowercase everything instead.
explanation: >
  Flagged the conflict with origin/main's own file spelling and with bootstrap.md rule
  19's own capital-first examples before acting (AskUserQuestion), rather than silently
  picking an interpretation, since this is an explicit divergence from the
  manager-approved reference branch the user had earlier asked this branch to align
  with. Proceeded only after the user's explicit choice. Left `context.md` unchanged (already
  lowercase) and left `twin/derived/<DocName>.md` and the source/supporting PDFs
  untouched, per rule 19's own document-identifier exception, which this instruction does
  not override.
model: Claude Sonnet 5
skill/version_used: "skills/drawing-comparison/skill.md v1 (filename/reference change only, no rule content affected)"
other_metadata: "not yet committed to git at the time this entry was written — see the branch's own commit history for the actual commit this shipped in"
```

## Entry 6

```yaml
timestamp: "2026-09-21 (exact time not recorded — reconstructed)"
command/prompt: >
  "Just take the example from the main branch as the reference... align [the current
  branch] with the clean and generic approach from the main branch... Do not commit or
  push anything. Make all changes only in the current branch."
generated_output: >
  Migrated this use case from the pre-existing ad hoc layout (`drawing-comparison/
  sample-1/`) into the bootstrap.md framework adopted from `origin/main`'s
  manager-approved `lippy-archive-skills` branch (merged via PR #2). Copied bootstrap.md,
  fileIndex.md (base), pivot.md, documentation.html, bin/*, .claude/settings.json
  verbatim from origin/main; added a drawing-comparison entry to fileIndex.md; rebuilt
  documents/drawing-comparison/{source,supporting}/, actuals/drawing-comparison/
  AD-3010-C-330030-SHT-004-REV4/{twin/,sectionMap.md,detection.md,plan.md,graph.md},
  findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/ (22 files, content
  preserved, front matter and cross-references re-expressed in main's format),
  reports/.../report.md, manifest/drawing-comparison/manifest.md (new),
  skills/drawing-comparison/{skill.md v1, patternLog.md, skill-versions/v1.md}
  (restructured into the Module 1-6 format from the prior flat skill file, content
  preserved), and this file. Moved the independent second pack (`sample-2`, Hermes Agent
  + qwen/qwen3.8-flash) to `_agent-comparison/sample-2-hermes-qwen/`, outside the managed
  tree, since the framework has no native concept of two competing independent attempts
  at one document. Old ad hoc files (`drawing-comparison/`, `templates/`) left in place
  pending a follow-up decision on removal.
reason: >
  User reviewed origin/main's new framework (built by a colleague, manager-approved) and
  asked for this branch's messy, incrementally-built structure to be aligned with it,
  explicitly to make the structure "much cleaner."
explanation: >
  No finding content, verdict, or materiality call was changed during migration — only
  file locations, filenames (CamelCase per bootstrap.md rule 19), and internal
  cross-references (old `pivot.md`/`bootstrap.md`/`skills/drawing-comparison.md` paths
  redirected to `skills/drawing-comparison/patternLog.md`, `skill.md`, and this file).
  Per the user's explicit instruction, no commit or push was made — all changes are local
  to this branch's working tree only.
model: Claude Sonnet 5
skill/version_used: "skills/drawing-comparison/skill.md v1 (restructured, not re-judged)"
other_metadata: "old ad hoc drawing-comparison/{bootstrap.md,sample-1/,sample-2/} and templates/{bootstrap.md,audit-log.md} not yet removed — pending a separate decision"
```

## Entry 5

```yaml
timestamp: "2026-09-17 (reconstructed from git history, commit e99c02a)"
command/prompt: "go ahead and fix it"
generated_output: >
  Corrected findings/ctrl1.md (verdict unchanged — UNCHANGED — but note added
  explaining the correction) and added 5 new finding files: MEMB-13, MEMB-14 (Grid A
  ladder cage, dimensions 420->500 and 545->515), MEMB-15, MEMB-16 (Grid E ladder cage,
  same pattern, a second independent occurrence), and CTRL-3 (a second reformat control
  case mirroring CTRL-1). Total findings 17 -> 22. Updated plan.md, report.md accordingly.
reason: >
  An independent second pack built over the same two PDFs (a different agent/model,
  Hermes Agent + qwen/qwen3.8-flash, evaluated per manager instruction) flagged that
  CTRL-1's "nothing changed at this node" claim missed a real dimension change.
explanation: >
  Did not accept the second pack's claim on its word alone. Re-verified independently:
  re-checked the second pack's report.md claim in full (it named a second, mirrored
  location the first check had missed), then ran a full independent text-occurrence
  count (`grep -c` for each of 420/500/545/515) across both `pdftotext -raw` and
  `pdftotext -layout` extractions of both PDFs, confirming exactly two real occurrences
  of the changed value pairs, not one. The original miss traced to `-raw` mode's PDF
  content-stream ordering surfacing only one of the two occurrences; `-layout` mode
  surfaced both. Also did not blindly trust the second pack's own narrated verification
  steps (one of its claims, a "vision channel" pixel-coordinate readout, was internally
  self-contradictory and needed independent confirmation).
model: Claude Sonnet 5
skill/version_used: "drawing-comparison skill (pre-framework flat file, later restructured as skill.md v1 in Entry 6)"
other_metadata: "second pack kept at drawing-comparison/sample-2/ at the time; now _agent-comparison/sample-2-hermes-qwen/ per Entry 6"
```

## Entry 4

```yaml
timestamp: "2026-09-17 (reconstructed from git history, commit 3e17c4f)"
command/prompt: >
  Manager-directed evaluation: install and configure Hermes Agent with the
  qwen/qwen3.8-flash model (via OpenRouter) and have it independently build a second,
  comparison pack over the same two Assent Steel drawings, without reading the first
  pack's actual findings, so the two could be compared.
generated_output: >
  Installed Hermes Agent (curl install script), configured ~/.hermes/config.yaml/.env
  with model qwen/qwen3.8-flash and an OpenRouter base_url/API key. Hermes independently
  built a full comparison pack (documents/, actuals/, findings/ — 27 findings, report.md)
  over the same AD-3010-C-330030-SHT-004 Rev 3/Rev 4 pair, under
  drawing-comparison/sample-2/. Compared the two packs' findings directly.
reason: >
  User wanted an independent second attempt at the same task, on a different model, as an
  evaluation exercise, kept separate from the first pack's own findings during the second
  pack's construction so it would not simply copy them.
explanation: >
  User pasted a live OpenRouter API key in plaintext chat during configuration — flagged
  as a security concern; configured it (already exposed) and recommended rotation
  afterward. The comparison (Entry 5) found sample-2 caught a real gap in sample-1
  (CTRL-1) and sample-1 was more precise on a couple of hard-to-read text details;
  reported as a mixed result, not a simple winner.
model: "Claude Sonnet 5 (orchestrating); Hermes Agent + qwen/qwen3.8-flash (producing sample-2)"
skill/version_used: "sample-2 built its own independent skill file, not the drawing-comparison skill used for sample-1"
other_metadata: "git push initially failed (no credentials); gh CLI installed standalone to ~/.local/bin/gh, device-code auth after 2 transient GitHub 500/504 errors; push then blocked on missing collaborator access until user added the account as a collaborator"
```

## Entry 3

```yaml
timestamp: "2026-09-15 (reconstructed from git history, commits a8002a9, e99c02a)"
command/prompt: "Rename usecase-5 folder to drawing-comparison; general cleanup"
generated_output: "Renamed the use-case folder from usecase-5 to drawing-comparison for clarity; no content change."
reason: "Naming consistency."
explanation: "Pure rename, no functional change."
model: Claude Sonnet 5
skill/version_used: "drawing-comparison skill (pre-framework flat file)"
other_metadata: "—"
```

## Entry 2

```yaml
timestamp: "2026-09-15 (reconstructed from git history, commit d4cbe73 and prior)"
command/prompt: >
  Explore usecase-4, then build a new "Drawing Comparison" use case on its own branch,
  comparing two Assent Steel steel-structure shop drawings
  (AD-3010-C-330030-SHT-004-REV3.pdf and -REV4.pdf).
generated_output: >
  Built the full pack from scratch: repaired both PDFs (see below), wrote the
  drawing-comparison skill (adapted from version-compare — see
  skills/drawing-comparison/patternLog.md Entry 1), extracted twin pages and derived
  text, wrote detection.md/plan.md, and produced 17 findings (later corrected to 22 in
  Entry 5) plus report.md.
reason: >
  User wanted a new use case built end-to-end, modeled on the existing usecase-4
  version-comparison work but for figure-based CAD drawings rather than prose documents.
explanation: >
  Both source PDFs were corrupted on arrival — raw HTTP multipart/form-data bodies (a
  DocuSign export artifact), not valid PDFs (no %PDF- header at byte 0, a trailing MIME
  boundary after %%EOF). Repaired by extracting the byte span from the first %PDF- marker
  to the final %%EOF line via a Python script before any extraction was attempted; this
  was recorded as an explicit event, not silently worked around. Also used a pixel-diff
  technique (PIL ImageChops.difference on 300dpi renders, BFS-clustered) to locate exact
  regions of visual change between the two revisions as a cross-check on the text-layer
  reading.
model: Claude Sonnet 5
skill/version_used: "drawing-comparison skill created in this entry (pre-framework flat file)"
other_metadata: "3 of the 17 original findings (MEMB-10/11/12) recorded confidence: UNSURE from the start — grid row not independently pinned, never guessed"
```

## Entry 1

```yaml
timestamp: "2026-09-15 (reconstructed)"
command/prompt: "Explore the current repo's usecase-4 and explain the Lippy Archive design."
generated_output: "Explained the pre-existing Lippy Archive design (context.md) and the usecase-4 implementation it was built from, ahead of building the new drawing-comparison use case in Entry 2."
reason: "Groundwork before building a new use case, to follow the design's existing conventions rather than inventing new ones."
explanation: "Research/explanation only — no files created or modified."
model: Claude Sonnet 5
skill/version_used: "not applicable"
other_metadata: "—"
```
