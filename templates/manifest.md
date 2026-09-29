# Manifest

Final validation gate for this sample, per `bootstrap.md` §15. One manifest per sample —
`bootstrap.md` §12 — so this file is already scoped to the one source/supporting pair this
sample holds; nothing here is ever sectioned or indexed by document. No artifact in this
sample is an accepted deliverable until the checklist below is fully checked and signed.

### Governance

```yaml
sample: <sample_name>
source-document: <document>.ext
use-case: <use_case_name>
skill-version: <vN>                # currently live in skills/<usecase>/skill.md's own front matter
classification: <e.g. internal working draft; no external distribution without a named recipient in pivot.md>
state: draft | verified | signed | accepted
signed-by: —                       # — until a named human reviewer signs
verified-by: <e.g. single-reader cross-check, or a named reviewer>
verified-on: <YYYY-MM-DD>
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

<what this document/pair is, in plain terms; anything unusual about how it was received or
prepared; judging rules and workflow are defined in `skills/<usecase>/skill.md`>

### Checklist

| Check | Status | Notes |
|---|---|---|
| `fileIndex.md` present and resolvable | ⬜ | |
| `sample_name` present and unique | ⬜ | |
| `use_case_name` matches `skill_file_path`'s parent directory | ⬜ | |
| Runtime inputs resolved (source/supporting/skill) | ⬜ | |
| Digests recorded for all inputs | ⬜ | see Digests section below |
| Skill gap analysis performed | ⬜ | |
| Skill version recorded on artifacts | ⬜ | |
| `<sample>/actuals/twin` extracted from all documents | ⬜ | |
| `detection.md` and `plan.md` complete | ⬜ | |
| Findings cover documented scope | ⬜ | |
| `graph.md` traces findings to report | ⬜ | |
| Findings verified-by / verified-on filled | ⬜ | |
| HITL review completed | ⬜ | `<sample>/HITL/manualValidate.md` |
| Report derives only from approved findings | ⬜ | |
| Signed by a reviewer | ⬜ | |

### Digests

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `<sample>/documents/source/<document>.ext` | source | `<sha256>` | <YYYY-MM-DD> |
| `<sample>/documents/supporting/<document>.ext` | supporting | `<sha256>` | <YYYY-MM-DD> |
| `skills/<usecase>/skill.md` | skill — live copy, current version | `<sha256>` | <YYYY-MM-DD> |

### Verdict

**NOT YET AN ACCEPTED DELIVERABLE** until every Checklist row above is ✅ and a named
reviewer has signed this file.
