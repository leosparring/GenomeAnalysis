#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J htseq_sample1
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load htseq

#htseq-count /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190425_bwa_ERR1797972_pass_BH_sort_sample1.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_prokka_annotation_pilon/PROKKA_04112019.gtf --type=CDS --format=bam > 190425_bwa_ERR1797972_pass_BH_sort_sample1.csv

#htseq-count /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190525_bwa_ERR1797973_pass_BH_sort_sample2.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_prokka_annotation_pilon/PROKKA_04112019.gtf --type=CDS --format=bam -o 190525_bwa_ERR1797973_pass_BH_sort_sample2.out > 190525_bwa_ERR1797973_pass_BH_sort_sample2.csv

htseq-count /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190503_bwa_ERR1797974_BH_sort_sample3.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_prokka_annotation_pilon/PROKKA_04112019.gtf --type=CDS --format=bam > 190503_bwa_ERR1797974_BH_sort_sample3.csv

htseq-count /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797969_serum_sort_sample1.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_prokka_annotation_pilon/PROKKA_04112019.gtf --type=CDS --format=bam > 190506_bwa_ERR1797969_serum_sort_sample1.csv

htseq-count /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797970_serum_sort_sample2.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_prokka_annotation_pilon/PROKKA_04112019.gtf --type=CDS --format=bam > 190506_bwa_ERR1797970_serum_sort_sample2.csv

htseq-count /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/190425_RNA_mapping/190506_bwa_ERR1797971_serum_sort_sample3.bam /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_prokka_annotation_pilon/PROKKA_04112019.gtf --type=CDS --format=bam > 190506_bwa_ERR1797971_serum_sort_sample3.csv


