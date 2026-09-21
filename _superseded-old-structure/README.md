# Superseded — old ad hoc structure, pre-Bootstrap.md

`drawing-comparison/` (the old `bootstrap.md` + `sample-1/` pack) and `templates/`
(`bootstrap.md`, `audit-log.md`) are the pre-migration layout this use case used before
this branch adopted `origin/main`'s `Bootstrap.md` framework on 2026-09-21.

Every piece of real content in `drawing-comparison/sample-1/` has been migrated into the
new structure with no change to findings, verdicts, or materiality calls:

- `sample-1/documents/` → `documents/drawing-comparison/`
- `sample-1/actuals/` → `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/`
- `sample-1/actuals/findings/` → `findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/`
- `sample-1/actuals/report/report.md` → `reports/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/Report.md`
- `sample-1/skills/drawing-comparison.md` → `skills/drawing-comparison/Skill.md` (restructured into the Module 1-6 format)
- `sample-1/pivot.md`, `prompting.md`, `audit-log.md` → folded into `skills/drawing-comparison/PatternLog.md` and `prompt-log/drawing-comparison/PromptLog.md`
- `sample-1/file-index.md` → the `drawing-comparison` entry in the root `FileIndex.md`

Left here rather than deleted, so nothing is silently lost — kept only for reference. Not
part of the managed tree; `FileIndex.md`, `Bootstrap.md`'s commands, and `Manifest.md`
know nothing about this folder.
