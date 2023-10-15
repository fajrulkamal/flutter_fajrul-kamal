import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DiceBearPage extends StatefulWidget {
  @override
  _DiceBearPageState createState() => _DiceBearPageState();
}

class _DiceBearPageState extends State<DiceBearPage> {
  String imageUrl = '';

  Future<void> fetchImage() async {
    // Ganti dengan logika pengambilan gambar Anda, misalnya:
    setState(() {
      imageUrl = 'https://avatars.dicebear.com/api/bottts/example.svg';
    });
  }

  @override
  void initState() {
    super.initState();
    fetchImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceBear Image'),
      ),
      body: imageUrl.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Image.network(imageUrl),
            ),
    );
  }
}
