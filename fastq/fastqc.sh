#!/bin/bash

#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=1000M
#SBATCH --time=02:00:00
#SBATCH --job-name=quality_control
#SBATCH --mail-user=robin.portmann@students.unibe.ch
#SBATCH --mail-type=begin,end
#SBATCH --output=/data/courses/rnaseq_course/breastcancer_de/robin/fastq/output_alignment_%j.o
#SBATCH --error=/data/courses/rnaseq_course/breastcancer_de/robin/fastq/error_alignment_%j.e

module load UHTS/Quality_control/fastqc/0.11.9


FILES=/data/courses/rnaseq_course/breastcancer_de/reads/*.fastq.gz

zcat fastqc /data/courses/rnaseq_course/breastcancer_de/reads/*.fastq.gz | fastqc stdin -o /data/courses/rnaseq_course/breastcancer_de/robin/fastq

