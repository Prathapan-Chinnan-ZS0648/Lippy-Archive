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

## Entry 10

```yaml
timestamp: "2026-09-29 (exact time not recorded)"
command/prompt: >
  "from this branch, remove all unwanted ones and keep only necessary ones, remove all
  unwanted. keep drawing comparison alone, the structure should be exact replica which I
  shared before" — followed by "everything should be replica from the path which I
  shared" and, on the question of whether to also shrink bootstrap.md's own operational
  content to match the reference's brevity, "which is good, you please decide."
generated_output: >
  Removed everything not needed to keep drawing-comparison alone: bom-extraction's
  folders across documents/, actuals/, findings/, manifest/, prompt-log/, reports/,
  skills/; _agent-comparison/; _superseded-old-structure/; context.md; documentation.html;
  bin/. Flattened documents/ and actuals/ up to the project root (dropped the
  AD-3010-C-330030-SHT-004-REV4/ wrapper from Entry 9 — with only one sample left, the
  wrapper added a nesting level the reference doesn't have at all). Renamed fileIndex.md
  to file-index.md; renamed all 22 finding files to the reference's exact <UNIT-ID>.md
  casing (memb1.md style to MEMB-1.md style); renamed actuals/twin/sectionMap.md to
  section-map.md and both twin pages to page-001.md (hyphenated); added
  actuals/twin/priority.md and actuals/report/README.md (present in the reference, absent
  here); added Deck/, Doc/, Excel/ placeholder folders with README.md files (no rendered
  binaries — nothing has been rendered yet). Flattened skills/drawing-comparison/skill.md
  to skills/drawing-comparison.md (single file, matching the reference's
  skills/<skill>.md shape); removed patternLog.md and skill-versions/v1.md, and removed
  AD-3010-C-330030-SHT-004-REV4/manifest.md entirely, since the reference has no
  equivalent to any of the three — all three remain fully recoverable from this
  repository's git history and from the hermes-qwen-comparison and
  aku-question-driven-retrieval branches, nothing was lost, only removed from this
  branch's working tree. Rewrote bootstrap.md end to end (§§1-14, replacing the prior
  16-section, sample-registry/promotion-bar/skill-versioning version) to describe the
  flattened, single-skill-file, no-manifest structure this branch now actually has, while
  keeping the terminal-commands table, execution flow, and non-negotiable rules — the
  operational content that lets an agent actually run this archive without the
  reference's own engine behind it. Trimmed templates/ from 11 files down to the
  reference's exact 3 (finding.md, twin-page.md, README.md), rewritten to match the new
  flattened paths. Fixed every internal cross-reference this touched across
  actuals/detection.md, plan.md, graph.md, report/report.md, twin/section-map.md, both
  twin pages, both twin/derived files, all 22 findings, pivot.md, and
  skills/drawing-comparison.md.
reason: >
  Two prior passes (Entries 8-9) kept generalizing toward supporting multiple future
  samples, which added structure the reference doesn't have. The user clarified, twice,
  that fidelity to the reference's actual shape — for this one sample, with bom-extraction
  and every exploratory side-folder removed — mattered more right now than preserving
  that generality. Asked whether bootstrap.md's own content should also shrink to the
  reference's brevity (which would mean losing the terminal-commands/execution-flow
  machinery this repo actually depends on, since we have no equivalent to the reference's
  own engine), the user delegated that call; kept the operational content and only
  removed what had gone stale, since discarding real, still-needed functionality wasn't
  what "replica of the path" was asking for.
explanation: >
  Worked category by category: bulk-removed out-of-scope folders with git rm, then
  git mv'd documents/ and actuals/ up a level, then renamed files to match the reference's
  exact casing/hyphenation convention, then swept the whole repository with grep for every
  stale path fragment the moves and removals created, fixing each one — distinguishing
  live/current files (fixed to stay accurate) from this file's own historical entries
  above (left untouched, since they correctly describe what was true when each was
  written). Verified the two source PDFs' SHA-256 digests were unchanged by the moves
  before and after.
model: "Claude (Sonnet 5)"
skill/version_used: "skills/drawing-comparison.md (flattened from skills/drawing-comparison/skill.md v1; path references updated, no judging rule or verdict logic changed)"
other_metadata: "Not committed yet at the time this entry was written. bom-extraction, _agent-comparison, and _superseded-old-structure are gone from this branch's working tree but remain on hermes-qwen-comparison and in git history."
```

## Entry 9

```yaml
timestamp: "2026-09-29 (exact time not recorded)"
command/prompt: >
  "have you done it for drawing comparison usecase with the reference folder structure, I
  want the exact folder structure, I'm not seeing that fully here. follow the same, just
  look at this [reference archive path]"
generated_output: >
  Corrected Entry 8's samples/<sample_name>/ design: the reference archive's own root IS
  its one sample (documents/, actuals/, pivot.md, prompting.md, bootstrap.md, skills/,
  templates/ all sit directly at its root, with no grouping folder for "the sample" since
  there is only ever one). Moved AD-3010-C-330030-SHT-004-REV4/ out from under samples/ to
  sit directly at the project root instead, a sibling of bootstrap.md, skills/, and
  templates/ — exactly matching the reference's shape, generalized only by there now being
  one such top-level folder per sample rather than assuming a single sample forever.
  Updated every path reference this touched: fileIndex.md's registry, bootstrap.md
  §§2,3,5,12,12.1,16 (removed every "samples/" grouping-folder mention, rewrote the §12
  diagram so <sample>/ is a top-level entry beside skills/ and templates/), all 11
  templates/, skills/drawing-comparison/{skill.md, patternLog.md} (skill-versions/v1.md
  again left untouched — immutable snapshot), and every file inside this sample's own
  folder (manifest.md, this file, detection.md, plan.md, graph.md, twin pages, twin/
  derived files, sectionMap.md, all 22 findings, report.md). Recomputed and updated
  skill.md's digest in manifest.md a second time.
reason: >
  The first pass (Entry 8) generalized correctly in spirit but added an extra "samples/"
  grouping directory the reference does not have — the user pointed back at the reference
  folder specifically because that extra nesting meant the top-level layout didn't visibly
  match it. Dropping the grouping folder and giving each sample its own top-level folder
  keeps the same genericity (many samples, one shared shape, no restructuring needed to
  add the next one) while matching the reference's actual root shape exactly.
explanation: >
  Compared the reference's root listing against what Entry 8 had produced, identified the
  one structural delta (an extra directory level), then re-ran the same kind of scoped
  git-mv-plus-path-fix pass used in Entry 8, this time removing rather than adding a path
  segment. Verified with a repo-wide grep for "samples/" afterward, fixing every remaining
  hit individually rather than assuming the bulk sed pass caught the generic <sample>
  placeholder forms in bootstrap.md and templates/ as well as the concrete path in this
  sample's own files.
model: "Claude (Sonnet 5)"
skill/version_used: "skills/drawing-comparison/skill.md v1 (path references updated a second time; no rule content or verdict logic changed)"
other_metadata: "Not committed or pushed. bom-extraction is still out of scope and untouched."
```

## Entry 8

```yaml
timestamp: "2026-09-29 (exact time not recorded)"
command/prompt: >
  Take the reference archive's folder-structure screenshot and the ABB reference
  implementation as structural references (not use-case content); revamp our structure so
  it is sample-specific rather than use-case-specific, reusable across use cases and
  samples without restructuring again; focus only on the drawing-comparison use case's one
  sample for now; do not commit or push.
generated_output: >
  Introduced samples/<sample_name>/ as the one generic, self-contained per-sample folder
  shape (documents/, actuals/{twin/, detection.md, plan.md, graph.md, findings/, report/},
  manifest.md, prompting.md, HITL/) reused by any use case's samples, replacing the old
  <usecase>/<source-document-name> double-nesting under separate documents/, actuals/,
  findings/, reports/, manifest/, and prompt-log/ roots. Moved this sample's entire
  content (documents, twin, detection.md, plan.md, graph.md, sectionMap.md, 22 findings,
  report.md, manifest.md, prompt log) into AD-3010-C-330030-SHT-004-REV4/ via git
  mv, updated every internal path reference inside those files and in
  skills/drawing-comparison/{skill.md, patternLog.md} to match (skill-versions/v1.md left
  untouched — immutable snapshot), flattened manifest.md's old "sectioned per source
  document" Index wrapper since a per-sample manifest never needs it, renamed
  MANUAL_VALIDATE.md to manualValidate.md for camelCase consistency (rule 19 already
  claimed this; the literal filename hadn't matched), rewrote fileIndex.md as a
  sample-keyed registry (sample_name is now the unique key, not use_case_name; bom-extraction's
  two samples registered as separate entries marked layout: legacy, pending their own
  migration pass), and rewrote bootstrap.md §§2,3,5,6,7,8.4,9,10,11,12,13,15,16 to describe
  the sample-first architecture, added §12.1 and a new templates/ directory with 11 blank,
  fully-fielded skeletons (one per file a sample owns). bom-extraction's own folders were
  left untouched, per scope.
reason: >
  The prior <usecase>/<source-document-name> layout forked structurally by use case,
  duplicating near-identical directory shapes across documents/, actuals/, findings/,
  reports/, manifest/, and prompt-log/ for every use case, and made "how many samples
  exist" invisible in fileIndex.md, which only tracked one current document per use case
  entry. The user asked for the generic unit to be the sample, not the use case, mirroring
  how the reference implementation's own root is already shaped like one self-contained
  sample.
explanation: >
  Read the full reference archive tree (already explored in this session) and the
  screenshot the user supplied (the same archive, confirmed identical), designed the
  samples/<sample>/ shape as the reference's per-engagement shape generalized to host many
  samples in one repository, then executed the move file-by-file with git mv (preserving
  history), followed by a scoped sed pass to update path references inside the moved
  sample's own files only (never touching skill-versions/v1.md's immutable snapshot or
  this file's own historical entries below, which describe state as it was at the time).
model: "Claude (Sonnet 5)"
skill/version_used: "skills/drawing-comparison/skill.md v1 (path references updated to the new samples/<sample>/ convention; no rule content or verdict logic changed)"
other_metadata: "Not committed or pushed, per explicit instruction — git status shows the full diff as renames plus content edits on branch hermes-qwen-comparison. bom-extraction's migration is a separate, not-yet-started task."
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
