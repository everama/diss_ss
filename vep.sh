#!/bin/bash
#SBATCH -J vep
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos bbdefault
#SBATCH -t 72:00:00

module purge; module load bluebear
module load bear-apps/2022b
module load VEP/112-GCC-12.2.0


vep \
--cache \
--dir_cache /rds/projects/h/haberm-emirates/exr390/pbs/VEP \
--offline \
-i hgdp_LebanonAI_autosomes_subset.vcf.gz \
-o vep_hgdp_LebanonAI_autosomes_subset.vcf.gz \
--vcf \
--assembly GRCh38 \
--stats_file vep_hgdp_LebanonAI_autosomes_subset.statfile \
--sift b \
--polyphen b \
--humdiv \
--symbol \
--af_1kg
