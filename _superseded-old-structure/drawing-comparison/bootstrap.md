# Drawing Comparison — skill bootstrap (shared across every sample)

```
skill: drawing-comparison
domain: engineering drawing revision comparison — currently exercised on offshore/onshore steel structure fabrication drawings (P&ID and other drawing types are in scope for the same skill, see skills/drawing-comparison.md)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: n/a — every callout of the source is classified against the supporting drawing; see skills/drawing-comparison.md
labels: TITLE-BLOCK, NOTES, STRUCTURAL-MEMBER
pages: one physical sheet is one page (PDF rule, design section 6) — exact page count is per-sample, recorded in that sample's file-index.md
```

This is the **one shared bootstrap for the `drawing-comparison` skill** — not a per-sample file. Every sample under this skill (`sample-1/`, `sample-2/`, and any added later) reads this file for what is common to the skill, and keeps only what is genuinely specific to that sample (which document pair, its digests, its finding counts, its state, its open items) in its own `file-index.md` and `pivot.md`. See "Where sample-specific facts live" below.

The skill's own units/labels/finding-shape/pack-profile declarations live in `skills/drawing-comparison.md` (itself shared byte-for-byte across every sample — `sample-2` reused `sample-1`'s copy unchanged) and are read from there by the scorer, per Lippy Archive design revision 3 section 5. This bootstrap does not repeat that declaration, only points at it.

## Brief

### Task

For every callout that differs between an earlier and a later revision of the same drawing, produce a finding (`actuals/findings/<id>.md`, in the shape declared by `skills/drawing-comparison.md`) that states:

- what changed (ADDED, REMOVED, or CHANGED),
- the exact callout and grid position in the supporting (earlier) revision, where it existed,
- the exact callout and grid position in the source (later) revision, where it exists,
- whether the change is material to fabrication/construction (yes/no), and
- one line of reasoning for the materiality call.

Callouts that carried forward between revisions with no substantive difference are also reported, marked UNCHANGED, as control cases — the drawing equivalent of `version-compare`'s renumbering control case — so a run's false-positive rate can be checked against known cases without transcribing every identical callout on the sheet.

### Context

Applies to any pair of drawing revisions where a later, reissued sheet is compared against the earlier, superseded one it replaces (the later revision is always SOURCE, the earlier is always SUPPORTING — see `skills/drawing-comparison.md` § The rule). The specific subject — which fabricator, which drawing number, which discipline — is per-sample; see that sample's own `pivot.md` § Method for its specific context. As of this bootstrap, every sample under this skill happens to cover the same underlying drawing pair (Assent Steel, `AD-3010-C-330030-SHT-004`, Rev 3 → Rev 4) built independently by different agents/models, for the explicit purpose of comparing results — a future sample need not share a subject with any existing one.

### What counts as a unit

See `skills/drawing-comparison.md`. In short: a unit is one callout (a title-block field, a revision-table row, a Notes-box item, or a member/connection/dimension label on a plan view) a careful reader would point to independently, identified by its view and grid position, not by its text alone — drawings in this domain routinely repeat identical member-size and connection-code text at different grid positions (see the `repeated-callout ambiguity` pack-profile entry).

### What must not happen (skill-general — every sample must guard against these)

- A callout must not be marked CHANGED because a neighbouring revision cloud was cleared and its label reflowed to a new position on the sheet with no wording change. Conversely, a reformat-only verdict at one node must not be assumed to mean *nothing else* changed at that node — check every callout at a node independently, not just the one being reformatted.
- A callout must not be treated as unchanged just because it carries no revision cloud — a drawing's own cloud markers are a starting draft, never a complete change list (see the `revision-cloud-untagged` pack-profile entry); values must be checked against the supporting revision independently of what is clouded in the source.
- A callout confirmed CHANGED by the text layer but not yet independently pinned to an exact grid position must be recorded `confidence: UNSURE` with the uncertainty stated plainly, never guessed into a specific grid location.
- A tag's/callout's grammar must not be assumed from generic convention when the drawing set publishes its own legend/nomenclature sheet — read the project's own legend, don't assume a different project's.

Sample-specific instances of these (which finding, which grid position, which pivot entry) are recorded in each sample's own `pivot.md`, not repeated here.

### What this skill's samples do and do not cover

Coverage is a per-sample fact (how many findings, which callouts were scoped down, what's still open) — see each sample's own `file-index.md` header and `pivot.md`. This section states only the skill-general allowance: a sample need not exhaustively re-transcribe every identical, unchanged callout on a dense drawing — design section 17's "cited and hard items first, the rest marked and scored later" allowance applies — provided the sample states plainly what it covered in full versus what it named but did not individually detail.

### Source of truth

The drawing PDFs themselves are authoritative. Every finding in every sample is checked directly against the page content — text layer and rendered raster both, since the great majority of a drawing's content typically exists only in the plan graphic, not as extractable running text. Exact extraction method (e.g. plain text-layer diff vs. coordinate-precise word-layer diff) is a per-sample methodology choice, recorded in that sample's own `pivot.md` § Method.

### A note on supplied files

Whether an input file needed repair (e.g. a corrupted or wrapped PDF) is a per-sample fact — see each sample's own `pivot.md` § 1 (or wherever that sample records it) for whether its specific input files opened cleanly or needed work before use.

## Operational guidelines

1. Track every instruction received in that sample's own `prompting.md`, dated.
2. Record every decision with an explicit yes or no in that sample's own `pivot.md`, including the reader-agreement table required by the Lippy Archive verification standard.
3. Keep that sample's own `file-index.md` current for every file added or changed, including its digest — and, per "Where sample-specific facts live" below, current for the pack-level facts (source/supporting, state, signed-by, classification, profile) that used to live in a per-sample bootstrap.md.
4. Read every document from its own file (text layer and rendered raster, or whatever channels the skill needs), never from a partial extraction alone; count pages from 1 in the file.
5. A run never edits `actuals/`; a person never edits `runs/`.
6. Every actual carries `verified-by`, `verified-on` and `confidence` in its front matter; twin pages also carry `verification`.
7. Log every pass through a workflow step in that sample's own `audit-log.md` as it happens — step name, what it touched, what it produced — before moving to the next step.
8. Do not modify another sample's folder, or anything outside `drawing-comparison/`, without that being the explicit task.

## Where sample-specific facts live

A per-sample `bootstrap.md` is **not** created for any sample of this skill. What used to be a per-sample bootstrap's fenced front-matter block (`source`, `supporting`, `state`, `signed-by`, `classification`, `profile`, exact page count) now lives in that sample's own `file-index.md`, in a header block before its file table. What used to be a per-sample bootstrap's sample-specific prose (the real Context paragraph, sample-specific "what must not happen" instances, the coverage statement, the note on this sample's own supplied files) lives in that sample's own `pivot.md`, as dated/numbered entries — most of this already existed there in practice, since `pivot.md` already records exactly this kind of pack-specific fact.

## Samples under this skill

| sample | subject | state | findings | notes |
|---|---|---|---|---|
| `sample-1/` | Assent Steel `AD-3010-C-330030-SHT-004`, Rev 3 → Rev 4 | verified, not signed | 22 | Built by Claude; see `sample-1/file-index.md` header and `pivot.md` for full facts |
| `sample-2/` | Assent Steel `AD-3010-C-330030-SHT-004`, Rev 3 → Rev 4 (same pair, independent build) | verified, not signed | 27 | Built by Hermes Agent (`qwen/qwen3.8-flash`); see `sample-2/file-index.md` header and `pivot.md` for full facts |

Add a row here whenever a new sample is created under this skill — this table, not a new bootstrap.md, is how a reader finds what samples exist.
