import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:restapplication/DiceBear.dart';
import 'package:restapplication/imageGenerate.dart';

void main() {
  runApp(const MyApp());
}

void firstTask() {
  
  Dio dio = Dio();
  List<dynamic> dataList = [];

  void addContact() async {

    final Response response = await dio.post(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts', 
      data: {
      "name": "Johnny",
      "phone": "08123456789"
      },
    );
    print("Post data : ${response.data.toString()}");
  }

  void JSONtoList() async {

    final response = await dio.get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
    );

    try {
      var data = response.data;
      dataList.add(data);
      print(dataList);
    } catch (e) {
      print("Error : $e");
    }
  }

  Future putContact() async {

    final Response response = await dio.put(
      'https://jsonplaceholder.typicode.com/posts/1', 
      data: {
      "id": 1,
      "title": "foo",
      "body": "bar",
      "userId": 1,
      },
    );
    
    try {
      var data = response.data;
      print(data);
    } catch (e) {
      print("Error : $e");
    }
  }
  /* 
  putContact();
  JSONtoList();
  addContact(); */

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const diceBears(),
    );
  }
}