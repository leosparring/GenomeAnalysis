#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:30:00
#SBATCH -J canu_pacbio_reads
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load canu

canu -p 190404_pacbio_assembly genomeSize=3.1m -d /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190404_genome_assembly_pacbio -pacbio-raw /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/genomics_data/pacbio/*.fastq.gz
