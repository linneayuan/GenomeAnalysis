#! /bin/sh

module load bioinfo-tools
module load quast

quast.py -R ~/GenomeAnalysis/raw_data/reference/OBMB01.fasta --threads 2 ~/GenomeAnalysis/code/results/lferriphilum-pacbio/lferriphilum.contigs.fasta
