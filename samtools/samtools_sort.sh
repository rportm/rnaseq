#!/bin/bash
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=50G
#SBATCH --time=3:00:00
#SBATCH --job-name=samtools_sort
#SBATCH --mail-user=robin.portmann@students.unibe.ch
#SBATCH --mail-type=begin,end
#SBATCH --output=/data/users/rportmann/rnaseq/samtools/output_sort_%j.o
#SBATCH --error=/data/users/rportmann/rnaseq/samtools/error_sort_%j.e
#SBATCH --array=0-11

module add UHTS/Analysis/samtools/1.10

FILES=( /data/users/rportmann/rnaseq/samtools/*.bam )
VAR1=${FILES[$SLURM_ARRAY_TASK_ID]%.bam}

#samtools view -hbS ${FILES[$SLURM_ARRAY_TASK_ID]} > ${VAR1#/data/users/rportmann/rnaseq/hisat2/}.bam
samtools sort -m 50G -@ 4 -o ${VAR1#/data/users/rportmann/rnaseq/samtools/}_sorted.bam -T temp ${FILES[$SLURM_ARRAY_TASK_ID]}

