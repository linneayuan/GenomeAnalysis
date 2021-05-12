#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J rna_fastqc1
#SBATCH --mail-type=ALL
#SBATCH --mail-user linnea.yuanandersson.0663@student.uu.se

module load bioinfo-tools
module load FastQC

fastqc ./results/trimmomatic_results/* -o ./results/fastqc_after
