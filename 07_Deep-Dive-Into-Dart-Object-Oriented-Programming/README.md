# 7. Deep Dive into Dart Object-Oriented Programming

Secara garis besar prinsip pemrograman OOP pada Dart terbagi sebagai berikut.

1. Constructor

    Constructor adalah method khusus yang dijalankan saat pembuatan objek. Ia dapat menerima parameter, tetapi tidak memiliki nilai kembalian, dan memiliki nama yang sama dengan nama class yang dibuat.

```
class Person {
  String name;

  // Constructor
  Person(this.name);
}

void main() {
  // Membuat objek Person menggunakan constructor
  var person = Person("John");
  print("Nama: ${person.name}");
}

    ```

2. Inheritance dan Polymorphism

    Inheritance adalah konsep yang memungkinkan pembuatan class baru dengan memanfaatkan kemampuan class yang sudah ada, sehingga class baru dapat memiliki kemampuan yang sama seperti class yang sudah ada. Sedangkan dalam polymorphism, terdapat metode overriding, yaitu proses menulis ulang method yang ada pada superclass di subclass, sehingga subclass memiliki method dengan nama yang sama tetapi dengan implementasi yang berbeda. Ini memungkinkan class memiliki perilaku yang berbeda meskipun memiliki method yang sama.

```
class Animal {
  void speak() {
    print("Bunyi hewan");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Guk guk!");
  }
}

void main() {
  // Menggunakan inheritance dan overriding method
  var dog = Dog();
  dog.speak(); // Output: "Guk guk!"
}

```

3. Abstraction dan Generic

    - Interface: Interface adalah kontrak yang menunjukkan method apa saja yang harus ada dalam suatu class. Semua method dalam interface harus di-override oleh class yang mengimplementasikannya. Ini digunakan dengan menggunakan kata kunci `implements`

    ```
    // Interface
    abstract class Shape {
    void draw();
    }

    // Class yang mengimplementasikan interface
    class Circle implements Shape {
    @override
    void draw() {
        print("Menggambar lingkaran");
    }
    }

    void main() {
        // Menggunakan interface
        var circle = Circle();
        circle.draw(); // Output: "Menggambar lingkaran"
    }
    ```

    - Abstract Class: Abstract class adalah class abstrak yang juga menunjukkan method apa saja yang harus ada dalam suatu class, tetapi tidak semua method harus di-override. Abstract class digunakan dengan kata kunci extends. Objek tidak dapat dibuat dari abstract class.

    ```
    // Abstract class
    abstract class Animal {
    void speak();
    }

    // Class yang meng-extends abstract class
    class Dog extends Animal {
    @override
    void speak() {
        print("Guk guk!");
    }
    }

    void main() {
    // Menggunakan abstract class
    var dog = Dog();
    dog.speak(); // Output: "Guk guk!"
    }
    ```

    - Generics: Generics memungkinkan class atau fungsi untuk menerima data dengan tipe yang dapat ditentukan saat pembuatan class atau saat menjalankan fungsi. Ini memungkinkan untuk membuat kode yang lebih fleksibel dan dapat digunakan dengan berbagai jenis tipe data. Generics dapat digunakan pada class atau fungsi.

    ```
    class Box<T> {
        T content;

        Box(this.content);
    }

    void main() {
    // Menggunakan Generics untuk membuat kotak dengan tipe data yang berbeda
        var intBox = Box<int>(42);
        var stringBox = Box<String>("Hello");

        print("Isi intBox: ${intBox.content}"); // Output: "Isi intBox: 42"
        print("Isi stringBox: ${stringBox.content}"); // Output: "Isi stringBox: Hello"
    }
    ```