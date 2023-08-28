# 6. Dart Object-Oriented Programming


1. Apa itu OOP dalam Dart?

    Dart adalah bahasa pemrograman yang mendukung pemrograman berorientasi objek (OOP), yang merupakan paradigma pemrograman yang menggunakan objek sebagai unit dasar untuk mengorganisasi kode. Dalam Dart, OOP adalah pendekatan yang digunakan untuk mengorganisasi kode dan data ke dalam objek-objek yang memiliki atribut (variabel) dan metode (fungsi) yang berhubungan satu sama lain.

2. Class

    Class adalah kerangka dasar dalam Dart yang digunakan untuk membuat objek. Class adalah blueprint atau cetak biru yang mendefinisikan struktur dan perilaku objek. Misalnya, jika kita ingin membuat sebuah class untuk merepresentasikan mobil, kita dapat mendefinisikan atribut seperti "warna" dan "kecepatan" dalam class tersebut. Contoh kode Dart untuk class "Mobil" bisa seperti ini:

    class Mobil {
        String warna;
        int kecepatan;

    // Constructor untuk class Mobil
        Mobil(this.warna, this.kecepatan);

    // Metode untuk mengganti kecepatan mobil
        void ubahKecepatan(int newKecepatan) {
            kecepatan = newKecepatan;
        }
    }

3. Method

    Method dalam Dart adalah fungsi-fungsi yang terkait dengan suatu class dan digunakan untuk melakukan operasi tertentu pada objek dari class tersebut. Dalam contoh di atas, ubahKecepatan adalah sebuah method yang digunakan untuk mengubah kecepatan mobil. Dengan menggunakan objek dari class "Mobil," kita dapat memanggil method ini untuk mengganti kecepatan mobil tersebut, seperti yang terlihat pada contoh berikut:

    void main() {
        Mobil mobilSaya = Mobil('Merah', 100);
  
        print('Warna mobil saya: ${mobilSaya.warna}');
        print('Kecepatan mobil saya: ${mobilSaya.kecepatan}');
  
        mobilSaya.ubahKecepatan(120);
        print('Kecepatan mobil saya setelah diubah: ${mobilSaya.kecepatan}');
    }

