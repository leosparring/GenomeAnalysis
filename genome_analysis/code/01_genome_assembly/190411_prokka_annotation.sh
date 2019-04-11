#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J prokka_of_pilon_correction
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load prokka

prokka /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta --outdir /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_prokka_annotation_pilon 
