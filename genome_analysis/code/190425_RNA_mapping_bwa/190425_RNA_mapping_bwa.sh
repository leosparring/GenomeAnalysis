#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J bwa_RNA_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load bwa

bwa index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta
bwa mem -M -t 2 /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190404_genome_assembly_pacbio/190404_pacbio_assembly.contigs.fasta /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz > 190405_bwa_ERR1797972_pass.sam

