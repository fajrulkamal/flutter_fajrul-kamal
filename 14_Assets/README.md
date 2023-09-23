# 14. Flutter Assets Images dan Fonts

1. Assets

    Assets adalah semua file non-kode yang diperlukan oleh aplikasi. Ini termasuk gambar, file suara, file konfigurasi, atau font. Assets disimpan dalam direktori khusus dalam proyek Flutter, yaitu direktori 'assets'. Untuk membuatnya tersedia dalam proyek, assets perlu didefinisikan dalam file 'pubspec.yaml'. Pengaksesan assets dapat dilakukan dengan menggunakan package 'flutter/services' atau dengan menggunakan widget seperti 'Image' atau 'AssetImage' dalam UI.

2. Images

    Flutter mendukung berbagai format gambar seperti PNG, JPEG, GIF, dan lainnya. Untuk menampilkan gambar dalam aplikasi, Anda dapat menggunakan widget 'Image' dengan mengidentifikasi path atau asset yang sesuai. Gambar dapat diubah ukurannya, diberi efek seperti rotasi atau pencahayaan, atau diberi animasi dengan bantuan widget dan library yang tersedia.

3. Fonts

    Flutter memungkinkan penyesuaian teks dengan berbagai jenis font sesuai dengan desain aplikasi. Font dapat diintegrasikan sebagai assets dalam 'pubspec.yaml', atau dapat digunakan dari Google Fonts atau font kustom. Untuk menggunakan font dalam Flutter, widget 'Text' digunakan dengan properti 'style' yang mencakup informasi tentang jenis font, ukuran, warna, dan lainnya. Adapun penyesuaian font, Anda dapat mengubah warna, ketebalan, kemiringan, dan lainnya sesuai kebutuhan desain aplikasi.