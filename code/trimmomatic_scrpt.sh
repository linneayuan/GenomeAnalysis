#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J job_name
#SBATCH --mail-type=ALL
#SBATCH --mail-user linnea.yuanandersson.0663@student.uu.se

module load bioinfo-tools
module load trimmomatic

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 ../raw_data/RNA_raw_data/ERR2036633_1.fastq.gz ../raw_data/RNA_raw_data/ERR2036633_2.fastq.gz\
 -baseout ERR2036633.fastq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:20 TRAILING:20 MINLEN:36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 ../raw_data/RNA_raw_data/ERR2117288_1.fastq.gz ../raw_data/RNA_raw_data/ERR2117288_2.fastq.gz\
 -baseout ERR2036688.fastq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:20 TRAILING:20 MINLEN:36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 ../raw_data/RNA_raw_data/ERR2117289_1.fastq.gz ../raw_data/RNA_raw_data/ERR2117289_2.fastq.gz\
 -baseout ERR2036689.fastq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:20 TRAILING:20 MINLEN:36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 ../raw_data/RNA_raw_data/ERR2117290_1.fastq.gz ../raw_data/RNA_raw_data/ERR2117290_2.fastq.gz\
 -baseout ERR2036690.fastq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:20 TRAILING:20 MINLEN:36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 ../raw_data/RNA_raw_data/ERR2117291_1.fastq.gz ../raw_data/RNA_raw_data/ERR2117291_2.fastq.gz\
 -baseout ERR2036691.fastq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:20 TRAILING:20 MINLEN:36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 ../raw_data/RNA_raw_data/ERR2117292_1.fastq.gz ../raw_data/RNA_raw_data/ERR2117292_2.fastq.gz\
 -baseout ERR2036692.fastq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/snowy/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:20 TRAILING:20 MINLEN:36
