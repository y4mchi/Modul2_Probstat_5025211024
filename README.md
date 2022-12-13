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





