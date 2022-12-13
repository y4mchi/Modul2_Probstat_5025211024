#soal 1

#a
x<- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y<- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

#pengecekan data 
dt <- data.frame(x,y)
dt

#Mencari Selisih 
diff <- y-x
diff

#Mencari Standar Deviasi
mean (diff)
sd (diff)

#b
#Mencarinilai t (p-value)
t.test(y, x, paired = TRUE)

#Melihat hasil komparasi 
var.test(y, x)

#Melihat pengaruhnya 
t.test(y, x, var.equal = TRUE)

#soal 2
#a ada di readme

#b
#Install dulu library 

install.packages("BSDA")
library(BSDA)

#kemudian menggunakan z – test 

 zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
  	alternative = "greater", mu = 20000,
 	conf.level = 0.95)

#c ada di readme 

#Soal 3
#a ada di readme

#Menggunakan fungsi tsum.test()
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19,          
mean.y=2.79, s.y = 1.32, n.y = 27, 
alternative = "two.sided", mu = 0, var.equal = TRUE, 
conf.level = 0.95)

#c
#Menggunakan Library Mosaic untuk membuat solusi permasalahannya

install.packages("mosaic")
library(mosaic)

#Menggunakan fungsi plotDist()
plotDist(dist = 't', df = 2, col = "blue")

#d
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

#e ada di readme

#f ada di readme

#Soal 4
#a
# Mengambil data
meow <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),header = TRUE, check.names = TRUE)
attach(meow)
names(meow)

#Melakukan pengelompokan
meow$Group <- as.factor(meow$Group)
meow$Group = factor(meow$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
class(meow$Group)

#Membagi menjadi 3 kelompok 

Group1 <- subset(meow, Group == "Kucing Oren")
Group2 <- subset(meow, Group == "Kucing Hitam")
Group3 <- subset(meow, Group == "Kucing Putih")

#Plot Quantil Normal Kucing Oren
qqnorm(Group1$Length)
qqline(Group1$Length)

#Plot Quantil Normal Kucing Hitam
qqnorm(Group2$Length)
qqline(Group2$Length)

#Plot Quantil Normal Kucing Putih
qqnorm(Group3$Length)
qqline(Group3$Length)

#b
bartlett.test(Length~Group, data=meow)

#c
model1 = lm(Length ~ Group, data = meow)
anova(model1)

#d ada di readme

#e 
TukeyHSD(aov(model1))

#f
Install.package(“ggplot2”)
library(“ggplot2”)
ggplot(meow, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")

#Soal 5
#a
#Install Packages dan Function
install.packages("multcompView")
install.packages("readr")
install.packages("ggplot2")
install.packages("dplyr")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

# Membaca file
> GTL <- read_csv("GTL.csv")
> head(GTL)

# Melakukan observasi data
> str(GTL)

# Memvisualisai
> qplot(x = Temp, y = Light, geom = "point", data = GTL) +
+      facet_grid(.~Glass, labeller = label_both)

#b
> GTL$Glass <- as.factor(GTL$Glass)
> GTL$Temp_Factor <- as.factor(GTL$Temp)
> str(GTL)

# Melakukan AOV
> anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
> summary(anova)

#c
> data_summary <- group_by(GTL, Glass, Temp) %>%
+      summarise(mean=mean(Light), sd=sd(Light)) %>%
+      arrange(desc(mean))
> print(data_summary)

#d
> tukey <- TukeyHSD(anova)
> print(tukey)


#e
> tukey.cld <- multcompLetters4(anova, tukey)
> print(tukey.cld)

















