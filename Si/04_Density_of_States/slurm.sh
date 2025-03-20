#!/bin/bash
#SBATCH --job-name=Si_5sDOS
#SBATCH --account=def-chihang
#SBATCH --ntasks-per-node=8    # number of MPI processes per node
#SBATCH --nodes=1              # number of nodes
#SBATCH --mem-per-cpu=1G       # memory
#SBATCH --time=0-00:15         # time (DD-HH:MM)
#SBATCH --output=vasp.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dhett034@uottawa.ca


echo '-------------------Job starts at-------------------'
date "+%k:%M:%S %b-%d-%Y"
echo '---------------------------------------------------'


module load StdEnv/2023 intel/2023.2.1 openmpi/4.1.5
module load vasp/6.4.2
srun vasp_std


echo '--------------------Job ends at--------------------'
date "+%k:%M:%S %b-%d-%Y"
echo '---------------------------------------------------'
