#!/bin/bash 
#

prefix="Pt_O_neb.in"
jobfile="slurm_scf_loop.sh"

	jobname=${prefix}
	outfile=${prefix}.o
	errfile=${prefix}.e

	echo "Submitting job $jobname"

	sbatch -J $jobname -o $outfile -e $errfile $jobfile