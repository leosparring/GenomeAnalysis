#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:30:00
#SBATCH -J spades_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load spades

spades.py -t 2 --nanopore ~/GenomeAnalysis/genome_analysis/data/raw_data/genomics_data/nanopore/E745_all.fasta.gz -1 ~/GenomeAnalysis/genome_analysis/data/raw_data/genomics_data/illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz -2 ~/GenomeAnalysis/genome_analysis/data/raw_data/genomics_data/illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz -o ~/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_spades_assembly
