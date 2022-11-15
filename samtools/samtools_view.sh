#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=10G
#SBATCH --time=1:00:00
#SBATCH --job-name=samtools_sort
#SBATCH --mail-user=robin.portmann@students.unibe.ch
#SBATCH --mail-type=begin,end
#SBATCH --output=/data/users/rportmann/rnaseq/hisat2/output_view_%j.o
#SBATCH --error=/data/users/rportmann/rnaseq/hisat2/error_view_%j.e
#SBATCH --array=0-11

module add UHTS/Analysis/samtools/1.10

FILES=( /data/users/rportmann/rnaseq/hisat2/*.sam )
VAR1=${FILES[$SLURM_ARRAY_TASK_ID]%.sam}

samtools view -hbS ${FILES[$SLURM_ARRAY_TASK_ID]} > ${VAR1#/data/users/rportmann/rnaseq/hisat2/}.bam


