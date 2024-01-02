**Intro**

Artikel ini membahas proyek pengembangan teknologi UbiCom dengan tema "Pengingat Rakaat dalam Shalat Menggunakan Sensor Kamera Smartphone."

**Link Video Project**
https://drive.google.com/file/d/1NMmC_KoSBcWXSePox4Ui6EW58Tc-6CYM/view?usp=drive_link

**Draft Proposal**
https://docs.google.com/document/d/1o_FaOVJ_vSdKg9k36pvqUjeEDamAsL1-uB-55lQxZXU/edit?usp=sharing
Sebelumnya mohon maaf pak draft proposal belum lengkap

**Latar Belakang**

Pembuatan produk UbiCom ini didasari oleh beberapa alasan utama:
Shalat merupakan salah satu aspek fundamental dalam agama Islam dan memiliki berbagai makna serta pentingnya dalam kehidupan seorang Muslim. Dalam Islam, shalat sebagai ibadah yang utama dan merupakan kewajiban yang harus dilaksanakan oleh setiap Muslim

Hampir semua orang memiliki smartphone, dan ini adalah alat yang dapat dimanfaatkan untuk membantu mengingat rakaat dalam shalat. Berdasarkan data yang dilansir dari wordometers jumlah penduduk di indonesia sebanyak  juta jiwa per 08 Agustus 2023 dan 73 juta pengguna smartphone.

Smartphone tidak hanya berperan sebagai alat komunikasi, namun juga memiliki sensor bawaan dan teknologi canggih. Penggunaan smartphone atau tablet sebagai alat eksperimen dalam konteks pengingat rakaat dalam shalat menggunakan sensor kamera smartphone tidak hanya memberikan keuntungan dalam mengukur dengan akurat, tetapi juga memungkinkan eksperimen dan analisis data pengukuran yang lebih baik, semuanya dilakukan dengan satu perangkat, menjadikan teknologi ini untuk membantu manusia khususnya umat muslim dalam ibadahnya.

Maka dari itu dengan memanfaatkan teknologi yang ada sekarang dan banyaknya pengguna smartphone ini diharapkan bisa membantu umat muslit dalam ibadahnya salah satunya ialah dengan adanya bantuan pengingat rakaat ini, yang 

**Literatur terkait**
1. Azizah, N., Sujana, N., & Ajibroto, K. (2022). Implementasi Sensor Ultrasonik Untuk Menghitung Rakaat Shalat Berbasis Arduino Uno. Formosa Journal of Multidisciplinary Research, 1(2), 187–196. https://doi.org/10.55927/fjmr.v1i2.520
2. Xia, Y., Hu, J., Zhao, S., Tao, L., Li, Z., Yue, T., & Kong, J. (2022). Build-in sensors and analysis algorithms aided smartphone-based sensors for point-of-care tests. Biosensors and Bioelectronics: X, 11(May), 100195. https://doi.org/10.1016/j.biosx.2022.100195
3. QS. An Nisa: 103

**Branding**

Dalam mengembangkan merek dan citra produk UbiCom untuk pengingat rakaat dalam shalat, kami memilih:

- **Merk**: Shalat Yuk!

**Target Pengguna**

aplikasi ini ditujukan untuk:

- **Semua umat muslim**: Produk ini dirancang agar bisa digunakan oleh semua kelompok usia, terutama bagi mereka yang membutuhkan bantuan dalam menjalani shalat.
- **Pengguna Smartphone**: Karena produk ini berbasis smartphone, pengguna harus memiliki smartphone.

**User Experience Theme**

Shalat yuk! harus memberikan pengalaman pengguna yang:

- **Mudah digunakan**: Pengguna harus dapat dengan mudah mengaktifkan pengingat rakaat dan memanfaatkan teknologi ini.
- **Terkoneksi dengan Aplikasi Smartphone**: Aplikasi harus terintegrasi dengan aplikasi seluler untuk memberikan pengingat yang tepat pada waktu yang benar.

**User Story**

Berikut adalah beberapa user story yang menggambarkan kebutuhan utama dari pengguna Salahat:
|Sebagai|Saya ingin bisa|sehingga|prioritas
|-----|------|------|------|
|Sistem|ingin bisa merekognisi gerakan dalam shalat pengguna|sehingga bisa memberikan pengingat yang tepat saat tiba saatnya shalat selesai|⭐⭐⭐⭐⭐|
|Sistem|ingin memberikan tampilan visual pada layar smartphone yang menunjukkan jumlah rakaat yang telah dijalani|sehingga pengguna dapat dengan mudah mengikuti shalat mereka|⭐⭐⭐⭐|
|Sistem|ingin memberikan pengingat suara saat tiba saatnya untuk berpindah ke rakaat berikutnya dalam shalat|sehingga pengguna dapat menjalani shalat dengan lebih khusyuk|⭐⭐⭐|

**Metode dan Algoritma**

Untuk mencapai tujuan di atas, kami akan menggunakan berbagai metode dan algoritma:

- **Metode**
  - Metode Agile : Pengembangan aplikasi shalat yuk ini menggunakan metode agile yang nantinya pengembangan akan berfokus kepada satu fitur terlebih dahulu, dan jika ada fitur yang memungkinkan untuk ditambahkan pada aplikasi maka bisa dikembangkan juga.
  - mobile software development : Pengembangan aplikasi shalat yuk ini akan menggunakan Flutter karena aplikasi ini bertujuan untuk digunakan pada smartphone.


- **Sensor**:
  - Computer Vision : Face Recognition, metode Haar Cascade

- **Responder**:
  - Speaker: untuk memberikan pengingat suara.
  - Tampilan Visual: Menggunakan pengolahan gambar untuk menampilkan tampilan visual pada layar smartphone.
 

Algoritma pada aplikasi ini menggunakan haar cascade yang dimana ini digunakan untuk mendeteksi wajah pada saat rukuk, kemudian setelah wajah terdeteksi maka rakaat bertambah. pada saat wajah terdeteksi sekali sistem melakukan delay 1 menit (belum pasti) untuk menghindari penambahan rakaat pada saat yang sama.
  
**Prototype**:
https://www.canva.com/design/DAFx-0Vs7Y4/eLdXgYO0YV-ivXu0q1EaXg/edit?utm_content=DAFx-0Vs7Y4&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

**Deskripsi Teknologi**
Pada tahap ini kita menjelaskan setiap teknologi hardware dan software yang digunakan dalam pembangunan sistem.
Nantinya sistem mendeteksi seseorang ketetika sujud dan menghitung rakaat shalatnya

Mesin Komputasi : Smartphone Android (Xiaomi Redmi 5 Plus), mengapa memmakai smartphone karena smartphone sudah dilengkapi banyak sensor dan juga mudah dibawa kemana-mana, salah satunya camera yang nantinya bisa mendeteksi gerakan shalat

Software development (Frontend): Flutter adalah kerangka pengembangan perangkat lunak open-source yang dikembangkan oleh Google. Ini digunakan untuk membuat aplikasi seluler, web, desktop, dan perangkat digital lainnya dengan menggunakan bahasa pemrograman Dart. framework ini nantinya membantu mwmbangun aplikasi shalat yuk!

Rest API : Flask, flask kurang lebih sama, digunakan untuk membangun back-end untuk dimanfaatkan oleh frone-end


**Arsitektur Sistem**
![image](https://github.com/zhenansky/pengingatrakaat/assets/63436760/bcc2f602-a97a-426a-bbfd-059332d38697)

**Flowchart**
![flowchartrev drawio](https://github.com/zhenansky/pengingatrakaat/assets/63436760/c4b73b62-e18c-4f7f-96aa-7932d75a7407)





