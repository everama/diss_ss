#!/bin/bash
#SBATCH -J call
#SBATCH --mem 10G
#SBATCH --ntasks 1
#SBATCH -t 12:00:00
#SBATCH --array=1-22


module purge; module load bluebear
module load bear-apps/2023a
module load scikit_allel/1.3.11-foss-2023a

echo Starting task $SLURM_ARRAY_TASK_ID

ID=$(seq 1 22 | head -n $SLURM_ARRAY_TASK_ID | tail -n 1)

python3 /rds/projects/h/haberm-emirates/exr390/pbs/kpbs.py --vcf /rds/projects/h/haberm-emirates/exr390/pbs/vcf/hgdp_LebanonAI_chr${ID}.vcf.gz \
--pop1 pop1.list \
--pop2 pop2.list \
--pop3 pop3.list \
-w 100000 \
-s 10000 \
--num_bs 1000 \
--gff /rds/projects/h/haberm-emirates/exr390/pbs/gencode.v48.annotation.gff3 > pbs_bedouin_chr${ID}
