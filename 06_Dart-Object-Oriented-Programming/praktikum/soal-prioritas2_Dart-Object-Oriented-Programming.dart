// Dart Object-oriented Programming
// Soal Prioritas 2

class Calculator {
  // Method untuk melakukan penjumlahan dua bilangan
  double tambah(double a, double b) {
    return a + b;
  }

  // Method untuk melakukan pengurangan dua bilangan
  double kurang(double a, double b) {
    return a - b;
  }

  // Method untuk melakukan perkalian dua bilangan
  double kali(double a, double b) {
    return a * b;
  }

  // Method untuk melakukan pembagian dua bilangan
  double bagi(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw Exception('Tidak dapat melakukan pembagian oleh nol.');
    }
  }
}

class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  // Method untuk menambahkan course ke daftar
  void tambahCourse(Course course) {
    daftarCourse.add(course);
  }

  // Method untuk menghapus course dari daftar
  void hapusCourse(Course course) {
    daftarCourse.remove(course);
  }

  // Method untuk melihat semua course yang telah ditambahkan
  void lihatSemuaCourse() {
    print('Daftar Course untuk $nama:');
    for (var course in daftarCourse) {
      print('${course.judul}: ${course.deskripsi}');
    }
  }
}

void main() {
  // Membuat objek Calculator
  Calculator calculator = Calculator();

  // Menggunakan Calculator
  double hasilTambah = calculator.tambah(5.0, 3.0);
  print('Hasil Penjumlahan: $hasilTambah');

  // Membuat objek Student
  Student student = Student('Fajrul', 'Kelas D');

  // Membuat beberapa Course
  Course course1 = Course('Pemrograman berorientasi objek', 'Inheritance dan Polymorphism');
  Course course2 = Course('Flutter', 'Pengenalan Flutter Widget');

  // Menambahkan Course ke Student
  student.tambahCourse(course1);
  student.tambahCourse(course2);

  // Melihat semua Course yang dimiliki Student
  student.lihatSemuaCourse();

  // Menghapus Course dari Student
  student.hapusCourse(course1);

  // Melihat semua Course setelah menghapus
  student.lihatSemuaCourse();
}
