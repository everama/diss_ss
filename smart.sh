#!/bin/bash
#SBATCH -J pca
#SBATCH --mem 10G
#SBATCH --ntasks 6
#SBATCH --qos bbdefault
#SBATCH -t 10:00:00

module purge; module load bluebear
module load EIGENSOFT/7.2.1-foss-2020a

smartpca -p smart_p1.par
