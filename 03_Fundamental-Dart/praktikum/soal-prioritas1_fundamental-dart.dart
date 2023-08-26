// Soal prioritas 1
// 1. Buatlah rumus keliling dan luas persegi dan persegi panjang dengan menggunakan bahasa pemrograman Dart

// Persegi
double sisiPersegi = 9.0;

var kelilingPersegi = 4 * sisiPersegi;
var luasPersegi = sisiPersegi * sisiPersegi;

// Persegi Panjang
double panjang = 7.0;
double lebar = 4.0;

var kelilingPersegiPanjang = 2 * (panjang + lebar);
var luasPersegiPanjang = panjang * lebar;

// 2. Implementasikan rumus keliling dan luas dari Lingkaran dengan menggunakan Bahasa Dar
// Lingkaran
double jariJari = 5.0;
var kelilingLingkaran = 2 * 3.14 * jariJari;
var luasLingkaran = 3.14 * jariJari * jariJari;

void main() {

  print("Keliling Persegi: $kelilingPersegi");
  print("Luas Persegi: $luasPersegi");
  print("Keliling Persegi Panjang: $kelilingPersegiPanjang");
  print("Luas Persegi Panjang: $luasPersegiPanjang");

  print("Keliling Lingkaran: $kelilingLingkaran");
  print("Luas Lingkaran: $luasLingkaran");
}
