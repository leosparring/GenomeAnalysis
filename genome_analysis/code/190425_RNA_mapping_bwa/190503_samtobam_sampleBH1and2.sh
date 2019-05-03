#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J sam_to_bam
#SBATCH --mail-type=ALL
#SBATCH --mail-user leo.sparring@gmail.com

module load bioinfo-tools
module load bwa
module load samtools

samtools view -Sb 190405_bwa_ERR1797972_pass_BH_sample1.sam > 190405_bwa_ERR1797972_pass_BH_sample1.bam

samtools view -Sb 190502_bwa_ERR1797973_pass_BH_sample2.sam > 190502_bwa_ERR1797973_pass_BH_sample2.bam
