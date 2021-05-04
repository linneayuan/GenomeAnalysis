#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J bwa_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user linnea.yuanandersson.0663@student.uu.se

module load bioinfo-tools
module load bwa
module load samtools

REF=results/lferriphilum-pacbio/lferriphilum.contigs.fasta

bwa index $REF

for prefix in $(cat prefix.txt)
do

P1=../raw_data/RNA_trimmed_reads/${prefix}_P1.trim.fastq.gz
P2=../raw_data/RNA_trimmed_reads/${prefix}_P2.trim.fastq.gz

bwa mem -t 2 $REF $P1 $P2 | samtools sort -@2 -o ${prefix}.sorted.bam -

done
