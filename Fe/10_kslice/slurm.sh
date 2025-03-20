#!/bin/bash
#SBATCH --job-name=Fe_kslice
#SBATCH --account=def-chihang
#SBATCH --ntasks-per-node=32    # number of MPI processes per node
#SBATCH --nodes=1              # number of nodes
#SBATCH --mem-per-cpu=1G       # memory
#SBATCH --time=0-00:05         # time (DD-HH:MM)
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dhett034@uottawa.ca


echo '-------------------Job starts at-------------------'
date "+%k:%M:%S %b-%d-%Y"
echo '---------------------------------------------------'


module load StdEnv/2020  intel/2020.1.217  openmpi/4.0.3
module load wannier90/3.1.0
srun postw90.x Fe


echo '--------------------Job ends at--------------------'
date "+%k:%M:%S %b-%d-%Y"
echo '---------------------------------------------------'
