#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user linnea.yuanandersson.0663@student.uu.se

module load bioinfo-tools
module load trimmomatic

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 ../raw_data/RNA_raw_data/ERR2036629_1.fastq.gz ../raw_data/RNA_raw_data/ERR2036629_2.fastq.gz\
 -baseout ERR2036629.fastq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:20 TRAILING:20 MINLEN:36
