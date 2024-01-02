#!/bin/bash -l
# NOTE the -l flag!

#SBATCH --mail-user jk7877@rit.edu
#SBATCH --mail-type=ALL

#SBATCH -t 5-0:0:0

#SBATCH -A 2dptheory -p tier3 -n 3

#SBATCH --mem=100g

export ESPRESSO_PSEUDO=/home/jk7877/qe_potentials
echo $ESPRESSO_PSEUDO

srun -n 3 neb.x < Pt_O_neb.in > Pt_O_neb.out
