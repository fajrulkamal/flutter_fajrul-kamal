import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'DIO Modification'),
      routes: {
        '/dicebear': (context) => DiceBearPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Dio dio = Dio();
  List<Map<String, dynamic>> userData = [];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();

  void fetchData() async {
    final response =
        await dio.get('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');
    setState(() {
      userData = List<Map<String, dynamic>>.from(response.data);
    });
  }

  Future<void> insertData() async {
    final name = nameController.text;
    final nomor = nomorController.text;
    final response = await dio.post(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      data: {'nama': name, 'nomor': nomor},
    );
    if (response.statusCode == 201) {
      print("Data berhasil dikirim");
    } else {
      print("Gagal mengirim data");
    }
    fetchData(); // Memuat ulang data setelah penghapusan
    nameController.clear();
    nomorController.clear();
  }

  Future<void> updateData() async {
    final response = await dio.put(
      'https://jsonplaceholder.typicode.com/posts/1',
      data: {
        'id': 1,
        'title': 'foo',
        'body': 'bar',
        'userId': 1,
      },
    );
    if (response.statusCode == 200) {
      print("Data berhasil diperbarui");
    } else {
      print("Gagal memperbarui data");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.image),
            onPressed: () {
              Navigator.pushNamed(context, '/dicebear');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: nomorController,
              decoration: InputDecoration(labelText: 'Nomor'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: insertData,
              child: Text("Insert Data"),
            ),
            ElevatedButton(
              onPressed: updateData,
              child: Text("Update Data"),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: userData.length,
                itemBuilder: (context, index) {
                  final user = userData[index];
                  return ListTile(
                    title: Text(user['name']),
                    subtitle: Text(user['nomor'].toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DiceBearPage extends StatefulWidget {
  @override
  _DiceBearPageState createState() => _DiceBearPageState();
}

class _DiceBearPageState extends State<DiceBearPage> {
  String imageUrl = '';
  final TextEditingController textController = TextEditingController();

  Future<void> fetchImage() async {
    setState(() {
      imageUrl = 'https://avatars.dicebear.com/api/bottts/${textController.text}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceBear Image'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
          ),
          ElevatedButton(
            onPressed: fetchImage,
            child: Text("Generate Image"),
          ),
          Expanded(
            child: imageUrl.isEmpty
                ? Center(child: Text('Enter text and hit generate'))
                : Center(
                    child: Image.network(imageUrl),
                  ),
          ),
        ],
      ),
    );
  }
}
