#!/bin/bash
#SBATCH -J admixture
#SBATCH --mem 40G
#SBATCH --qos bbdefault
#SBATCH --array 1-5
#SBATCH -t 48:00:00

module purge; module load bluebear

echo Starting task $SLURM_ARRAY_TASK_ID

ID=$(seq 2 6 | head -n $SLURM_ARRAY_TASK_ID | tail -n 1)

/rds/projects/h/haberm-emirates/cxh153/ADMIXTURE/dist/admixture_linux-1.3.0/admixture /rds/projects/h/haberm-emirates/exr390/pbs/bed/hgdp_LebanonAI_autosomes.v2.bed ${ID} -j12 --cv
