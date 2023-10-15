import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitialAvatarGenerator extends StatefulWidget {
  const InitialAvatarGenerator({super.key});

  @override
  _InitialAvatarGeneratorState createState() => _InitialAvatarGeneratorState();
}

class _InitialAvatarGeneratorState extends State<InitialAvatarGenerator> {
  final _formKey = GlobalKey<FormState>();
  String _inputName = '';
  String _avatarLink = '';

  @override
  void dispose() {
    super.dispose();
  }

  void _generateAvatarFromName() async {
    if (_formKey.currentState!.validate()) {
      final response = await Dio().get(
          'https://api.dicebear.com/6.x/initials/svg?seed=$_inputName',
      options: Options(headers: {'User-Agent': 'Mozilla/5.0'}));

      setState(() {
        _avatarLink = response.requestOptions.uri.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generate Avatar from Initials"),
        backgroundColor: Colors.teal,
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
                child: _avatarLink.isNotEmpty ? SvgPicture.network(
                    _avatarLink,
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
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    prefixIcon: Icon(Icons.person, color: Colors.teal),
                    labelText: 'Enter Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a name';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _inputName = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: _generateAvatarFromName,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
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
