#!/bin/bash
#SBATCH -J convert
#SBATCH --mem 15G
#SBATCH --ntasks 1
#SBATCH --qos bbdefault
#SBATCH -t 48:00:00


module purge; module load bluebear
module load AdmixTools/7.0.2-foss-2020a-R-4.0.0-Perl-5.30.2

convertf -p convert.par
