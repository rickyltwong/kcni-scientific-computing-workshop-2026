# The workshop data

Each attendee has a copy of one MR session in project TST10_CMH on CAMH XNAT. Its 19 scans are the DICOM series in [`sourcedata/dcm_qa_ge/`](../sourcedata/dcm_qa_ge/UPSTREAM.md), public validation data from GE 3T scanners. The diffusion and T1-weighted series come from a SIGNA Pioneer and the fMRI series from a SIGNA Architect. For the workshop they were merged into one session, which is why the fMRI scan numbers start at 12.

| XNAT scan | Series description | Type | DICOM files | Folder |
|---|---|---|---|---|
| 1 | `Ax DWI TENSOR R2` | Diffusion | 14 | [`In/01_Ax_DWI_TENSOR_R2`](../sourcedata/dcm_qa_ge/In/01_Ax_DWI_TENSOR_R2) |
| 2 | `Ax DWI TENSOR R3` | Diffusion | 14 | [`In/02_Ax_DWI_TENSOR_R3`](../sourcedata/dcm_qa_ge/In/02_Ax_DWI_TENSOR_R3) |
| 3 | `Ax DWI TENSOR R1p5` | Diffusion | 14 | [`In/03_Ax_DWI_TENSOR_R1p5`](../sourcedata/dcm_qa_ge/In/03_Ax_DWI_TENSOR_R1p5) |
| 4 | `Ax DWI TENSOR R2MB2` | Diffusion | 63 | [`In/04_Ax_DWI_TENSOR_R2MB2`](../sourcedata/dcm_qa_ge/In/04_Ax_DWI_TENSOR_R2MB2) |
| 5 | `3D Ax T1 MP-RAGE_R22` | T1-weighted | 130 | [`In/05_3D_Ax_T1_MP_RAGE_R22`](../sourcedata/dcm_qa_ge/In/05_3D_Ax_T1_MP_RAGE_R22) |
| 12 | `Ax fMRI HB8 72sl int asc` | fMRI | 216 | [`In/SliceTiming/2_Ax_fMRI_HB8_72sl_int_asc`](../sourcedata/dcm_qa_ge/In/SliceTiming/2_Ax_fMRI_HB8_72sl_int_asc) |
| 13 | `Ax fMRI HB8 72sl seq asc` | fMRI | 216 | [`In/SliceTiming/3_Ax_fMRI_HB8_72sl_seq_asc`](../sourcedata/dcm_qa_ge/In/SliceTiming/3_Ax_fMRI_HB8_72sl_seq_asc) |
| 14 | `Ax fMRI HB8 80sl int asc` | fMRI | 240 | [`In/SliceTiming/4_Ax_fMRI_HB8_80sl_int_asc`](../sourcedata/dcm_qa_ge/In/SliceTiming/4_Ax_fMRI_HB8_80sl_int_asc) |
| 15 | `Ax fMRI HB8 80sl seq asc` | fMRI | 240 | [`In/SliceTiming/5_Ax_fMRI_HB8_80sl_seq_asc`](../sourcedata/dcm_qa_ge/In/SliceTiming/5_Ax_fMRI_HB8_80sl_seq_asc) |
| 16 | `Ax fMRI HB8 77sl int asc` | fMRI | 231 | [`In/SliceTiming/6_Ax_fMRI_HB8_77sl_int_asc`](../sourcedata/dcm_qa_ge/In/SliceTiming/6_Ax_fMRI_HB8_77sl_int_asc) |
| 17 | `Ax fMRI HB8 77sl seq asc` | fMRI | 231 | [`In/SliceTiming/7_Ax_fMRI_HB8_77sl_seq_asc`](../sourcedata/dcm_qa_ge/In/SliceTiming/7_Ax_fMRI_HB8_77sl_seq_asc) |
| 18 | `Ax fMRI HB8 72sl int des` | fMRI | 216 | [`In/SliceTiming/8_Ax_fMRI_HB8_72sl_int_des`](../sourcedata/dcm_qa_ge/In/SliceTiming/8_Ax_fMRI_HB8_72sl_int_des) |
| 19 | `Ax fMRI HB8 72sl seq des` | fMRI | 216 | [`In/SliceTiming/9_Ax_fMRI_HB8_72sl_seq_des`](../sourcedata/dcm_qa_ge/In/SliceTiming/9_Ax_fMRI_HB8_72sl_seq_des) |
| 20 | `Ax fMRI HB8 80sl int des` | fMRI | 240 | [`In/SliceTiming/10_Ax_fMRI_HB8_80sl_int_des`](../sourcedata/dcm_qa_ge/In/SliceTiming/10_Ax_fMRI_HB8_80sl_int_des) |
| 21 | `Ax fMRI HB8 80sl seq des` | fMRI | 240 | [`In/SliceTiming/11_Ax_fMRI_HB8_80sl_seq_des`](../sourcedata/dcm_qa_ge/In/SliceTiming/11_Ax_fMRI_HB8_80sl_seq_des) |
| 22 | `Ax fMRI HB8 77sl int des` | fMRI | 231 | [`In/SliceTiming/12_Ax_fMRI_HB8_77sl_int_des`](../sourcedata/dcm_qa_ge/In/SliceTiming/12_Ax_fMRI_HB8_77sl_int_des) |
| 23 | `Ax fMRI HB8 77sl seq des` | fMRI | 231 | [`In/SliceTiming/13_Ax_fMRI_HB8_77sl_seq_des`](../sourcedata/dcm_qa_ge/In/SliceTiming/13_Ax_fMRI_HB8_77sl_seq_des) |
| 24 | `Ax fMRI HB3 48sl int asc` | fMRI | 144 | [`In/SliceTiming/14_Ax_fMRI_HB3_48sl_int_asc`](../sourcedata/dcm_qa_ge/In/SliceTiming/14_Ax_fMRI_HB3_48sl_int_asc) |
| 25 | `Ax fMRI HB3 48sl seq asc` | fMRI | 144 | [`In/SliceTiming/15_Ax_fMRI_HB3_48sl_seq_asc`](../sourcedata/dcm_qa_ge/In/SliceTiming/15_Ax_fMRI_HB3_48sl_seq_asc) |

## What a conversion writes

On XNAT, the DICOM to NIfTI (KCNI default) pipeline adds a `NIFTI` resource to the scan it ran on. For scan 1 it holds:

| File | What it is |
|---|---|
| `1_Ax_DWI_TENSOR_R2.nii.gz` | The image |
| `1_Ax_DWI_TENSOR_R2.json` | Its sidecar: the scanner settings, readable as text |
| `1_Ax_DWI_TENSOR_R2.bval`, `.bvec` | Diffusion weightings and directions (diffusion scans only) |
| `conversion.json` | How these files were made: the converter and its version, and the scan they came from |

## The project config

[`project-resource/config.json`](../project-resource/config.json) is the `config.json` in the `BIDS` resource of project TST10_CMH: the settings the DICOM to NIfTI pipeline reads there. It was first written for project TST01_CMH, which holds the same test data. It works only with KCNI's converter on CAMH XNAT and is here for reference.

- `descriptions` maps each series, by its exact series description, to a BIDS data type and suffix (`dwi`, `T1w`, `bold`). A series whose description differs matches nothing.
- `images: true` keeps the `.nii.gz` images on XNAT. Without it, only the sidecars are kept.
- `deface` sets which anatomical image types get a defaced copy and the quality check that copy must pass.
- `grouping` sets how sessions become BIDS sessions when a dataset is packaged.
