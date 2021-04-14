#! /bin/sh

module load bioinfo-tools
module load MUMmer
module load gnuplot

mummerplot -R ~/GenomeAnalysis/raw_data/reference/OBMB01.fasta -Q ~/GenomeAnalysis/code/results/lferriphilum-pacbio/lferriphilum.contigs.fasta -x "[0,2569357]" -y "[0,2630333]" --png -p mummer ~/GenomeAnalysis/code/results/mummer.mums
