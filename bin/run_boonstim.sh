#!/bin/bash

module load nextflow
export NXF_VER=20.02.0-edge

# Full path to BIDS dataset
BIDS=$1

# Full path to target output directory
OUT=$2

# Full path to cache directory
CACHE=$3

# Path to BOONStim repo
BOONSTIM=/projects/jjeyachandra/BOONStim

nextflow $BOONSTIM/boonstim.nf \
	-c $BOONSTIM/user/calculate_mentalizing_weightfunc.nf.config \
	--bids $BIDS \
	--out $OUT \
	--cache_dir $CACHE \
	-profile kimel
