#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J htseq_count
#SBATCH --mail-type=ALL
#SBATCH --mail-user linnea.yuanandersson.0663@student.uu.se

module load bioinfo-tools
module load htseq
module load samtools

GFF=results/PROKKA_04152021/prokka_nonucleotides.gff

for prefix in $(cat prefix.txt)
do

alignment=results/bwa_results/${prefix}.sorted.bam

samtools index -@ 2 $alignment

htseq-count -f bam -r pos -t CDS -i ID -s reverse $alignment $GFF > ${prefix}.txt

done

