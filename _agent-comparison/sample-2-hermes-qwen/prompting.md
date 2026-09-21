# Prompting log — drawing-comparison/sample-2

Every instruction received, dated, in order.

## 2026-09-16 · brief installed (pack creation)

Verbatim instruction from the user (the whole brief for this pack):

> This repo implements a "Lippy Archive" — read context.md fully first, it's the whole design spec.
>
> Then read these two files ONLY from drawing-comparison/sample-1/ to understand the pattern and conventions (do NOT read anything else in drawing-comparison/sample-1/ — its actuals/, pivot.md, prompting.md, and file-index.md contain a finished worked answer for the same two drawings you're about to analyze, and I want your analysis to be independently derived, not copied):
> - drawing-comparison/sample-1/skills/drawing-comparison.md (the skill definition — reuse this file as-is, don't rewrite it)
> - drawing-comparison/sample-1/bootstrap.md (just to see the bootstrap.md format/structure, not its specific content)
>
> The two drawings to compare are already available, already repaired and valid, at:
> - drawing-comparison/sample-1/documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf (older, SUPPORTING)
> - drawing-comparison/sample-1/documents/source/AD-3010-C-330030-SHT-004-REV4.pdf (newer, SOURCE)
>
> Now create a NEW sample, drawing-comparison/sample-2/, with this structure:
> - bootstrap.md, prompting.md, pivot.md, file-index.md
> - documents/source/, documents/supporting/ (copy the two PDFs above into these, from sample-1 — don't re-derive or re-fetch them)
> - skills/drawing-comparison.md (copy sample-1's skill file unchanged)
> - actuals/detection.md, actuals/plan.md
> - actuals/twin/ (one twin page per document, plus derived/ and section-map.md)
> - actuals/findings/ (one file per real difference you find between the two drawings — title block, notes, revision history, and every member/connection label — plus a couple of UNCHANGED control cases)
> - actuals/report/report.md
>
> Actually compare the two PDFs yourself, page by page — don't guess. Render or extract both, find every real difference, and verify each one against both files directly before writing a finding for it. If you're not fully confident about something (e.g. exactly where on the drawing a change is located), say so and mark it UNSURE in that finding's confidence field rather than guessing a value you haven't verified.
>
> Log every instruction you receive in prompting.md and every decision (with an explicit yes or no) in pivot.md, same as sample-1 does.
>
> Do not modify or write anything under drawing-comparison/sample-1/ — it's read-only reference material. Do not modify anything outside drawing-comparison/sample-2/ (leave context.md, usecase-4 references, and everything else untouched).
>
> Work through this step by step, and tell me when each major stage (bootstrap+skill setup, findings, report) is done so I can check in.

## 2026-09-16 · Stage 1 check-in reply (proceed + verify-raster instruction)

Verbatim from the user:

> Looks good, proceed to Stage 2 — verify all candidates against the rendered images, especially the 420→500, 545→515, and "3 AT EL. 112.830" changes.

Action taken: Stage-2 plan amended so every text-layer candidate must be confirmed on rendered rasters of both sheets (independent raster channel, not text layer alone) before it is written as a finding; named candidates 420→500, 545→515, "3 AT EL. 112.830"→"AT EL. 112.830" get priority confirmation.

## 2026-09-16 · Stage 2 check-in reply

> go ahead

Interpreted as: proceed to Stage 3 (findings) including re-issuing the raster-crop command that had timed out at the approval gate. All named candidates were then settled (pivot §12): "420" and "500" digit-clean on matched renders (c94/c95); REV. box "3"/"4" read at the same pixel position; "3 AT EL. 112.830" confirmed a balloon artefact; remaining OCR gaps recorded as UNSURE (MEMB-8, MEMB-14/15) rather than guessed.

## 2026-09-16 · Stage 3 check-in reply

> go

Proceed to Stage 4: report.md written (counts + 27 rows + attention list), bootstrap profile/state finalised, pivot agreement table filled, closure decisions §13, checker-equivalent pass run: 27/27 findings valid, twin digests match the real files, report rows reconcile with finding files — 0 problems.

## 2026-09-18 · bootstrap.md unified to a common cross-skill structure — action taken by Claude, not this pack's original author

The user (outside this pack's own build session) asked for one common `bootstrap.md` structure across every skill, comparing this pack's shape against `sample-1`'s and `bom-extraction`'s. Claude (the session handling that request, not the Hermes session that authored this pack) added `### What this pack does and does not cover` (previously absent) between "What must not happen" and "Source of truth", matching `templates/bootstrap.md` at the repo root. No other content changed. See `pivot.md` § 14.

## 2026-09-21 · audit-log.md added — action taken by Claude, not this pack's original author

Same external session requested logs/audit tracking of each workflow step. Claude added `audit-log.md`, reconstructing this pack's one run from its own `pivot.md` §§1–13 and `actuals/report/report.md`'s "Method recap" (both already recorded the run in comparable step-by-step detail) rather than inventing detail this pack's own records don't support. Added operational guideline 7 (log every step) and a `file-index.md` row. See `pivot.md` § 15.

## 2026-09-21 · audit-log.md expanded with per-step detail — action taken by Claude, not this pack's original author

Same external session asked for more detail than a one-line-per-step table. Rewrote this pack's `audit-log.md` with a "Step detail" block per step, sourced strictly from what this pack's own `pivot.md` (§§1–13) and `report.md` already documented — the coordinate cell-diff method, the node-pairing method (§10), the vision-probe incident (§9), the pixel-diff confirmations (§12), the Stage-4 closure decisions (§13) — reorganized under the skill's own step names rather than left as a flat decision list. Nothing was added that this pack's own records did not already state. See `pivot.md` § 16.

## 2026-09-21 · bootstrap.md restructured: one file per skill, not per sample — action taken by Claude, not this pack's original author

Same external session clarified: this pack and `sample-1` should share one literal `bootstrap.md`, not each keep their own copy in a shared shape. `drawing-comparison/bootstrap.md` created (one file, skill root). This pack's own `bootstrap.md` deleted; its pack-specific facts moved into a new "Pack facts" header in `file-index.md`, and its pack-specific prose (Context, Coverage) into new sections in `pivot.md`, sourced from this pack's own prior bootstrap.md content — nothing invented, only relocated. See `pivot.md` § 17.
