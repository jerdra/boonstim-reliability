#!/bin/bash

repodir=/projects/jjeyachandra/boonstim_reliability/
dataset=$repodir/data/datasets/SPINS/bids
output=$repodir/data/optimization_reliability/SPINS/output
cache=$repodir/data/optimization_reliability/SPINS/cache

# Make sure target directories exist
mkdir -p $output
mkdir -p $cache

# Run BOONStim on SPINS dataset
$repodir/bin/run_boonstim.sh $dataset $output $cache
