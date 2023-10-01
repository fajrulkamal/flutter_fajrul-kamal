# 15. Flutter Navigation

1. Navigation pada Flutter

   Navigation adalah proses berpindah-pindah antara berbagai layar atau halaman dalam aplikasi Flutter. Ini penting dalam pengembangan aplikasi untuk mengarahkan pengguna dari satu bagian aplikasi ke bagian lainnya. Flutter menyediakan berbagai cara untuk mengimplementasikan navigasi, termasuk beberapa widget dan metode yang memudahkan pengembang dalam mengelola navigasi dalam aplikasi Flutter mereka.

2. Navigation Dasar dalam Pengembangan Aplikasi Flutter

   Ada beberapa konsep dasar yang perlu diketahui dalam pengembangan aplikasi Flutter terkait navigasi:
    - Routes: Routes adalah representasi dari setiap layar atau halaman dalam aplikasi Flutter. Setiap route memiliki nama yang unik.
    - Navigator: Navigator adalah widget yang digunakan untuk mengelola tumpukan (stack) navigasi dalam aplikasi. Ini memungkinkan untuk melakukan perpindahan antara route-route yang berbeda.
    - Push dan Pop: Untuk berpindah dari satu halaman ke halaman lain, dapat dilakukan menggunakan metode `Navigator.push()` untuk menambahkan route baru ke dalam tumpukan navigasi, dan `Navigator.pop()` untuk menghapus route dari tumpukan ketika pengguna ingin kembali ke halaman sebelumnya.
    - Navigator Routes: Kita dapat menentukan rute dengan menggunakan properti `routes` dalam widget `MaterialApp`. Ini memungkinkan Anda untuk menetapkan route berdasarkan nama dan widget yang sesuai dengan setiap rute.

3. Navigasi dengan Named Routes

    Navigasi dengan Named Routes adalah cara umum untuk mengelola navigasi dalam Flutter dengan memberikan nama unik untuk setiap route dalam aplikasi. Berikut langkah-langkahnya:

    1.) Mendefinisikan Named Routes:  definisi daftar named routes bisa dilakukan di dalam widget `MaterialApp` menggunakan properti `routes`. Contohnya seperti ini:

     ```
     MaterialApp(
       routes: {
         '/home': (context) => HomeScreen(),
         '/detail': (context) => DetailScreen(),
       },
       initialRoute: '/home', // Rute awal ketika aplikasi dimulai
     )
     ```

   2.) Pemanggilan Named Routes: Untuk berpindah ke rute tertentu, kita dapat menggunakan metode `Navigator.pushNamed()`, seperti ini:

     ```
     Navigator.pushNamed(context, '/detail');
     ```

   3.) Penerimaan Data pada Named Routes: Kita juga dapat mengirim data ke rute tujuan dengan menambahkan argumen ke metode `Navigator.pushNamed()`. Di rute tujuan, kita dapat mengakses data tersebut.

     ```
     Navigator.pushNamed(context, '/detail', arguments: data);
     ```
     
     Kemudian, di rute tujuan, Anda bisa mengambil data tersebut seperti ini:
     
     ```
     final data = ModalRoute.of(context)!.settings.arguments;
     ```
