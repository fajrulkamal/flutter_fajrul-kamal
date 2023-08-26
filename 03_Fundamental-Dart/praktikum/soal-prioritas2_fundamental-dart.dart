// Soal Prioritas 2
// 1. Buat 3 buah variabel yang menampung tipe data String, lalu sambungkan 3 variabel tersebut dan tampilkan pada layar.
String kalimatPertama = "Halo, Semuanya!";
String kalimatKedua = "Nama saya";
String kalimatKetiga = "Fajrul Kamal";

String kalimatGabungan = "$kalimatPertama $kalimatKedua $kalimatKetiga";

// 2. Implementasikan rumus volume dari tabung (silinder) dengan menggunakan Bahasa Dart.
double jariJari = 12.0;
double tinggi = 9.0;

// Rumus Volume Tabung (Silinder)
double volumeTabung = 3.14 * jariJari * jariJari * tinggi;

void main() {
  // Cetak kalimat
  print(kalimatGabungan);

  // Cetak volume tabung
  print("Volume Tabung: $volumeTabung");
}
