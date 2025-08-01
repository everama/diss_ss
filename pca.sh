#!/bin/bash
#SBATCH --job-name=pca_plotproj
#SBATCH --ntasks=1
#SBATCH --mem=25G
#SBATCH --time=24:00:00

module purge; module load bluebear 

module load bear-apps/2024a
module load R/4.5.0-gfbf-2024a

Rscript pca.R
