// Soal Eksplorasi
// 1. Buatlah sebuah program untuk mengecek apakah sebuah kata merupakan sebuah palindrom atau bukan. Palindrom adalah sebuah kata yang jika dibalik dari kata aslinya memiliki cara baca atau susunan yang sama persis.

// Fungsi untuk Mengecek Palindrom
bool isPalindrom(String kata) {
  kata = kata.replaceAll(" ", "").toLowerCase();
  int panjangKata = kata.length;

  for (int i = 0; i < panjangKata ~/ 2; i++) {
    if (kata[i] != kata[panjangKata - i - 1]) {
      return false;
    }
  }

  return true;
}

// 2. Buatlah sebuah program untuk mencari faktor dari sebuah bilangan yang dimasukkan.

// Fungsi untuk Mencari Faktor Bilangan
List<int> cariFaktor(int bilangan) {
  List<int> faktor = [];

  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      faktor.add(i);
    }
  }

  return faktor;
}

// Pemanggilan fungsi pada fungsi main
void main() {
  
  String kata = "kasur rusak";
  //String kata = "mobil balap";
  
  // Mengecek Palindrom
  if (isPalindrom(kata)) {
    print("$kata adalah palindrom");
  } else {
    print("$kata bukanlah palindrom");
  }

  // Mencari Faktor Bilangan
  int bilangan = 132;
  List<int> faktor = cariFaktor(bilangan);

  print("Faktor dari $bilangan adalah: $faktor");
}
