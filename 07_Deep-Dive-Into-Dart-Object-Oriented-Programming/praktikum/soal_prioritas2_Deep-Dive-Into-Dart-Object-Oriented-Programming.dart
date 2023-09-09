// Deep Dive into Dart Object Oriented Programming
// Soal prioritas 2

class KelipatanPersekutuanTerkecil {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  int kelipatanPersekutuanTerkecil() {
    int max = x > y ? x : y;
    while (true) {
      if (max % x == 0 && max % y == 0) {
        return max;
      }
      max++;
    }
  }
}

class FaktorPersekutuanTerbesar {
  int x;
  int y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  int faktorPersekutuanTerbesar() {
    while (x != y) {
      if (x > y) {
        x = x - y;
      } else {
        y = y - x;
      }
    }
    return x;
  }
}

class Matematika implements KelipatanPersekutuanTerkecil, FaktorPersekutuanTerbesar {
  @override
  int x;
  @override
  int y;

  Matematika(this.x, this.y);

  int kelipatanPersekutuanTerkecil() {
    return x * y ~/ faktorPersekutuanTerbesar();
  }

  int faktorPersekutuanTerbesar() {
    while (x != y) {
      if (x > y) {
        x = x - y;
      } else {
        y = y - x;
      }
    }
    return x;
  }

  int hasil() {
    return kelipatanPersekutuanTerkecil();
  }
}

void main() {
  Matematika operation = Matematika(12, 18);
  int x = operation.x;
  int y = operation.y;
  print('Hasil KPK antara $x dan $y adalah: ${operation.hasil()}');
}
