
import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorld());
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fajrul App'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('List'),
                ),
              ListTile(
                title: Text('Button 1'),
                onTap: () {
                  // Aksi ketika tombol 1 di drawer ditekan
                },
              ),
              ListTile(
                title: Text('Button 2'),
                onTap: () {
                  // Aksi ketika tombol 2 di drawer ditekan
                },
              ),
            ],
          ),
        ),
        body: const Center(child: Text('Material')),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}