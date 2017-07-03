#!/bin/bash
#----------Qsub info---------#
##choose queue
####PBS -q
##list - node are nodes: ppn are cpus per node: walltime=walltime
#PBS -l nodes=1:ppn=4,mem=32gb,walltime=600:00:00
##email
#PBS -M car0019@auburn.edu
##send email abort; begin; end
#PBS -m ae
##job name 
#PBS -N cnv_yi
##combine standard out and standard error
#PBS -j oe



module load gcc/5.3.0
module load openmpi/gcc/5.3.0/1.10.2
module load python/2.7.12
module load root/v6.08.02
module load samtools/1.3.1
module load zlib/1.2.8
module load cnvnator/0.3.2
module load xz/5.2.2

wd=/scratch/car0019/yiwen/
cd ${wd}


#ASS

cnvnator -root out4.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -tree  M_Assamensis.second_pass.recalibrated.bam
cnvnator -root out4.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -his 100
cnvnator -root out4.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -stat 100
cnvnator -root out4.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -partition 100
cnvnator -root out4.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -call 100 > out4.100.cnvnator

#ARC
cnvnator -root out5.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -tree  M_Arctoides.second_pass.recalibrated.bam
cnvnator -root out5.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -his 100
cnvnator -root out5.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -stat 100
cnvnator -root out5.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -partition 100
cnvnator -root out5.root -genome rheMac3.masked.fa -chrom chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chrX -call 100 > out5.100.cnvnator

