#!/bin/bash
#SBATCH -J combine
#SBATCH --mem 72G
#SBATCH --qos bbdefault
#SBATCH -t 72:00:00
#SBATCH --ntasks=20

module purge; module load bluebear
module load BCFtools/1.9-foss-2019a
module load PLINK/1.9b_6.24-x86_64
module load AdmixTools/7.0.2-foss-2020a-R-4.0.0-Perl-5.30.2


#1. merge all vcfs into one
#bcftools concat /rds/projects/h/haberm-emirates/exr390/pbs/vcf/hgdp_LebanonAI_chr{1..22}.vcf.gz -Oz -o hgdp_LebanonAI_autosomes.vcf.gz

#2. vcf to bed
#plink --vcf hgdp_LebanonAI_autosomes.vcf.gz --make-bed --out hgdp_LebanonAI_autosomes

#3. run process.sh to edit files before converting to ped

#4. bed to ped
#plink --bfile hgdp_LebanonAI_autosomes.v2 --allow-no-sex --recode --tab --out hgdp_LebanonAI_autosomes.v2

#5. run convert.sh to convert ped to geno #convertf -p convert.par
