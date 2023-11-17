import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'config.dart';


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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String generatedStory = "";
  String selectedLanguage = "en";

  Future<void> generateStory() async {
    final apiKey = Config.apiKey;
    final endpoint = "https://api.openai.com/v1/engines/davinci-codex/completions";

    final prompt = "Tell a Malin Kundang story in $selectedLanguage";

    final response = await http.post(
      Uri.parse(endpoint),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $apiKey",
      },
      body: jsonEncode({
        "prompt": prompt,
        "max_tokens": 150,
        "target_language": selectedLanguage,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        generatedStory = data['choices'][0]['text'];
      });
    } else {
      print("Error: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Malin Kundang in Multiverse'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton<String>(
              value: selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue!;
                });
              },
              items: [
                DropdownMenuItem<String>(
                  value: "en",
                  child: Text("English"),
                ),
                DropdownMenuItem<String>(
                  value: "es",
                  child: Text("Spanish"),
                ),
                DropdownMenuItem<String>(
                  value: "de",
                  child: Text("Dannish"),
                ),
                DropdownMenuItem<String>(
                  value: "fr",
                  child: Text("French"),
                ),
                DropdownMenuItem<String>(
                  value: "ru",
                  child: Text("Russian"),
                ),
                DropdownMenuItem<String>(
                  value: "ja",
                  child: Text("Japanese"),
                ),
                DropdownMenuItem<String>(
                  value: "zh",
                  child: Text("Chinese"),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: generateStory,
              child: Text('Generate Story'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Generated Story:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: SingleChildScrollView(
                child: Text(generatedStory),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
