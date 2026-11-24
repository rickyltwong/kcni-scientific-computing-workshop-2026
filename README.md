# KCNI Scientific Computing Workshop 2026: Running Image Processing Pipelines on XNAT

25 November 2026 · Ricky Wong, Krembil Centre for Neuroinformatics, CAMH

In this workshop you find your own copy of a test MR session on CAMH XNAT, download it, convert it from DICOM to NIfTI with a pipeline that runs on XNAT, and collect the results. We also look at how a pipeline is packaged in Docker and described to XNAT. The main part needs no coding.

## Before you come

1. Check that you can log in at <https://xnat.camh.ca/xnat>.
2. Check that you can open project **TST10_CMH**. Your copy of the session has your initials in its label.
3. Bring a laptop with a web browser. Nothing needs to be installed.

If step 1 or 2 fails, email xnat.neuro@camh.ca before the workshop.

## What is in this repository

| Path | What it is |
|---|---|
| [`sourcedata/dcm_qa_ge/`](sourcedata/dcm_qa_ge/UPSTREAM.md) | The 19 DICOM series in each workshop session: 4 diffusion, 1 T1-weighted and 14 fMRI. Public GE test data with no real participant. |
| [`docs/data.md`](docs/data.md) | Each series, its scan number in XNAT, and what a conversion writes |
| [`project-resource/config.json`](docs/data.md#the-project-config) | The project settings the DICOM to NIfTI pipeline reads in TST10_CMH, for reference |
| [`pipeline/`](pipeline/README.md) | A minimal DICOM to NIfTI pipeline: a script, its Dockerfile and its XNAT command definition. You can build and run it on your own computer. |

## Credits

The test data is [dcm_qa_ge](https://github.com/neurolabusc/dcm_qa_ge) by Chris Rorden and Jaemin Shin, under the BSD 2-Clause License. The copy here is unchanged; see [`sourcedata/dcm_qa_ge/UPSTREAM.md`](sourcedata/dcm_qa_ge/UPSTREAM.md).

## See also

The [2025 workshop](https://github.com/rickyltwong/kcni-scientific-computing-workshop-2025) goes further into writing your own XNAT Container Service commands.

## Help

xnat.neuro@camh.ca (XNAT Administrators team)
