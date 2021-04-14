#! /bin/sh

module load bioinfo-tools
module load MUMmer

mummer -b -c -mum ~/GenomeAnalysis/raw_data/reference/OBMB01.fasta ~/GenomeAnalysis/code/results/lferriphilum-pacbio/lferriphilum.contigs.fasta > mummer.mums
