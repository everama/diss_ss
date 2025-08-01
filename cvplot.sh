#!/bin/bash
#SBATCH --job-name=pca_plot
#SBATCH --ntasks=1
#SBATCH --mem=25G
#SBATCH --time=24:00:00

module purge; module load bluebear 

# Load required modules
module load bear-apps/2024a
module load R/4.5.0-gfbf-2024a

# Run the R script
Rscript cvplot.R
