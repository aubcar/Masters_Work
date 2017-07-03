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
#PBS -N pinrhe
##combine standard out and standard error
#PBS -j oe
#--------Load in modules---------#
module load pindel/0.2.5b9

wd=/scratch/car0019/bams/

cd ${wd}

pindel -T 8 -f rheMac3.masked.fa -i config.txt -c ALL -o RHE
