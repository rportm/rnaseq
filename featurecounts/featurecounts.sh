#!/bin/bash
#SBATCH --cpus-per-task=6
#SBATCH --mem-per-cpu=20G
#SBATCH --time=14:00:00
#SBATCH --job-name=featurecounts
#SBATCH --mail-user=robin.portmann@students.unibe.ch
#SBATCH --mail-type=begin,end
#SBATCH --output=/data/users/rportmann/rnaseq/featurecounts/output_fc_%j.o
#SBATCH --error=/data/users/rportmann/rnaseq/featurecounts/error_fc_%j.e


module load UHTS/Analysis/subread/2.0.1

#FILES= /data/users/rportmann/rnaseq/samtools/*_sorted.bam
#GTF = /data/users/rportmann/rnaseq/hisat2

featureCounts -C -p -T 6 -a /data/users/rportmann/rnaseq/hisat2/genome.gtf -o feature_counts.txt /data/users/rportmann/rnaseq/samtools/*_sorted.bam -Q 10 --tmpDir $SCRATCH


