#./filterdot.py output.txt 1500 output.rdotplot
#filter out reads that don't align for more than a kb
dot3<-read.table(file="output.rdotplot", header=TRUE)

qplot(chrX,chrX.1, data=dot3, geom="point",xlab= "Chromosome X Rhesus" , ylab="Chromosme X Fascicularis", main="Pairwise Alignment of Chromosome X") 
x <- read.table(file="output.rdotplot", as.is=TRUE)
plot(x, type='l',xlab="Chromosome X Rhesus",ylab="Chromosome X Fascicularis",main="Pairwise Alignment of Chromosome X")



dat<-read.csv("1.5mbfst.txt.windowed.weir.fst", header=TRUE, sep="\t")
plot(dat$WEIGHTED_FST, col=as.factor(dat$CHROM))

install.packages("qqman")

library(qqman)

fst<-read.table(file="1.5mbfst.txt.windowed.weir.fst", header=TRUE)
fstsubset<-fst[complete.cases(fst),]

SNP<-c(1:(nrow(fstsubset))
#
mydf<-data.frame(fstsubset)


#
#
#
manhattan(fst,chr="CHROM",bp="BIN_START",p="WEIGHTED_FST",snp="SNP",logp=FALSE,ylab="Weir and Cockerham Fst" , col = c("blue4", "orange3"))
abline(h=0.4, col="red")
# manhattan(fst,chr="CHROM",bp="POS",p="WEIR_AND_COCKERHAM_FST")
Tajd<-read.table(file="1mbTajD_fas.Tajima.D", header=TRUE)
manhattan(Tajd,chr="CHROM",bp="BIN_START",p="TajimaD",snp="N_SNPS",logp=FALSE,ylab="TD" , col = c("blue4", "orange3"),ylim=c(-2.5,2.5))
abline(h=0,col="black")
