library(qqman)
fst50kb<-read.table(file="50kbfst2.txt.windowed.weir.fst" ,header=TRUE)
fst250kb<-read.table(file="250kbfst2.txt.windowed.weir.fst" ,header=TRUE)
fst500kb<-read.table(file="500kbfst2.txt.windowed.weir.fst" ,header=TRUE)
fst1mb<-read.table(file="1mbfst2.txt.windowed.weir.fst" ,header=TRUE)
fst1.5mb<-read.table(file="1.5mbfst2.txt.windowed.weir.fst" ,header=TRUE)



manhattan(fst50kb,chr="CHROM",bp="BIN_START",p="WEIGHTED_FST",logp=FALSE,ylab=" FST",col=c("blue4","orange3"), main="Weir and Cockerham FST 50kb window")
abline(h=0.6,col="black")
manhattan(fst250kb,chr="CHROM",bp="BIN_START",p="WEIGHTED_FST",logp=FALSE,ylab=" FST",col=c("blue4","orange3"),main="Weir and Cockerham FST 250kb window")
abline(h=0.6,col="black")
manhattan(fst500kb,chr="CHROM",bp="BIN_START",p="WEIGHTED_FST",logp=FALSE,ylab=" FST",col=c("blue4","orange3"),main="Weir and Cockerham FST 500kb window")
abline(h=0.6,col="black")
manhattan(fst1mb,chr="CHROM",bp="BIN_START",p="WEIGHTED_FST",logp=FALSE,ylab="FST",col=c("blue4","orange3"),main="Weir and Cockerham FST 1mb window")
abline(h=0.6,col="black")
manhattan(fst1.5mb,chr="CHROM",bp="BIN_START",p="WEIGHTED_FST",logp=FALSE,ylab=" FST",col=c("blue4","orange3"),main="Weir and Cockerham FST 1.5mb window")
abline(h=0.6,col="black")

#Rhesus Tajimas D
td50kb<-read.table(file="50kbTajD_rhe.Tajima.D" ,header=TRUE)
td250kb<-read.table(file="250kbTajD_rhe.Tajima.D" ,header=TRUE)
td500kb<-read.table(file="500kbTajD_rhe.Tajima.D" ,header=TRUE)
td750kb<-read.table(file="750kbTajD_rhe.Tajima.D" ,header=TRUE)
td1mb<-read.table(file="1mbTajD_rhe.Tajima.D" ,header=TRUE)



manhattan(td50kb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-2.5,2.5), main="Tajimas D 50kb window")
abline(h=0,col="black")
manhattan(td250kb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-2.5,2.5), main="Tajimas D 250kb window")
abline(h=0,col="black")
manhattan(td500kb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-2.5,2.5), main="Tajimas D 500kb window")
abline(h=0,col="black")
manhattan(td750kb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-2.5,2.5), main="Tajimas D 750kb window")
abline(h=0,col="black")
manhattan(td1mb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-2.5,2.5), main="Tajimas D 1mb window")
abline(h=0,col="black")

##Rhesus Pi
pi50kb<-read.table(file="pi" ,header=TRUE)
pi250kb<-read.table(file="pi250kb_rhe.windowed.pi" ,header=TRUE)
pi500kb<-read.table(file="pi500kb_rhe.windowed.pi" ,header=TRUE)
pi750kb<-read.table(file="pi750kb_rhe.windowed.pi" ,header=TRUE)
pi1mb<-read.table(file="pi1mb_rhe.windowed.pi" ,header=TRUE)



manhattan(pi250kb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(0,0.1), main="Pairwise Nucleotide Divergence 250kb window")
manhattan(pi500kb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(0,0.1), main="Pairwise Nucleotide Divergence 500kb window")
manhattan(pi750kb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(0,0.1), main="Pairwise Nucleotide Divergence 750kb window")
manhattan(pi1mb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(0,0.1), main="Pairwise Nucleotide Divergence 1mb window")


#Fascicularis Tajimas D
td50kb<-read.table(file="50kbTajD_fas.Tajima.D" ,header=TRUE)
td250kb<-read.table(file="250kbTajD_fas.Tajima.D" ,header=TRUE)
td500kb<-read.table(file="500kbTajD_fas.Tajima.D" ,header=TRUE)
td750kb<-read.table(file="750kbTajD_fas.Tajima.D" ,header=TRUE)
td1mb<-read.table(file="1mbTajD_fas.Tajima.D" ,header=TRUE)

manhattan(td50kb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-3,3), main="Tajimas D 50kb window")
abline(h=0,col="black")
manhattan(td250kb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-3,3), main="Tajimas D 250kb window")
abline(h=0,col="black")
manhattan(td500kb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-3,3), main="Tajimas D 500kb window")
abline(h=0,col="black")
manhattan(td750kb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-3,3), main="Tajimas D 750kb window")
abline(h=0,col="black")
manhattan(td1mb,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS" ,logp=FALSE,ylab=" TD",col=c("blue4","orange3"),ylim=c(-3,3), main="Tajimas D 1mb window")
abline(h=0,col="black")






#Fascicularis Pi 
pi50kb<-read.table(file="pi50kb_fas.windowed.pi" ,header=TRUE)
pi250kb<-read.table(file="pi250kb_fas.windowed.pi" ,header=TRUE)
pi500kb<-read.table(file="pi500kb_fas.windowed.pi" ,header=TRUE)
pi750kb<-read.table(file="pi750kb_fas.windowed.pi" ,header=TRUE)
pi1mb<-read.table(file="pi1mb_fas.windowed.pi" ,header=TRUE)

manhattan(pi50kb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(-0,0.1), main="Pairwise Nucleotide Divergence 50kb window")
manhattan(pi250kb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(0,0.1), main="Pairwise Nucleotide Divergence 250kb window")
manhattan(pi500kb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(0,0.1), main="Pairwise Nucleotide Divergence 500kb window")
manhattan(pi750kb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(0,0.1), main="Pairwise Nucleotide Divergence 750kb window")
manhattan(pi1mb,chr="CHROM",bp="BIN_START",p="PI",snp="N_VARIANTS",logp=FALSE,ylab="PI",col=c("blue4","orange3"),ylim=c(0,0.1), main="Pairwise Nucleotide Divergence 1mb window")


#Dot plots 
library(ggplot2)

chr1<-read.table("chr1.rdotplot",header=TRUE)
chr2<-read.table("chr2.rdotplot",header=TRUE)
chr3<-read.table("chr3.rdotplot",header=TRUE)
chr4<-read.table("chr4.rdotplot",header=TRUE)
chr5<-read.table("chr5.rdotplot",header=TRUE)
chr6<-read.table("chr6.rdotplot",header=TRUE)
chr7<-read.table("chr7.rdotplot",header=TRUE)
chr8<-read.table("chr8.rdotplot",header=TRUE)
chr9<-read.table("chr9.rdotplot",header=TRUE)
chr10<-read.table("chr10.rdotplot",header=TRUE)
chr11<-read.table("chr11.rdotplot",header=TRUE)
chr12<-read.table("chr12.rdotplot",header=TRUE)
chr13<-read.table("chr13.rdotplot",header=TRUE)
chr14<-read.table("chr14.rdotplot",header=TRUE)
chr15<-read.table("chr15.rdotplot",header=TRUE)
chr16<-read.table("chr16.rdotplot",header=TRUE)
chr17<-read.table("chr17.rdotplot",header=TRUE)
chr18<-read.table("chr18.rdotplot",header=TRUE)
chr19<-read.table("19.rdotplot",header=TRUE)
chr20<-read.table("chr20.rdotplot",header=TRUE)
chr21<-read.table("chr21.rdotplot",header=TRUE)
chr22<-read.table("chr22.rdotplot",header=TRUE)
  
library(ggplot2)
#chr1<-read.table(file="1.rdotplot", as.is=TRUE)
dev.off()
par(mfrow=c(5,4))

plot(chr1,type='l',xlab=" Rhesus",ylab=" Fascicularis" , main=" 1")
plot(chr2,type='l',xlab=" Rhesus",ylab="Fascicularis" , main=" 2")
plot(chr3,type='l',xlab=" Rhesus",ylab=" Fascicularis" , main="3")
plot(chr4,type='l',xlab=" Rhesus",ylab="Fascicularis" , main=" 4")
plot(chr5,type='l',xlab=" Rhesus",ylab=" Fascicularis" , main=" 5")
plot(chr6,type='l',xlab=" Rhesus",ylab=" Fascicularis" , main=" 6")
plot(chr7,type='l',xlab=" Rhesus",ylab=" Fascicularis" , main=" 7")
plot(chr8,type='l',xlab="Rhesus",ylab=" Fascicularis" , main="8")
plot(chr9,type='l',xlab=" Rhesus",ylab=" Fascicularis" , main=" 9")
plot(chr10,type='l',xlab="Rhesus",ylab=" Fascicularis" , main=" 10")
plot(chr11,type='l',xlab=" Rhesus",ylab=" Fascicularis" , main="11")
plot(chr12,type='l',xlab=" Rhesus",ylab="Fascicularis" , main=" 12")
plot(chr13,type='l',xlab=" Rhesus",ylab="Fascicularis" , main=" 13")
plot(chr14,type='l',xlab=" Rhesus",ylab="Fascicularis" , main="14")
plot(chr15,type='l',xlab=" Rhesus",ylab="Fascicularis" , main="15")
plot(chr16,type='l',xlab="Rhesus",ylab="Fascicularis" , main="16")
plot(chr17,type='l',xlab="Rhesus",ylab="Fascicularis" , main="17")
plot(chr18,type='l',xlab=" Rhesus",ylab="Fascicularis" , main="18")
plot(chr19,type='l',xlab="Rhesus",ylab="Fascicularis" , main="19")
plot(chr20,type='l',xlab=" Rhesus",ylab="Fascicularis" , main="20")
plot(chr21,type='l',xlab=" Rhesus",ylab=" Fascicularis" , main="X")
plot(chr22,type='l',xlab=" Rhesus",ylab="Fascicularis" , main="M")





