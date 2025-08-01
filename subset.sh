#!/bin/bash
#SBATCH -J vep
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos bbdefault
#SBATCH -t 72:00:00

module purge; module load bluebear
module load bear-apps/2024a
module load BCFtools/1.21-GCC-13.3.0

#index
#bcftools index /rds/projects/h/haberm-emirates/exr390/pbs/bed/hgdp_LebanonAI_autosomes.vcf.gz

bcftools view \
-R pbs_druze.bed \
-S sample_list.txt \
/rds/projects/h/haberm-emirates/exr390/pbs/bed/hgdp_LebanonAI_autosomes.vcf.gz \
-Oz \
-o hgdp_LebanonAI_autosomes_subset.vcf.gz

#create file named sample_list.txt. Put IDs we have in pop1, pop2, pop3
#name your input (original vcf file)
#name your output (to be used in 2.vep)
