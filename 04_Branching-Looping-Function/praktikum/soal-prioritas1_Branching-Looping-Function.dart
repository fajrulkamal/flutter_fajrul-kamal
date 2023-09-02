// Soal prioritas 1
/* 1. 1. Terdapat sebuah nilai:
    1. jika nilai > 70 akan mereturn “Nilai A”
    2. jika nilai > 40 akan mereturn “Nilai B”
    3. jika nilai > 0 akan mereturn “Nilai C”
    4. selain itu return teks kosong
*/

String konversiNilai(int nilai) {
  String hasilKonversi = "";

  if (nilai > 70) {
    hasilKonversi = "Nilai A";
  } else if (nilai > 40) {
    hasilKonversi = "Nilai B";
  } else if (nilai > 0) {
    hasilKonversi = "Nilai C";
  }

  return hasilKonversi;
}

// 2. tampilkan nilai 1 - 10 pada layar dengan menggunakan perulangan!
void cetakPerulangan10() {
  print("Nilai 1 - 10:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void main() {
  int nilai = 75; // Ganti nilai sesuai kebutuhan

  String hasilKonversi = konversiNilai(nilai);
  print("Hasil konversi nilai $nilai : $hasilKonversi");

  cetakPerulangan10();
}