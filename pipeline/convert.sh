#!/bin/sh
set -eu
mkdir -p /output
dcm2niix -z y -o /output /input
