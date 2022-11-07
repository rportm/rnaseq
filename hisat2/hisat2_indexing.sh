#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=160000M
#SBATCH --time=03:00:00
#SBATCH --job-name=hisat2_indexing
#SBATCH --mail-user=robin.portmann@students.unibe.ch
#SBATCH --mail-type=begin,end
#SBATCH --output=/home/rportmann/robin/rnaseq/hisat2/output_alignment_%j.o
#SBATCH --error=/home/rportmann/robin/rnaseq/hisat2/error_alignment_%j.e

#loading hisat2 module
module add UHTS/Aligner/hisat/2.2.1

#download reference DNA fasta file:
#wget https://ftp.ensembl.org/pub/release-108/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
#check sum:
#sum Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
#download GTF file:
#wget https://ftp.ensembl.org/pub/release-108/gtf/homo_sapiens/Homo_sapiens.GRCh38.108.gtf.gz
#check sum:
#sum Homo_sapiens.GRCh38.108.gtf.gz

#unzip and rename files
#gzip -d Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
#mv Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz genome.fa

#gzip -d Homo_sapiens.GRCh38.108.gtf.gz
#mv Homo_sapiens.GRCh38.108.gtf genome.gtf

#extract exon and splice site files
#hisat2_extract_splice_sites.py genome.gtf > genome.ss
#hisat2_extract_exons.py genome.gtf > genome.exon

#run hisat2 indexing
hisat2-build -p 16 --exon genome.exon --ss genome.ss genome.fa genome_tran
