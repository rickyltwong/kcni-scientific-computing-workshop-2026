# Source of this data

- Repository: <https://github.com/neurolabusc/dcm_qa_ge>
- Commit: `e92133ae414e2b23e8c4d07a4030ab4dbb41518e`
- License: BSD 2-Clause, Copyright (c) 2020 Chris Rorden and Jaemin Shin ([`LICENSE`](LICENSE), copied unchanged)
- Upstream README: [`README.md`](README.md), copied unchanged

## What was copied

Unchanged, from the upstream `In/` folder:

- `In/01_Ax_DWI_TENSOR_R2` to `In/05_3D_Ax_T1_MP_RAGE_R22`: 4 diffusion series and 1 T1-weighted series
- `In/SliceTiming/2_*` to `In/SliceTiming/15_*`: 14 fMRI series
- `In/SliceTiming/ParametersDescription.txt` and `In/SliceTiming/exam_summary.txt`

Not copied: the upstream reference outputs (`Ref/`), the validation scripts, and the `SliceTimingMPh` and `SliceTimingRT` series, which are not in the workshop session.
