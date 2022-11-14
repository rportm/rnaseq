#!/bin/bash

#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=10G
#SBATCH --time=14:00:00
#SBATCH --job-name=hisat2_mapping
#SBATCH --mail-user=robin.portmann@students.unibe.ch
#SBATCH --mail-type=begin,end
#SBATCH --output=/data/users/rportmann/rnaseq/hisat2/output_mapping_%j.o
#SBATCH --error=/data/users/rportmann/rnaseq/hisat2/error_mapping_%j.e
#SBATCH --array=0-11

mate_1=( /data/courses/rnaseq_course/breastcancer_de/reads/*R1.fastq.gz )
mate_2=( /data/courses/rnaseq_course/breastcancer_de/reads/*R2.fastq.gz )
VAR1=${mate_1[$SLURM_ARRAY_TASK_ID]%_R1.fastq.gz}
VAR2=${VAR1#/data/courses/rnaseq_course/breastcancer_de/reads/}


#loading hisat2 module
module add UHTS/Aligner/hisat/2.2.1

hisat2 -x genome_tran -1 ${mate_1[$SLURM_ARRAY_TASK_ID]} -2 ${mate_2[$SLURM_ARRAY_TASK_ID]} -S ${VAR1#/data/courses/rnaseq_course/breastcancer_de/reads/}.sam -p 4 #enter the cutoff for the variable with %

#echo $VAR2.sam

