import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'DiceBear.dart'; // Pastikan nama file DiceBear.dart sesuai
import 'imageGenerate.dart'; // Pastikan nama file imageGenerate.dart sesuai

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppMainState();
}

class _MyAppMainState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AvatarGenerator(),
    );
  }
}
