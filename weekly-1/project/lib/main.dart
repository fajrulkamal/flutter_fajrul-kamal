import 'package:flutter/material.dart';
import 'widget/my_home_page.dart';
import 'widget/gambar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}