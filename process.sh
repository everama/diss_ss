#!/bin/bash
#SBATCH -J process
#SBATCH --ntasks 1
#SBATCH --qos bbdefault
#SBATCH --mem 40G
#SBATCH -t 40:00:00
 
module purge; module load bluebear
module load PLINK/1.9b_6.24-x86_64

#process
awk 'BEGIN{FS=OFS=" "}{print$1,$1":"$4,$3,$4,$5,$6}'	hgdp_LebanonAI_autosomes.bim >	hgdp_LebanonAI_autosomes.v2.bim
awk 'BEGIN{FS=OFS=" "}{print $1,$2":"$1,$3,$4,$5,"1"}'	hgdp_LebanonAI_autosomes.fam >	hgdp_LebanonAI_autosomes.v2.fam
