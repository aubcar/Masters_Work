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

wd=/scratch/car0019/bams/
cd ${wd}
data_dir=/scratch/car0019/yiwen/
ref=rheMac3.masked.fa
input_bam1=M_Rhesus.wrg.sorted.mkdup.indel.recal2.bam
input_bam2=M_Fascicularis.second_pass.bqsr.bam
input_bam3=M_Thibetana.second_pass.recalibrated.bam
input_bam4=M_Arctoides.second_pass.recalibrated.bam
input_bam5=M_Assamensis.second_pass.recalibrated.bam
outputdir=/home/car0019/results/

module load delly

delly call -t DEL -g ${data_dir}${ref} -e illumina ${wd}${input_bam1} -o ${outputdir}${input_bam1}.del.vcf
delly call -t DEL -g ${data_dir}${ref} -e illumina ${wd}${input_bam2} -o ${outputdir}${input_bam2}.del.vcf
delly call -t DEL -g ${data_dir}${ref} -e illumina ${wd}${input_bam3} -o ${outputdir}${input_bam3}.del.vcf
delly call -t DEL -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam4} -o ${outputdir}${input_bam4}.del.vcf
delly call -t DEL -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam5} -o ${outputdir}${input_bam5}.del.vcf

delly call -t DUP -g ${data_dir}${ref} -e illumina ${wd}${input_bam1} -o ${outputdir}${input_bam1}.dup.vcf
delly call -t DUP -g ${data_dir}${ref} -e illumina ${wd}${input_bam2} -o ${outputdir}${input_bam2}.dup.vcf
delly call -t DUP -g ${data_dir}${ref} -e illumina ${wd}${input_bam3} -o ${outputdir}${input_bam3}.dup.vcf
delly call -t DUP -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam4} -o ${outputdir}${input_bam4}.dup.vcf
delly call -t DUP -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam5} -o ${outputdir}${input_bam5}.dup.vcf

delly call -t TRA -g ${data_dir}${ref} -e illumina ${wd}${input_bam1} -o ${outputdir}${input_bam1}.tra.vcf
delly call -t TRA -g ${data_dir}${ref} -e illumina ${wd}${input_bam2} -o ${outputdir}${input_bam2}.tra.vcf
delly call -t TRA -g ${data_dir}${ref} -e illumina ${wd}${input_bam3} -o ${outputdir}${input_bam3}.tra.vcf
delly call -t TRA -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam4} -o ${outputdir}${input_bam4}.tra.vcf
delly call -t TRA -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam5} -o ${outputdir}${input_bam5}.tra.vcf

delly call -t INS -g ${data_dir}${ref} -e illumina ${wd}${input_bam1} -o ${outputdir}${input_bam1}.ins.vcf
delly call -t INS -g ${data_dir}${ref} -e illumina ${wd}${input_bam2} -o ${outputdir}${input_bam2}.ins.vcf
delly call -t INS -g ${data_dir}${ref} -e illumina ${wd}${input_bam3} -o ${outputdir}${input_bam3}.ins.vcf
delly call -t INS -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam4} -o ${outputdir}${input_bam4}.ins.vcf
delly call -t INS -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam5} -o ${outputdir}${input_bam5}.ins.vcf

delly call -t INV -g ${data_dir}${ref} -e illumina ${wd}${input_bam1} -o ${outputdir}${input_bam1}.inv.vcf
delly call -t INV -g ${data_dir}${ref} -e illumina ${wd}${input_bam2} -o ${outputdir}${input_bam2}.inv.vcf
delly call -t INV -g ${data_dir}${ref} -e illumina ${wd}${input_bam3} -o ${outputdir}${input_bam3}.inv.vcf
delly call -t INV -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam4} -o ${outputdir}${input_bam4}.inv.vcf
delly call -t INV -g ${data_dir}${ref} -e illumina ${data_dir}${input_bam5} -o ${outputdir}${input_bam5}.inv.vcf