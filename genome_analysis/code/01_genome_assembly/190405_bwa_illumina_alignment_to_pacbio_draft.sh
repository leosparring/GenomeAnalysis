#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J bwa_illumina_alignment_to_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load bwa

bwa index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190404_genome_assembly_pacbio/190404_pacbio_assembly.contigs.fasta
bwa mem -M -t 2 /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190404_genome_assembly_pacbio/190404_pacbio_assembly.contigs.fasta /home/lesp0343/GenomeAnalysis/genome_analysis/data//raw_data/genomics_data/illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/genomics_data/illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz > 190405_bwa_illumina_correction_aln.sam

