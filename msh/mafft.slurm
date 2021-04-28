#!/bin/bash

# Copy/paste this job script into a text file and submit with the command:
#    sbatch thefilename

#SBATCH --time=24:00:00   # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=16   # 36 processor core(s) per node 
#SBATCH --job-name="mafft"
#SBATCH --mail-user=mudith@iastate.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --output="output" # job standard output file (%j replaced by job id)
#SBATCH --error="error" # job standard error file (%j replaced by job id)

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

cd $SLURM_SUBMIT_DIR

#mkdir msh2/mafft
cd msh2/mafft
mafft --auto --phylipout ../all_msh2.fasta > alignment_msh2.phy
cd ../../

#mkdir msh3/mafft
cd msh3/mafft
mafft --auto --phylipout ../all_msh3.fasta > alignment_msh3.phy
cd ../../

#mkdir msh4/mafft
cd msh4/mafft
mafft --auto --phylipout ../all_msh4.fasta > alignment_msh4.phy
cd ../../

#mkdir msh5/mafft
cd msh5/mafft
mafft --auto --phylipout ../all_msh5.fasta > alignment_msh5.phy
cd ../../

#mkdir msh6/mafft
cd msh6/mafft
mafft --auto --phylipout ../all_msh6.fasta > alignment_msh6.phy
