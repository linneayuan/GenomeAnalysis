#!/bin/bash

module load bioinfo-tools
module load prokka

prokka ~/GenomeAnalysis/code/results/lferriphilum-pacbio/lferriphilum.contigs.fasta
