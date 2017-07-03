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
#PBS -N breakdancer
##combine standard out and standard error
#PBS -j oe
#--------Load in modules---------#
module load zlib/1.2.8
module load breakdancer/1.3.6
module load samtools

#-----Define Variables------#
wd=/scratch/car0019/yiwen/
cd ${wd}
ls | grep ".bam$" > list.txt
files=`cat list.txt`
ref=rheMac3.masked.fa
#--------Commands-------#
for i in ${files}
do
bam2cfg.pl -g -h -v 2 -q 40 ${i} > ${wd}${i}.cfg
breakdancer-max -d reads ${i}.cfg > ${wd}${i}.ctx
done


