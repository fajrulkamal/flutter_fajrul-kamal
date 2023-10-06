# 20. Introduction to REST API dan JSON Serialization

1. Apa itu REST API?

    REST API (Representational State Transfer Application Programming Interface) adalah metode komunikasi standar antara aplikasi Flutter dan server melalui protokol HTTP. Dalam Flutter, kita dapat menggunakan paket seperti 'http' atau 'dio' untuk berinteraksi dengan server. Sebagai contoh, jika kita ingin mengambil data pengguna dari server, kita dapat mengirim permintaan HTTP GET ke URL tertentu, dan server akan mengirimkan respons yang berisi data pengguna.

2. HTTP

    HTTP dalam Flutter adalah protokol yang digunakan untuk mengirim dan menerima data antara aplikasi Flutter dan server melalui jaringan. Ini merupakan salah satu cara paling umum untuk berkomunikasi dengan server dalam pengembangan aplikasi Flutter. Dengan HTTP, Anda dapat mengirimkan permintaan (request) ke server dan menerima respons (response) dari server, yang dapat berisi data dalam berbagai format, seperti JSON, XML, HTML, dan lainnya.

    Contoh penggunaan HTTP dalam Flutter untuk mengirimkan data ke server (biasanya dengan metode POST) adalah sebagai berikut:

    ```
    import 'package:http/http.dart' as http;

        void sendDataToServer() async {
            var url = Uri.parse('https://contoh.com/api/post-data');
            var response = await http.post(url, body: {
                'key1': 'value1',
                'key2': 'value2',
            });

            if (response.statusCode == 200) {
                // Data berhasil terkirim, lakukan sesuatu dengan respons dari server jika perlu.
            } else {
                // Tangani kesalahan jika ada.
            }
        }
    ```
    
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