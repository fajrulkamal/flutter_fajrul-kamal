import 'dart:math';
// Soal Prioritas 2
// 1. Looping 1 - Membuat piramid bintang
void cetakPiramidBintang(int tinggi) {
  for (int row = 1; row <= tinggi; row++) {
    // Hitung jumlah bintang dalam baris saat ini
    var numStars = 2 * row - 1;

    // Hitung jumlah spasi sebelum bintang
    var padding = tinggi - row;

    // Cetak baris dengan padding dan bintang yang sesuai
    print(' ' * (padding * 2) + '* ' * numStars);
  }
}

// 2. Looping 2 - Membuat jam pasir
void cetakPolaJamPasir(int tinggi) {
  for (int i = 0; i < tinggi; i++) {
    // Hitung jumlah angka 0 dalam baris saat ini
    var numZeros = 2 * (tinggi - i) - 1;

    // Hitung jumlah spasi sebelum angka 0 di sisi kiri
    var leftPadding = i;

    // Cetak baris dengan padding dan angka 0 yang sesuai
    print('  ' * leftPadding + '0 ' * numZeros);
  }

  for (int i = tinggi - 2; i >= 0; i--) {
    // Hitung jumlah angka 0 dalam baris saat ini
    var numZeros = 2 * (tinggi - i) - 1;

    // Hitung jumlah spasi sebelum angka 0 di sisi kiri
    var leftPadding = i;

    // Cetak baris dengan padding dan angka 0 yang sesuai
    print('  ' * leftPadding + '0 ' * numZeros);
  }
}

// 3. Looping 3 - Menampilkan Faktorial
BigInt faktorial(BigInt n) {
  if (n == BigInt.zero) {
    return BigInt.one;
  } else {
    return n * faktorial(n - BigInt.one);
  }
}

// 4. Function - Menghitung luas lingkaran
double hitungLuasLingkaran(double jariJari) {
  return pi * jariJari * jariJari;
}

void main() {
  // Looping 1 - Piramid Bintang
  int tinggiPiramid = 8;
  cetakPiramidBintang(tinggiPiramid);

  // Looping 2 - Jam Pasir dengan Angka Nol
  int tinggiPola = 6; // Tinggi dari pola
  cetakPolaJamPasir(tinggiPola);

  // Looping 3 - Menampilkan Faktorial
  BigInt angka1 = BigInt.from(10);
  BigInt angka2 = BigInt.from(40);
  BigInt angka3 = BigInt.from(50);

  print("Faktorial dari $angka1 adalah ${faktorial(angka1)}");
  print("Faktorial dari $angka2 adalah ${faktorial(angka2)}");
  print("Faktorial dari $angka3 adalah ${faktorial(angka3)}");

  // Function - Menghitung Luas Lingkaran
  double jariJari = 14.0;
  double luas = hitungLuasLingkaran(jariJari);
  print("Luas lingkaran dengan jari-jari $jariJari cm adalah $luas cm");
}