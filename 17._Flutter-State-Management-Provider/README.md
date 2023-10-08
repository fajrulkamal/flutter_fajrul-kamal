# 17. Flutter State Management Provider

1. State?

    State dalam Flutter merujuk pada data yang dapat berubah sepanjang waktu selama aplikasi berjalan. Ini dapat mencakup informasi seperti teks yang dimasukkan oleh pengguna, tampilan yang harus diperbarui, atau nilai variabel tertentu. State biasanya dikelola dalam widget, seperti StatefulWidget, dan ketika nilai state berubah, Flutter akan merender ulang widget yang terkait dengan state tersebut. Contohnya, Anda bisa memiliki widget Text yang menampilkan nilai state yang berubah saat pengguna berinteraksi dengan tombol.

2. Global State?

    Global State merujuk pada state yang dapat diakses dari berbagai bagian dalam aplikasi, tanpa harus melewati banyak lapisan widget. Ini berguna ketika Anda memiliki data yang harus dibagikan di seluruh aplikasi Anda. Salah satu contoh implementasi global state adalah menggunakan Provider atau InheritedWidget di Flutter. Dengan menggunakan Provider, Anda dapat menyediakan data global yang dapat diakses oleh widget apa pun dalam aplikasi Anda tanpa perlu melewatkan data melalui properti.

3. State Provider untuk Mengelola Global State.

    State provider adalah salah satu cara untuk mengelola state global dalam Flutter menggunakan paket Flutter provider. Dengan state provider, Anda dapat membuat objek yang menyimpan state global dan menyediakan akses ke state tersebut ke widget dalam aplikasi Anda. Contoh sederhana adalah ketika Anda ingin berbagi data antara beberapa widget, Anda dapat menggunakan ChangeNotifierProvider dari paket provider untuk membuat objek state dan kemudian menggunakan Consumer atau Provider.of untuk mengakses dan memperbarui state tersebut secara global.

    contoh pengunaan state provider:
    ```
    class MyModel extends ChangeNotifier {
        int _counter = 0;
        int get counter => _counter;

        void increment() {
            _counter++;
            notifyListeners();
        }
    }

    void main() {
        runApp(
            ChangeNotifierProvider(
            create: (context) => MyModel(),
            child: MyApp(),
            ),
        );
    }

    class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: Text('State Provider Example')),
                body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Text('Counter:'),
                    Consumer<MyModel>(
                        builder: (context, myModel, child) {
                        return Text(myModel.counter.toString());
                        },
                    ),
                    ElevatedButton(
                        onPressed: () {
                        Provider.of<MyModel>(context, listen: false).increment();
                        },
                        child: Text('Increment'),
                    ),
                    ],
                ),
                ),
            ),
            );
        }
    }
    ```
    Dalam contoh di atas, MyModel adalah objek yang menyimpan state global, dan widget Consumer digunakan untuk mendengarkan perubahan state dan merender ulang bagian yang sesuai dari tampilan ketika state berubah.