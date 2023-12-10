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
    final endpoint = "https://api.openai.com/v1/chat/completions";

    final prompt = "Tell a simplified Malin Kundang story in $selectedLanguage";
    const model = "gpt-3.5-turbo";
    
    final response = await http.post(
      Uri.parse(endpoint),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $apiKey",
      },
      body: jsonEncode({
        "messages" : [{"role": 'user', "content": prompt}],
        "model": model,
        "max_tokens": 1024,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
    setState(() {
      generatedStory = data['choices'][0]['message']['content'];  // Update the path to the generated text
      });
    } else {
      print("Error: ${response.statusCode}");
      print("Error Message: ${response.body}");
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
