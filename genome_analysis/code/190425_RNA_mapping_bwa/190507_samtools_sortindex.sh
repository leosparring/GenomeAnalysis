#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J sort_index
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load samtools

# samtools sort -o /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190425_bwa_ERR1797972_pass_BH_sort_sample1.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190425_bwa_ERR1797972_pass_BH_sample1.bam

# samtools index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190425_bwa_ERR1797972_pass_BH_sort_sample1.bam

# samtools sort -o /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190525_bwa_ERR1797973_pass_BH_sort_sample2.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190525_bwa_ERR1797973_pass_BH_sample2.bam

# samtools index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190525_bwa_ERR1797973_pass_BH_sort_sample2.bam

samtools sort -o /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190503_bwa_ERR1797974_BH_sort_sample3.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190503_bwa_ERR1797974_BH_sample3.bam

samtools index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190503_bwa_ERR1797974_BH_sort_sample3.bam

samtools sort -o /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797969_serum_sort_sample1.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797969_serum_sample1.bam

samtools index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797969_serum_sort_sample1.bam

samtools sort -o /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797970_serum_sort_sample2.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797970_serum_sample2.bam

samtools index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797970_serum_sort_sample2.bam

samtools sort -o /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797971_serum_sort_sample3.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797971_serum_sample3.bam

samtools index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797971_serum_sort_sample3.bam
