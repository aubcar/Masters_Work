#!/bin/bash
#----------Qsub info---------#
##choose queue
####PBS -q
##list - node are nodes: ppn are cpus per node: walltime=walltime
#PBS -l nodes=1:ppn=1,mem=32gb,walltime=600:00:00
##email
#PBS -M car0019@auburn.edu
##send email abort; begin; end
#PBS -m ae
##job name
#PBS -N lumpynew
##combine standard out and standard error
#PBS -j oe
#--------Load in modules---------#
module load gcc/5.1.0
module load samblaster/1
module load lumpy
module load zlib/1.2.8
module load samtools/1.3.1
module load bedtools
module load python/2.7.11
#-----Define Variables------#
wd=/scratch/car0019/yiwen/
cd ${wd}
ls | grep ".bam$" > list.txt
files=`cat list.txt`
ref=rheMac3.masked.fa
#--------Commands-------#

for i in ${files}
do
lumpyexpress -B ${i} -v -P -o ${i}.lumpy.vcf 
done

