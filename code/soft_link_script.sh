#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J soft_links
#SBATCH --mail-type=ALL
#SBATCH --mail-user linnea.yuanandersson.0663@student.uu.se

for i in /proj/g2021012/3_Christel_2017/*
do
  		ln -s $i ~/genome_analysis/raw_data/
done
