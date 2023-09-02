// Soal Prioritas 1
/* 1. Buatlah sebuah fungsi dengan spesifikasi berikut:
    1. Menerima 2 parameter, yaitu list data dan pengali
    2. Lakukan perulangan pada list data secara asynchronous
    3. Tiap perulangan, kalikan elemen list data dengan pengali
    4. Return list baru yang berisi hasil proses diatas
*/ 

Future<List<int>> listPengali(List<int> data, int pengali) async {
  List<int> hasil = [];

  for (int i = 0; i < data.length; i++) {
    // Simulasi operasi yang memakan waktu, seperti menunggu 1 detik
    await Future.delayed(Duration(seconds: 1));
    hasil.add(data[i] * pengali);
  }

  return hasil;
}

void main() async {
  List<int> data = [2, 3, 5, 7, 11];
  int pengali = 5;

  List<int> hasil = await listPengali(data, pengali);
  print(hasil);
}
