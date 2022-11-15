#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=10G
#SBATCH --time=2:00:00
#SBATCH --job-name=samtools_index
#SBATCH --mail-user=robin.portmann@students.unibe.ch
#SBATCH --mail-type=begin,end
#SBATCH --output=/data/users/rportmann/rnaseq/hisat2/output_index_%j.o
#SBATCH --error=/data/users/rportmann/rnaseq/hisat2/error_index_%j.e
#SBATCH --array=0-11

module add UHTS/Analysis/samtools/1.10

FILES=( /data/users/rportmann/rnaseq/samtools/*_sorted.bam )


samtools index ${FILES[$SLURM_ARRAY_TASK_ID]}
