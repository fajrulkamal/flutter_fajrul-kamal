// Soal Prioritas 2
import 'dart:async';

/* 1. Buatlah sebuah list dengan spesifikasi berikut:
    1. Tiap elemen wajib berupa list juga
    2. tiap element wajib terdapat 2 data(sub-elemen)
    3. Buatlah sebuah map dengan menggunakan list tersebut
*/ 

List<List<int>> listSaya = [
  [1, 2],
  [3, 4],
  [5, 5],
  [7, 9],
  [7, 10],
];

// 2. Buatlah sebuah program untuk menghitung rata-rata dari sekumpulan nilai. Lakukan pembulatan keatas untuk nilai hasil perhitungan rata-rata
int hitungRataRata(List<int> data) {
  int total = 0;

  for (int nilai in data) {
    total += nilai;
  }

  double rataRata = total / data.length;
  // return nilai dengan pembulatan ke atas
  return rataRata.ceil();
}

// 3. Buatlah sebuah program untuk melakukan perhitungan bilangan faktorial secara asinkron
Future<int> faktorial(int n) async {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
    // Simulasi operasi yang memakan waktu
    await Future.delayed(Duration(seconds: 5));
  }
  return result;
}

void main() async {
  int elemenKedua = listSaya[0][1];
  print('Elemen kedua pada listSaya adalah $elemenKedua');

  List<int> data = [7, 5, 3, 5, 2, 1];
  int rataRata = hitungRataRata(data);
  print("Rata-rata: $rataRata");

  int n = 5;
  int result = await faktorial(n);
  print("Faktorial dari $n adalah $result");
}
