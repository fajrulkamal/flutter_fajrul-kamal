# 5. Advance Function Async-Wait-Collection

1. Advance function (=>)

    Advance function atau fungsi lanjutan, dalam Dart dapat dimaksimalkan dengan menggunakan arrow functions. Arrow functions adalah sintaksis singkat untuk mendefinisikan fungsi yang hanya terdiri dari satu pernyataan yang langsung mengembalikan hasilnya. Contohnya adalah fungsi penjumlahan `int sum(int a, int b) => a + b;`, yang secara otomatis mengembalikan hasil penjumlahan. Ini memungkinkan penulisan kode yang lebih ringkas dan mudah dibaca.

2. Anonymous functions

    Anonymous functions atau fungsi tanpa nama memainkan peran penting dalam koleksi data. Fungsi anonim dapat disimpan dalam variabel atau digunakan sebagai parameter dalam fungsi lain. Sebagai contoh, ketika kita menggunakan metode `forEach` pada sebuah List, kita dapat menyediakan fungsi anonim untuk mengakses dan memanipulasi setiap elemen dalam List tersebut, seperti `list.forEach((element) => print(element));`.

3. Async-await 

    adalah fitur lain yang sangat penting dalam Dart saat berurusan dengan operasi yang memakan waktu, seperti operasi jaringan atau IO. Dengan async-await, kita dapat menjalankan fungsi yang memakan waktu lama secara sinkron, sehingga kode tidak akan terblokir. Ini memungkinkan kita untuk menulis kode yang lebih responsif dan menghindari pembekuan antarmuka pengguna (UI) dalam aplikasi.

Selain itu, dalam konteks koleksi data, Dart menyediakan tipe data collection yang berguna, seperti List, Map, dan Set. List digunakan untuk menyimpan kumpulan data dengan jenis yang sama, Map digunakan untuk mengelola data dalam bentuk pasangan kunci-nilai, sedangkan Set digunakan untuk menyimpan data unik tanpa perlu urutan tertentu. Dengan menggunakan tipe data collection ini, kita dapat mengatur dan mengelola data dalam jumlah besar dengan lebih efisien dalam aplikasi Dart.