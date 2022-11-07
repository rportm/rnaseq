#!/bin/bash

#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=1000M
#SBATCH --time=02:00:00
#SBATCH --job-name=quality_control
#SBATCH --mail-user=robin.portmann@students.unibe.ch
#SBATCH --mail-type=begin,end
#SBATCH --output=/data/courses/rnaseq_course/breastcancer_de/robin/fastq/output_alignment_%j.o
#SBATCH --error=/data/courses/rnaseq_course/breastcancer_de/robin/fastq/error_alignment_%j.e

#load module
module load UHTS/Quality_control/fastqc/0.11.9

#change directory to where the reads are located on the server
cd /data/courses/rnaseq_course/breastcancer_de/reads

#make a fastqc file for every sample
for file in /data/courses/rnaseq_course/breastcancer_de/reads/*.fastq.gz
do 
    fastqc ${file} -o /home/rportmann/robin/rnaseq/fastq
done

#change directory to output location
cd /home/rportmann/robin/rnaseq/fastq

#use multiqc to get nice report
module load UHTS/Analysis/MultiQC/1.8
multiqc .



