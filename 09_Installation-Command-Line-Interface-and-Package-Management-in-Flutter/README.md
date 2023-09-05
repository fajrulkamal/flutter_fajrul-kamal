# 9. Installasi Command-Line-Interface dan Package Management di Flutter

1. Flutter CLI (Command Line Interface) 

    adalah alat yang penting dalam pengembangan aplikasi menggunakan Flutter SDK. CLI ini memungkinkan pengembang untuk berinteraksi dengan SDK Flutter melalui perintah yang dapat dieksekusi dalam terminal. Salah satu perintah utama adalah "flutter create," yang digunakan untuk membuat proyek Flutter baru. Setelah proyek dibuat, pengembang dapat menggunakan "flutter run" untuk menjalankan aplikasi, menjalankan "flutter doctor" untuk memeriksa konfigurasi pengembangan, dan "flutter upgrade" untuk memperbarui SDK Flutter ke versi terbaru.

2. Flutter emulator

    Selain perintah dasar, Flutter CLI juga menyediakan perintah lain yang berguna dalam pengembangan. Misalnya, "flutter emulators" digunakan untuk mengelola emulator yang dapat digunakan untuk menguji aplikasi di berbagai perangkat. "Flutter channel" memungkinkan pengembang untuk beralih antara saluran Flutter yang berbeda untuk menguji pembaruan eksperimental. Selanjutnya, "flutter pub" digunakan untuk mengelola paket pihak ketiga. Pengembang dapat menambahkan paket yang dibutuhkan dari pub.dev menggunakan "flutter pub add" dan memastikan semua paket terinstal dengan "flutter pub get."

3. Flutter package

    Selain itu, pengembang dapat meningkatkan fungsionalitas aplikasi mereka dengan menambahkan paket pihak ketiga. Untuk melakukan ini, mereka dapat mencari paket yang dibutuhkan di pub.dev, menyalin dependensi yang sesuai ke file "pubspec.yaml," dan menjalankan "flutter pub get" di terminal. Setelah itu, mereka dapat mengimpor paket-paket tersebut ke dalam file Dart aplikasi mereka. Dengan menguasai perintah-perintah ini dan memahami cara mengelola paket-paket, pengembang dapat memperluas kemampuan dan fitur aplikasi Flutter mereka.