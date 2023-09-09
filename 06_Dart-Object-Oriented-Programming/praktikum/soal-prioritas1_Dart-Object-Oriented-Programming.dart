// 6. Dart Object-oriented Programming
// Soal Prioritas 1

class Hewan {
  double berat; // Property berat untuk menyimpan berat badan hewan

  Hewan(this.berat);
}

class Mobil {
  double kapasitas; // Property kapasitas untuk total berat maksimum muatan
  List<Hewan> muatan = []; // Property muatan untuk list data hewan yang menjadi muatan

  Mobil(this.kapasitas);

  // Method untuk menambah hewan pada list muatan jika kapasitas mencukupi
  void tambahMuatan(Hewan hewan) {
    // Menghitung total berat muatan yang sudah ada dalam mobil
    double totalBeratMuatan = muatan.map((h) => h.berat).fold(0, (prev, curr) => prev + curr);

    // Memeriksa apakah kapasitas masih mencukupi untuk menambah hewan
    if (totalBeratMuatan + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print('Hewan ditambahkan ke dalam muatan.');
    } else {
      print('Kapasitas muatan tidak mencukupi untuk hewan ini.');
    }
  }

  // Method untuk menghitung total muatan yang diangkut oleh mobil
  double totalMuatan() {
    return muatan.map((h) => h.berat).fold(0, (prev, curr) => prev + curr);
  }
}

void main() {
  // Membuat objek hewan
  Hewan hewan1 = Hewan(150.0);
  Hewan hewan2 = Hewan(100.0);
  Hewan hewan3 = Hewan(75.0);

  // Membuat objek mobil dengan kapasitas 300
  Mobil mobil = Mobil(300.0);

  // Menambahkan hewan ke dalam mobil
  mobil.tambahMuatan(hewan1);
  mobil.tambahMuatan(hewan2);
  mobil.tambahMuatan(hewan3);

  // Menghitung total muatan dalam mobil
  double totalBeratMuatan = mobil.totalMuatan();
  print('Total berat muatan dalam mobil: $totalBeratMuatan kg');
}
