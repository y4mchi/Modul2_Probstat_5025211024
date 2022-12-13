# Modul2_Probstat_5025211024

# Widian Sasi Disertasiani | 5025211024

# Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴 

<img width="167" alt="image" src="https://user-images.githubusercontent.com/100952724/207308697-3ddb4f13-82bb-4122-83b6-3a2fdf15b6e8.png">

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

# A. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

**Masukan data sesuai pengelompokannya**

x<- c(78, 75, 67, 77, 70, 72, 78, 74, 77)

y<- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

**Lakukan pengecekan data**

dt <- data.frame(x,y)

dt

![image](https://user-images.githubusercontent.com/100952724/207309012-1a9a992e-ebe1-422c-9d5b-8d23417345ee.png)

**Mencari Selisih**

 diff <- y-x
 
 diff
 
 ![image](https://user-images.githubusercontent.com/100952724/207309089-915397b2-dbac-4082-b782-5e16ea5f60f8.png)

**Mencari Standar Deviasi**

mean (diff)

sd (diff)
 
 ![image](https://user-images.githubusercontent.com/100952724/207309166-606a3e45-ebff-4ff6-b06a-4005ce1085cd.png)

# b. Mencarinilai t (p-value)
**Menggunakan fungsi t.test()**

t.test(y, x, paired = TRUE)]

![image](https://user-images.githubusercontent.com/100952724/207313180-5bcafcca-7e42-4671-9b70-b1f1f52907e7.png)


# c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

**Melihat hasil komparasi** 

var.test(y, x)

![image](https://user-images.githubusercontent.com/100952724/207313212-07ee8574-62b7-43de-ba47-6af039df97e6.png)

**Melihat pengaruhnya** 

t.test(y, x, var.equal = TRUE)

![image](https://user-images.githubusercontent.com/100952724/207313279-5fe70be3-5a44-4a05-92e5-e16ebf031e2b.png)

Dari hasil tersebut, nilai pvalue > 0,05 yang berarti nilai tersebut  menandakan bahwa H0 ditolak . tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, saat sebelum maupun sesuah meakukan aktivitas.

# Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul). 

# a. Apakah Anda setuju dengan klaim tersebut?

Setuju, klaim tersebut sangat memungkinkan untuk valid karna dengan rata rata 23.500 dan Standar Deviasi 3900 km membuat grafik persebaran data dist normal yang dihasilkan akan lebih pekat di daerah lebihd ari 20000km, dengan nilai tengahnya rata rata dari sampel acak yang didapatkan.

# b Jelaskan maksud dari output yang dihasilkan

**Install dulu library** 

install.packages("BSDA")
library(BSDA)

**kemudian menggunakan z – test** 

 zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
  	alternative = "greater", mu = 20000,
 	conf.level = 0.95)

![image](https://user-images.githubusercontent.com/100952724/207313746-9a4d3663-1e2a-4ac2-8cc4-b49c947c389a.png)

**Penjelasan: **
Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900, sehingga null hipotesisnya adalah H0 : μ = 20000 dan alternatif hipotesisnya adalah H1 : μ > 20000. Maka H1 diterima sehingga klaim benar.

# c.	Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

Dari hasil Z-test tersebut nilai p-value <2.2e-16, yang berarti Ho ditolak dan H1 diterima.

# Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

<img width="365" alt="image" src="https://user-images.githubusercontent.com/100952724/207314056-c486f6e7-cb08-46f5-87b3-da0545719df2.png">

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

# a.	H0 dan H1 

H0 ← μ1 = μ2 (rata-rata saham di Bandung sama dengan di Bali) 

H1 ← μ1 ≠ μ2 (rata-rata saham di Bandung tidak sama dengan di Bali)

# b.	Hitung Sampel Statistik

**Menggunakan fungsi tsum.test()**

tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19,   

mean.y=2.79, s.y = 1.32, n.y = 27, 

alternative = "two.sided", mu = 0, var.equal = TRUE, 

conf.level = 0.95)

![image](https://user-images.githubusercontent.com/100952724/207314357-8dbd8f1e-1aed-4967-af04-477a7a1004a7.png)

# c.	Lakukan Uji Statistik (df =2)

**Menggunakan Library Mosaic untuk membuat solusi permasalahannya**

install.packages("mosaic")

library(mosaic)

**Menggunakan fungsi plotDist()**

plotDist(dist = 't', df = 2, col = "blue")

![image](https://user-images.githubusercontent.com/100952724/207314545-765db381-f7c6-4272-aeb8-1cfa00f50573.png)

# d.	Nilai Kritikal

**Menggunakan fungsi qchisq() dengan nilai df **

qchisq(p = 0.05, df = 2, lower.tail = FALSE)

![image](https://user-images.githubusercontent.com/100952724/207314652-2fe94817-0958-4777-b13c-47b70006f0c4.png)

# e. Keputusan

**Keputusan dapat diperoleh dengan menggunakan fungsi t.test. Karena nilai t test < t kritikal, maka tidak ada bukti yg cukup untuk menolak H0. 
H0 Diterima**

# f. Kesimpulan

**perbedaan rata-rata semu dari uji statistik tidak ada dan akan ada, tetapi tidak signifikan bila dipengaruhi oleh nilai kritis.**

# Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. 
Jika : diketahui dataset  https://intip.in/datasetprobstat1 
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama    

# a.	Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

**Mengambil data**

meow <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),header = TRUE, check.names = TRUE)

attach(meow)

names(meow)

**Melakukan pengelompokan**
meow$Group <- as.factor(meow$Group)

meow$Group = factor(meow$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(meow$Group)

**Membagi menjadi 3 kelompok **

 Group1 <- subset(meow, Group == "Kucing Oren")
 
 Group2 <- subset(meow, Group == "Kucing Hitam")
 
Group3 <- subset(meow, Group == "Kucing Putih")

**Plot Quantil Normal Kucing Oren**

qqnorm(Group1$Length)

qqline(Group1$Length)

![image](https://user-images.githubusercontent.com/100952724/207315321-e302e000-fe1a-461a-9127-6147aead57bb.png)

**Plot Quantil Normal Kucing Hitam**

qqnorm(Group2$Length)

qqline(Group2$Length)

![image](https://user-images.githubusercontent.com/100952724/207315384-31e2ce82-6355-417d-a784-f12a1749b3f9.png)

**Plot Quantil Normal Kucing Putih**

qqnorm(Group3$Length

qqline(Group3$Length)

![image](https://user-images.githubusercontent.com/100952724/207315441-6a8daa73-c853-4d19-ba69-8ac87af0cc45.png)

# b.	carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

bartlett.test(Length~Group, data=meow)

![image](https://user-images.githubusercontent.com/100952724/207315521-513f49be-a854-4064-815e-eaa5e1dd1a56.png)

p-value sebesar 0.8054 yang lebih dari nilai 𝛼 = 0.05 sehingga asumsi kesamaan varians terpenuhi.

# c.	Untuk uji ANOVA, buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.

model1 = lm(Length ~ Group, data = meow)

anova(model1)

![image](https://user-images.githubusercontent.com/100952724/207315642-6465db74-8bb3-4def-ba38-4bdebf47c6ec.png)

# d.	Dari Hasil Poin C , Berapakah nilai-p ? ,  Apa yang dapat Anda simpulkan dari H0?

pada taraf uji 5% didapatkan nilai p-value sebesar 0.0013. Maka, terdapat perbedaan panjang kucing yang signifikan berdasarkan grupnya.

# e.	Verifikasilah jawaban model 1 dengan Post-hooc test TukeyHSD ,  dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

TukeyHSD(aov(model1))

![image](https://user-images.githubusercontent.com/100952724/207315752-f794e8ba-b4c3-4734-91d4-1f0c57db4f70.png)

Jika menggunakan 𝛼 = 5%, perbedaan panjang kucing yang signifikan adalah grup 2 (Kucing Hitam) terhadap grup 1 (Kucing Oren) dan grup 3 (Kucing Putih).

#F.	Visualisasikan data dengan ggplot2

Install.package(“ggplot2”)

library(“ggplot2”)

ggplot(meow, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")

![image](https://user-images.githubusercontent.com/100952724/207315924-09627072-10ee-41a8-95d6-ea5f56fe4ca0.png)

# Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut: 

# a. Buatlah plot sederhana untuk visualisasi data

Install Packages dan Function
install.packages("multcompView")
install.packages("readr")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

**Membaca file**

 GTL <- read_csv("GTL.csv")

head(GTL)

![image](https://user-images.githubusercontent.com/100952724/207316194-d3ad6a09-18ee-4504-81a0-f66aca4ed6e0.png)

**Melakukan observasi data**

str(GTL)

![image](https://user-images.githubusercontent.com/100952724/207316278-aefc597c-b0f4-417c-8f69-e7c5b56e1525.png)

**Memvisualisai**
qplot(x = Temp, y = Light, geom = "point", data = GTL) 
     facet_grid(.~Glass, labeller = label_both)
     
 ![image](https://user-images.githubusercontent.com/100952724/207316370-c2283d7a-ab9f-4a63-8dd9-e35a8369f662.png

# b. Lakukan uji ANOVA dua arah untuk 2 faktor

GTL$Glass <- as.factor(GTL$Glass)

GTL$Temp_Factor <- as.factor(GTL$Temp)

str(GTL)

![image](https://user-images.githubusercontent.com/100952724/207316524-4896d112-625e-4a56-ab5d-b1da7d155b50.png)

**Melakukan AOV**

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)

summary(anova)

![image](https://user-images.githubusercontent.com/100952724/207316596-1b7ce6d0-7ec9-4857-9fe0-e58baad3063e.png)

# c.	Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

data_summary <- group_by(GTL, Glass, Temp) %>%
    summarise(mean=mean(Light), sd=sd(Light)) %>%
     arrange(desc(mean))
print(data_summary)

![image](https://user-images.githubusercontent.com/100952724/207316704-dd41d5fd-bb3c-4f43-9a32-c8458e497b96.png)

# d.	Lakukan Uji Tukey 

 tukey <- TukeyHSD(anova)
 
 print(tukey)
 
 ![image](https://user-images.githubusercontent.com/100952724/207316787-580eb156-9c3a-4d50-a161-fdd4f778a931.png)


![image](https://user-images.githubusercontent.com/100952724/207316802-0f022748-ec97-4d36-9103-52ff2dddbf03.png)


# e.	Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

 tukey.cld <- multcompLetters4(anova, tukey)
 
 print(tukey.cld)
 
 ![image](https://user-images.githubusercontent.com/100952724/207316880-75573e08-4176-4326-952a-06b71c1e979c.png)





     
     






























