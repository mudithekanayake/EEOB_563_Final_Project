#!/bin/bash

# Copy/paste this job script into a text file and submit with the command:
#    sbatch thefilename

#SBATCH --time=24:00:00   # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=16   # 36 processor core(s) per node 
#SBATCH --job-name="raxml-ng"
#SBATCH --mail-user=mudith@iastate.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --output="output" # job standard output file (%j replaced by job id)
#SBATCH --error="error" # job standard error file (%j replaced by job id)

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

cd $SLURM_SUBMIT_DIR

raxml-ng --all --msa ../mafft/alignment_msh2.fa --model LG+G+I+F --prefix msh2 --seed 2 --threads 2 --bs-metric fbp,tbe
