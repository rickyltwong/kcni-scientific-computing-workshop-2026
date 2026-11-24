# A minimal DICOM to NIfTI pipeline

The smallest working shape of an XNAT pipeline: a script, a recipe for the container it runs in, and a card that tells XNAT how to call it.

| File | What it does |
|---|---|
| [`convert.sh`](convert.sh) | Reads DICOM from `/input` and writes NIfTI to `/output` with [dcm2niix](https://github.com/rordenlab/dcm2niix) |
| [`Dockerfile`](Dockerfile) | Starts from Debian, installs dcm2niix, adds the script and runs it |
| [`command.json`](command.json) | The XNAT Container Service command definition: XNAT mounts a scan's `DICOM` resource at `/input` and saves `/output` as a `NIFTI` resource on the same scan |

This is a teaching example. It is not installed on CAMH XNAT, where the workshop uses KCNI's own converter.

## Run it on your computer

Needs Docker (or Podman: replace `docker` with `podman`). From the top of this repository:

```sh
docker build -t dcm2niix-teaching:latest pipeline
mkdir -p output
docker run --rm \
  -v "$PWD/sourcedata/dcm_qa_ge/In/05_3D_Ax_T1_MP_RAGE_R22:/input:ro" \
  -v "$PWD/output:/output" \
  dcm2niix-teaching:latest
```

`output/` now holds the T1 as a `.nii.gz` image and its `.json` sidecar. A diffusion series, such as `In/01_Ax_DWI_TENSOR_R2`, also gives a `.bval` and a `.bvec`. The image installs dcm2niix from Debian 12, which is version v1.0.20220720.

On a Linux host with SELinux enforcing, add `,z` to each `-v` option (for example `:/input:ro,z`).
