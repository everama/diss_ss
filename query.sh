#!/bin/bash
#SBATCH -J splitvep
#SBATCH --mem 1G
#SBATCH --ntasks 1
#SBATCH --qos bbdefault
#SBATCH -t 00:10:00

module purge; module load bluebear
module load bear-apps/2024a
module load BCFtools/1.21-GCC-13.3.0

#echo Starting task $SLURM_ARRAY_TASK_ID
#ID=$(seq 1 22 | head -n $SLURM_ARRAY_TASK_ID | tail -n 1)

bcftools +split-vep vep_hgdp_LebanonAI_autosomes_subset.vcf.gz \
-f '%CHROM:%POS %Gene %IMPACT %SYMBOL %Consequence %PolyPhen %INFO/AF %AFR_AF %AMR_AF %EAS_AF %EUR_AF %SAS_AF\n' \
-d \
-s all \
> /rds/projects/h/haberm-emirates/exr390/pbs/VEP/vep_output



#input is veps output
#direct to a folder to keep output
