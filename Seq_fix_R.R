mainDir <- "/Users/chaserushton/Desktop/Research/"
subDir <- "Seqplates_6_20_17"

if (file.exists(subDir)){
  setwd(file.path(mainDir, subDir))
} else {
  dir.create(file.path(mainDir, subDir))
  setwd(file.path(mainDir, subDir))
  
}

dir.create("xls")
dir.create("csv")
dir.create("csv/Fixed_csv")

p1 <-read.csv("1_sequenom_plate_1_chip_7_dpseudo_plasticity.csv")
p2 <-read.csv("2_sequenom_plate_2_chip_8_dpseudo_plasticity.csv")
p3 <-read.csv("3_sequenom_plate_3_chip_9_dpseudo_plasticity.csv")
p4 <-read.csv("4_sequenom_plate_4_chip_10_dpseudo_plasticity_2_17_2017.csv")
p5 <-read.csv("5_sequenom_plate_5_chip_11_dpseudo_plasticity.csv")
p6 <-read.csv("6_sequenom_plate_6_chip_12_dpseudo_plasticity.csv")
p7 <-read.csv("7_sequenom_plate_7_chip_13_dpseudo_plasticity.csv")
p8 <-read.csv("8_sequenom_plate_8_chip_14_dpseudo_plasticity.csv")
p9 <-read.csv("9_sequenom_plate_9_chip_15_dpseudo_plasticity.csv")
p10 <-read.csv("10_sequenom_plate_10_chip_16_dpseudo_plasticity.csv")
p11 <-read.csv("11_sequenom_plate_11_chip_17_dpseudo_plasticity.csv")
p12 <-read.csv("12_sequenom_plate_12_chip_18_dpseudo_plasticity.csv")
p13 <-read.csv("13_sequenom_plate_13_chip_19_dpseudo_plasticity.csv")
p14 <-read.csv("14_sequenom_plate_14_chip_20_dpseudo_plasticity.csv")
p15 <-read.csv("15_sequenom_plate_15_chip_21_dpseudo_plasticity.csv")
p16 <-read.csv("16_sequenom_plate_16_chip_22_dpseudo_plasticity.csv")
p17 <-read.csv("17_sequenom_plate_17_chip_23_dpseudo_plasticity.csv")
p18 <-read.csv("18_sequenom_plate_18_chip_24_dpseudo_plasticity.csv")

ref<-read.csv("References_1.csv")
#Plate 1 
p1$Plate <- 1
data1 <- merge(p1,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data1$SAMPLE <- data1$Sample
data1 <- data1[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data1))]
data1<-data1[,-38]
write.csv(data1,"csv/Fixed_csv/1_sequenom_plate_1_chip_7_dpseudo_plasticity.fixed.csv")
#Plate 2
p2$Plate <- 2
data2 <- merge(p2,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data2$SAMPLE <- data2$Sample
data2 <- data2[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data2))]
data2<-data2[,-38]
write.csv(data2, "csv/Fixed_csv/2_sequenom_plate_2_chip_8_dpseudo_plasticity.fixed.csv")
#Plate 3
p3$Plate <- 3
data3 <- merge(p3,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data3$SAMPLE <- data3$Sample
data3 <- data3[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data3))]
data3<-data3[,-38]
write.csv(data3 ,"csv/Fixed_csv/3_sequenom_plate_3_chip_9_dpseudo_plasticity.fixed.csv")
#Plate 4
p4$Plate <- 4
data4 <- merge(p4,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data4$SAMPLE <- data4$Sample
data4 <- data4[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data4))]
data4<-data4[,-38]
write.csv(data4, "TEST_4_sequenom_plate_4_chip_10_dpseudo_plasticity.fixed.csv")
#Plate 5
p5$Plate <- 5
data5 <- merge(p5,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data5$SAMPLE <- data5$Sample
data5 <- data5[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data5))]
data5<-data5[,-38]
write.csv(data5, "csv/Fixed_csv/5_sequenom_plate_5_chip_11_dpseudo_plasticity.fixed.csv")
#Plate 6 
p6$Plate <- 6
data6 <- merge(p6,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data6$SAMPLE <- data6$Sample
data6 <- data6[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data6))]
data6<-data6[,-38]
write.csv(data6, "csv/Fixed_csv/6_sequenom_plate_6_chip_12_dpseudo_plasticity.fixed.csv")
#Plate 7 
p7$Plate <- 7
data7 <- merge(p7,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data7$SAMPLE <- data7$Sample
data7 <- data7[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data7))]
data7<-data7[,-38]
write.csv(data7,"csv/Fixed_csv/7_sequenom_plate_7_chip_13_dpseudo_plasticity.fixed.csv")
#Plate 8 
p8$Plate <- 8
data8 <- merge(p8,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data8$SAMPLE <- data8$Sample
data8 <- data8[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data8))]
data8<-data8[,-38]
write.csv(data8,"csv/Fixed_csv/8_sequenom_plate_8_chip_14_dpseudo_plasticity.fixed.csv")
#Plate 9 
p9$Plate <- 9
data9 <- merge(p9,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data9$SAMPLE <- data9$Sample
data9 <- data9[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data9))]
data9<-data9[,-38]
write.csv(data9,"csv/Fixed_csv/9_sequenom_plate_9_chip_15_dpseudo_plasticity.fixed.csv")
#Plate 10
p10$Plate <- 10
data10 <- merge(p10,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data10$SAMPLE <- data10$Sample
data10 <- data10[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data10))]
data10<-data10[,-38]
write.csv(data10, "csv/Fixed_csv/10_sequenom_plate_10_chip_16_dpseudo_plasticity.fixed.csv")
#Plate 11
p11$Plate <- 11
data11 <- merge(p11,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data11$SAMPLE <- data11$Sample
data11 <- data11[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data11))]
data11<-data11[,-38]
write.csv(data11, "csv/Fixed_csv/11_sequenom_plate_11_chip_17_dpseudo_plasticity.fixed.csv")
#Plate 12
p12$Plate <- 12
data12 <- merge(p12,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data12$SAMPLE <- data12$Sample
data12 <- data12[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data12))]
data12<-data12[,-38]
write.csv(data12, "csv/Fixed_csv/12_sequenom_plate_12_chip_18_dpseudo_plasticity.fixed.csv")
#Plate 13
p13$Plate <- 13
data13 <- merge(p13,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data13$SAMPLE <- data13$Sample
data13 <- data13[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data13))]
data13<-data13[,-38]
write.csv(data13,"csv/Fixed_csv/13_sequenom_plate_13_chip_19_dpseudo_plasticity.fixed.csv")
#Plate 14
p14$Plate <- 1
data14 <- merge(p14,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data14$SAMPLE <- data14$Sample
data14 <- data14[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data14))]
data14<-data14[,-38]
write.csv(data14, "csv/Fixed_csv/14_sequenom_plate_14_chip_20_dpseudo_plasticity.fixed.csv")
#Plate 15
p15$Plate <- 15
data15 <- merge(p15,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data15$SAMPLE <- data15$Sample
data15 <- data15[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data15))]
data15<-data15[,-38]
write.csv(data15, "csv/Fixed_csv/15_sequenom_plate_15_chip_21_dpseudo_plasticity.fixed.csv")
#Plate 16 
p16$Plate <- 16
data16 <- merge(p16,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data16$SAMPLE <- data16$Sample
data16 <- data16[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data16))]
data16<-data16[,-38]
write.csv(data16, "csv/Fixed_csv/16_sequenom_plate_16_chip_22_dpseudo_plasticity.fixed.csv")
#Plate 17 
p17$Plate <- 17
data17 <- merge(p17,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data17$SAMPLE <- data17$Sample
data17 <- data17[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data17))]
data17<-data17[,-38]
write.csv(data17,"csv/Fixed_csv/17_sequenom_plate_17_chip_23_dpseudo_plasticity.fixed.csv")
#Plate 18
p18$Plate <- 18
data18 <- merge(p18,ref, by.x=c("WELL", "Plate"), by.y=c("Well", "Plate"))
data18$SAMPLE <- data18$Sample
data18 <- data18[,-grep(paste(c("Sample", "Plate"), collapse="|"), colnames(data18))]
data18<-data18[,-38]
write.csv(data18, "csv/Fixed_csv/18_sequenom_plate_18_chip_24_dpseudo_plasticityfixed.csv")
#Done

