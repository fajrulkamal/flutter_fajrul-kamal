import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageGenerated extends StatefulWidget {
  const ImageGenerated({super.key});

  @override
  State<ImageGenerated> createState() => _ImageGeneratedState();
}

class _ImageGeneratedState extends State<ImageGenerated> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _avatarUrl = '';

  @override
  void dispose() {
    super.dispose();
  }

  void _generateAvatar() async {
    if (_formKey.currentState!.validate()) {
      final response = await Dio().get(
          'https://api.dicebear.com/6.x/initials/svg?seed=$_name',
      options: Options(headers: {'User-Agent': 'Mozilla/5.0'}));

      setState(() {
        _avatarUrl = response.requestOptions.uri.toString();
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Initial Generator"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(99, 233, 233, 233),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: _avatarUrl.isNotEmpty ? SvgPicture.network(
                    _avatarUrl,
                    height: 200,
                    width: 200,
                  ) : const Placeholder(),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsetsDirectional.symmetric(horizontal: 50),
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    prefixIcon: Icon(Icons.person, color: Colors.deepPurple),
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: _generateAvatar,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text('Generate', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}