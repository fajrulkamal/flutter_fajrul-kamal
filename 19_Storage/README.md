# 19. Flutter Storage

1. Local Storage

    Local storage pada aplikasi Flutter adalah cara untuk menyimpan data secara lokal di perangkat pengguna. Ini berguna untuk menyimpan data sementara yang perlu diakses oleh aplikasi, seperti preferensi pengguna, cache, atau data aplikasi lainnya. Flutter menyediakan package seperti shared_preferences dan flutter_secure_storage yang memungkinkan pengembang untuk menyimpan data sederhana seperti key-value pairs atau data yang perlu diamankan dengan aman. Kita dapat menggunakan shared_preferences untuk menyimpan preferensi pengguna seperti tema aplikasi atau bahasa yang dipilih oleh pengguna.

2. Shared Prefferences

    Shared Preferences adalah cara untuk menyimpan data sederhana dalam bentuk key-value pairs di perangkat pengguna dalam aplikasi Flutter. Ini digunakan untuk menyimpan preferensi pengguna seperti pengaturan aplikasi, pilihan tema, atau data yang perlu dipertahankan antara sesi aplikasi. Misalnya, kita dapat menggunakan Shared Preferences untuk menyimpan pilihan bahasa pengguna sehingga setiap kali aplikasi dibuka, pengguna akan melihat konten dalam bahasa yang dipilih sebelumnya.

3. SQLite Local Database pada Flutter

    Local database SQLite adalah cara untuk menyimpan dan mengelola data secara lokal dalam aplikasi Flutter dengan menggunakan basis data relasional. Ini memungkinkan pengembang untuk menyimpan data dalam tabel dan menjalankan kueri SQL untuk mengambil, memperbarui, atau menghapus data. SQLite berguna ketika kita perlu menyimpan data yang lebih kompleks dan memiliki hubungan antara entitas data dalam aplikasi. Contohnya, dalam aplikasi daftar tugas, Kita dapat menggunakan SQLite untuk menyimpan daftar tugas beserta detailnya, seperti judul, deskripsi, tenggat waktu, dan status penyelesaian. Ini memungkinkan pengguna untuk menyimpan, mengedit, dan menghapus tugas dengan mudah di aplikasi Flutter.