# Agent comparison exercise — kept outside the managed framework

This folder holds a one-off exercise, not an ongoing pipeline artifact: `sample-2-hermes-qwen/`
is Hermes Agent (`qwen/qwen3.8-flash`) independently building the same
`AD-3010-C-330030-SHT-004` Rev 3 -> Rev 4 comparison that this branch's real pipeline
output (now under `actuals/drawing-comparison/`, `findings/drawing-comparison/`, etc.)
was built for by Claude, specifically so the two could be compared.

Main's `Bootstrap.md` framework has no slot for "two independent attempts at the same
document pair" — its model is one output tree per source document, evolving over time
via `ENHANCE-SKILL`, not two parallel competing attempts. Rather than force this into
`use_case_name` (which would misuse that field to mean "which agent tried it" instead of
"which task type"), this is kept here, clearly labeled, as reference material — the
conclusion of the comparison (which pack was more complete, what each caught that the
other missed) is what mattered, and that conclusion is already recorded; the exercise
itself does not need to keep re-running through the pipeline.

Not touched by `Bootstrap.md`'s commands, not part of `FileIndex.md`'s configuration.
