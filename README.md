# I Am Cosplayer 

Aplikasi **I Am Cosplayer** merupakan aplikasi Flutter sederhana yang terinspirasi
dari aplikasi klasik *I Am Rich*, dengan penambahan elemen visual dan deskripsi
agar lebih menarik, informatif, dan rapi.

Aplikasi ini dibuat untuk memenuhi **tugas pemrograman Flutter** dengan tema  
**“I Am ___”**, yang bertujuan untuk melatih pemahaman dasar widget, layout,
serta desain antarmuka pengguna.

---

## Deskripsi Aplikasi

**I Am Cosplayer** adalah aplikasi berbasis Flutter yang menampilkan identitas
seseorang sebagai cosplayer melalui:
- Judul aplikasi
- Gambar cosplay
- Deskripsi singkat dan ringan mengenai dunia cosplay

Aplikasi ini bersifat **offline**, tidak menggunakan database maupun koneksi
internet, dan hanya berfokus pada tampilan antarmuka (UI).

---

## Fitur Utama

- AppBar dengan judul **"I Am Cosplayer"**
- Tampilan responsif (mobile dan desktop)
- Menampilkan gambar cosplay dari asset lokal
- Deskripsi singkat dan relevan dengan tema cosplay
- Penggunaan Container, padding, dan warna agar tampilan rapi
- Menggunakan font kustom dari Google Fonts

---

## Struktur Widget (Gambaran Umum)

Struktur widget utama pada aplikasi ini adalah sebagai berikut:
```
MaterialApp
 └── Scaffold
     ├── AppBar
     └── Body
         └── LayoutBuilder
             └── SingleChildScrollView
                 └── Center
                     └── ConstrainedBox
                         └── Container (Kartu Utama)
                             └── Column
                                 ├── Text (Judul: Douyin Cosplay)
                                 ├── Text (Subjudul)
                                 ├── Row (Gambar Cosplay)
                                 │   ├── AlbumCover
                                 │   └── AlbumCover
                                 ├── Text (DETAILS)
                                 ├── Divider
                                 ├── Container (Box Detail)
                                 │   └── Column
                                 │       ├── _DetailRow
                                 │       ├── _DetailRow
                                 │       ├── _DetailRow
                                 │       └── _DetailRow
                                 └── Text (Credit)
```

Struktur ini digunakan agar tampilan aplikasi tetap rapi dan dapat menyesuaikan
dengan berbagai ukuran layar.

---

## Teknologi yang Digunakan

- **Flutter**
- **Dart**
- **Material Design 3**
- **Google Fonts**

---

## Struktur Folder Project
```
lib/
└── main.dart
assets/
├── langa.jpg
└── yoshiki.jpg
pubspec.yaml
pubspec.lock
README.md
```

---

## Tujuan Pembuatan

Aplikasi ini dibuat dengan tujuan:
1. Memahami penggunaan widget dasar Flutter
2. Menerapkan layout menggunakan Column dan Row
3. Mengatur tampilan menggunakan Container dan padding
4. Menghasilkan antarmuka yang rapi dan nyaman dilihat
5. Menambahkan unsur kreativitas sesuai tema “I Am ___”

---

## Identitas Pengembang

**Nama** : Wahyu (Miwa)  
**Program Studi** : Informatika  

---

## Catatan

- Gambar yang digunakan bersumber dari Pinterest dan hanya digunakan
  untuk keperluan edukasi.
- Aplikasi ini tidak memiliki fitur backend atau penyimpanan data.
- Project ini murni ditujukan untuk pembelajaran dan tugas akademik.
