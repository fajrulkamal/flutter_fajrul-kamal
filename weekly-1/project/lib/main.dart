import 'package:flutter/material.dart';

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
  bool _showForm = false;
  final List<String> _formData = [];

  // Tambahkan TextEditingController untuk masing-masing TextFormField
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _messageController = TextEditingController();

  void _submitForm(String firstName, String lastName, String email, String message) {
    final formData = 'First Name: $firstName\nLast Name: $lastName\nEmail: $email\nMessage: $message';
    setState(() {
      _formData.add(formData);
    });
  }

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _messageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset(
                'assets/logo.png',
                height: 36.0,
                width: 36.0,
              ),
              SizedBox(width: 12),
              Text('AIdea', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
        backgroundColor: Color(0xff044B7F),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.delta.dy > 0) {
            setState(() {
              _showForm = false;
            });
          } else if (details.delta.dy < 0) {
            setState(() {
              _showForm = true;
            });
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: _showForm ? _buildForm() : _buildWelcome(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcome() {
    return Container(
      key: ValueKey<String>('Welcome'),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Flutter App',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      key: ValueKey<String>('Form'),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Formulir',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _firstNameController, // Tambahkan controller
            decoration: InputDecoration(labelText: 'Nama Depan'),
            onChanged: (value) {},
          ),
          TextFormField(
            controller: _lastNameController, // Tambahkan controller
            decoration: InputDecoration(labelText: 'Nama Belakang'),
            onChanged: (value) {},
          ),
          TextFormField(
            controller: _emailController, // Tambahkan controller
            decoration: InputDecoration(labelText: 'Alamat Email'),
            onChanged: (value) {},
          ),
          TextFormField(
            controller: _messageController, // Tambahkan controller
            decoration: InputDecoration(labelText: 'Pesan'),
            onChanged: (value) {},
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Ambil data dari form dan panggil _submitForm
              final firstName = _firstNameController.text;
              final lastName = _lastNameController.text;
              final email = _emailController.text;
              final message = _messageController.text;

              _submitForm(firstName, lastName, email, message);
            },
            child: Text('Submit'),
            style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all<Color>(Color(0xff044B7F))),
          ),
          SizedBox(height: 16),
          Text(
            'Data yang telah disubmit:',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _formData.map((data) {
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(data),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
