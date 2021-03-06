#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J bwa_RNA_mapping_sample3
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load bwa
module load samtools

bwa index /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta

# bwa mem -M -t 2 /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz > 190425_bwa_ERR1797972_pass_BH_sample1.sam

# samtools view -Sb 190425_bwa_ERR1797972_pass_BH_sample1.sam > 190425_bwa_ERR1797972_pass_BH_sample1.bam

# rm 190425_bwa_ERR1797972_pass_BH_sample1.sam

# bwa mem -M -t 2 /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz > 190525_bwa_ERR1797973_pass_BH_sample2.sam

# samtools view -Sb 190525_bwa_ERR1797973_pass_BH_sample2.sam > 190525_bwa_ERR1797973_pass_BH_sample2.bam

# rm 190525_bwa_ERR1797973_pass_BH_sample2.sam

bwa mem -M -t 2 /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_1.fastq.gz /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_2.fastq.gz > 190503_bwa_ERR1797974_BH_sample3.sam

samtools view -Sb 190503_bwa_ERR1797974_BH_sample3.sam > 190503_bwa_ERR1797974_BH_sample3.bam

rm 190503_bwa_ERR1797974_BH_sample3.sam

bwa mem -M -t 2 /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_1.fastq.gz /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_2.fastq.gz  > 190506_bwa_ERR1797969_serum_sample1.sam

samtools view -Sb 190506_bwa_ERR1797969_serum_sample1.sam > 190506_bwa_ERR1797969_serum_sample1.bam

rm 190506_bwa_ERR1797969_serum_sample1.sam

bwa mem -M -t 2 /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_1.fastq.gz /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_2.fastq.gz  > 190506_bwa_ERR1797970_serum_sample2.sam

samtools view -Sb 190506_bwa_ERR1797970_serum_sample2.sam > 190506_bwa_ERR1797970_serum_sample2.bam

rm 190506_bwa_ERR1797970_serum_sample2.sam

bwa mem -M -t 2 /home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190405_genome_correction_illumina/190405_pilon_illumina_to_pacbio.fasta /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_1.fastq.gz /home/lesp0343/GenomeAnalysis/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_2.fastq.gz  > 190506_bwa_ERR1797971_serum_sample3.sam

samtools view -Sb 190506_bwa_ERR1797971_serum_sample3.sam > 190506_bwa_ERR1797971_serum_sample3.bam

rm 190506_bwa_ERR1797971_serum_sample3.sam


