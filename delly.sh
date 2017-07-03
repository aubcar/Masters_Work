#!/bin/bash

##choose queue
####PBS -q
##list - node are nodes: ppn are cpus per node: walltime=walltime
#PBS -l nodes=1:ppn=4,mem=64gb,walltime=500:00:00
##email
#PBS -M car0019@auburn.edu
##send email abort; begin; end
#PBS -m ae
##job name
#PBS -N delly
##combine standard out and standard error
#PBS -j oe



module load delly 

wd=/scratch/car0019/yiwen/
cd ${wd}
ls | grep ".bam$" > list.txt
files=`cat list.txt`
ref=rheMac3.masked.fa
#--------Commands-------#
for i in ${files}
do
delly call -g ${wd}${ref} -e illumina ${wd}${i} -o ${wd}${i}.delly.vcf
done



