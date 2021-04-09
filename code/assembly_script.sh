#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 16:00:00
#SBATCH -J assembly_l.ferriphilum
#SBATCH --mail-type=ALL
#SBATCH --mail-user linnea.yuanandersson.0663@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

# Your commands
canu \
-p lferriphilum -d lferriphilum-pacbio \
genomeSize=3m \
-pacbio ~/GenomeAnalysis/raw_data/DNA_raw_data/ERR2028*
