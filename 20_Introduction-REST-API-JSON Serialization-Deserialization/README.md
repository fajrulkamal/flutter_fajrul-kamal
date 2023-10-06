# 20. Introduction to REST API dan JSON Serialization

1. Apa itu REST API?

    REST API (Representational State Transfer Application Programming Interface) adalah metode komunikasi standar antara aplikasi Flutter dan server melalui protokol HTTP. Dalam Flutter, kita dapat menggunakan paket seperti 'http' atau 'dio' untuk berinteraksi dengan server. Sebagai contoh, jika kita ingin mengambil data pengguna dari server, kita dapat mengirim permintaan HTTP GET ke URL tertentu, dan server akan mengirimkan respons yang berisi data pengguna.

2. HTTP

    HTTP (Hypertext Transfer Protocol) adalah protokol yang digunakan untuk mengirimkan data melalui internet. Ini adalah dasar dari komunikasi web yang memungkinkan aplikasi web dan mobile untuk mengirimkan permintaan ke server dan menerima respons dari server. Sebagai contoh, ketika membuka halaman web atau mengirim pesan di media sosial, HTTP digunakan untuk berkomunikasi dengan server yang menyediakan konten atau layanan tersebut.

3. Dio?

    Dio adalah paket Flutter yang berguna untuk melakukan permintaan HTTP dengan cara yang lebih efisien dan mudah dibaca. Dio memfasilitasi pengiriman permintaan HTTP seperti GET, POST, PUT, dan DELETE serta pengelolaan respons. Sebagai contoh penggunaan Dio dalam Flutter:
    ```
    import 'package:dio/dio.dart';

    void fetchData() async {
        Dio dio = Dio();
        Response response = await dio.get('https://contoh.com/api/data');
        
        if (response.statusCode == 200) {
            var data = response.data;
            // Melakukan sesuatu dengan data yang diterima
        } else {
            // Menangani kesalahan jika diperlukan
        }
    }
    ```

4. Serialisasi JSON

    Serialisasi JSON adalah proses mengubah data atau objek dalam aplikasi menjadi format JSON (JavaScript Object Notation) agar bisa dengan mudah dikirimkan melalui jaringan atau disimpan dalam berkas. Ini adalah cara umum untuk mentransfer data antara server dan aplikasi, terutama dalam konteks penggunaan REST API. Misalnya, Anda dapat mengonversi objek ke format JSON dengan menggunakan metode toJson, dan kemudian mengonversi kembali format JSON ke objek dengan deserialisasi JSON saat menerima data dari server. Ini memungkinkan data untuk diubah menjadi format yang mudah diuraikan dan dipahami dalam komunikasi antar aplikasi.