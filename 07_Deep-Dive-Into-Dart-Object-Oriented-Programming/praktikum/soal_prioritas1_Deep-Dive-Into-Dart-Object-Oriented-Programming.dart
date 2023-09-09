// Deep Dive into Dart Object Oriented Programming
// Soal prioritas 1

class Kubus {
  double sisi;

  Kubus(this.sisi);

  double volume() {
    return sisi * sisi * sisi;
  }
}

class Balok {
  double panjang;
  double lebar;
  double tinggi;

  Balok(this.panjang, this.lebar, this.tinggi);

  double volume() {
    return panjang * lebar * tinggi;
  }
}

class BangunRuang {
  double sisiKubus;
  double panjangBalok;
  double lebarBalok;
  double tinggiBalok;

  BangunRuang(this.sisiKubus, this.panjangBalok, this.lebarBalok, this.tinggiBalok);

  double volumeKubus() {
    return Kubus(sisiKubus).volume();
  }

  double volumeBalok() {
    return Balok(panjangBalok, lebarBalok, tinggiBalok).volume();
  }
}

void main() {
  // Membuat objek BangunRuang
  BangunRuang bangun = BangunRuang(3.0, 4.0, 5.0, 6.0);

  // Memanggil method volume() untuk Kubus dan Balok
  print('Volume Kubus: ${bangun.volumeKubus()}');
  print('Volume Balok: ${bangun.volumeBalok()}');
}
