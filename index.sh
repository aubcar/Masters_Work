#!/bin/bash
##choose queue
####PBS -q
##list - node are nodes: ppn are cpus per node: walltime=walltime
#PBS -l nodes=1:ppn=1,mem=64gb,walltime=500:00:00
##email
#PBS -M car0019@auburn.edu
##send email abort; begin; end
#PBS -m ae
##job name
#PBS -N index
##combine standard out and standard error
#PBS -j oe



module load samtools

wd=/scratch/car0019/yiwen/
cd ${wd} 

ls | grep ".bam$" > list.txt
files=`cat list.txt`
#ref=Anolis_carolinensis_genome.fa

for i in ${files}
do
samtools index ${i}
done

