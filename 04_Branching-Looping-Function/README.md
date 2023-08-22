# 4. Branching-Looping-Function

1. Branching

    Branching dalam Dart digunakan untuk mengatur alur program berdasarkan kondisi. Dalam Dart, kita menggunakan pernyataan seperti `if`, `else`, dan `switch` untuk melakukan branching. Contohnya, dengan menggunakan pernyataan `if`, kita bisa mengecek kondisi tertentu dan menjalankan blok kode yang sesuai:


    int nilai = 75;
    if (nilai >= 70) {
    print("Selamat, Anda lulus!");
    } else {
    print("Maaf, Anda belum lulus.");
    }


2. Looping

    Looping digunakan untuk mengulangi tugas tertentu dalam program. Dart memiliki beberapa jenis looping, seperti `for`, `while`, dan `do-while`. Sebagai contoh, kita bisa menggunakan perulangan `for` untuk mengulangi tugas beberapa kali:


    for (int i = 1; i <= 5; i++) {
    print("Iterasi ke-$i");
    }


3. Function

    Function dalam Dart adalah blok kode yang dapat digunakan kembali untuk menjalankan tugas tertentu. Mereka mendefinisikan tugas dalam satu unit yang dapat dipanggil dari berbagai bagian program. Berikut adalah contoh sederhana fungsi dalam Dart:


    int tambah(int a, int b) {
    return a + b;
    }

    void main() {
    int hasil = tambah(5, 3);
    print("Hasil penjumlahan: $hasil");
    }


    Dalam contoh ini, fungsi `tambah` menerima dua parameter dan mengembalikan hasil penjumlahannya. Dalam `main`, kita memanggil fungsi ini dan mencetak hasilnya.