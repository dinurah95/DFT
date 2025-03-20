#!/bin/bash
#SBATCH --job-name=Fe_bandsx
#SBATCH --account=def-chihang
#SBATCH --ntasks-per-node=32    # number of MPI processes per node
#SBATCH --nodes=1              # number of nodes
#SBATCH --mem-per-cpu=1G       # memory
#SBATCH --time=0-00:10         # time (DD-HH:MM)
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dhett034@uottawa.ca


echo '-------------------Job starts at-------------------'
date "+%k:%M:%S %b-%d-%Y"
echo '---------------------------------------------------'


module load StdEnv/2020  intel/2020.1.217  openmpi/4.0.3
module load quantumespresso/7.2
srun bands.x < Fe.bandsx.in > Fe.bandsx.out


echo '--------------------Job ends at--------------------'
date "+%k:%M:%S %b-%d-%Y"
echo '---------------------------------------------------'
