import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/contact_provider.dart';
import 'screens/contact_list_screen.dart';
import 'screens/home_screen.dart'; // Import the HomeScreen
import 'screens/gallery_screen.dart'; // Import the GalleryScreen

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kontak dan Galeri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Set HomeScreen as the starting page
      routes: {
        '/contactList': (context) => ContactListScreen(),
        '/gallery': (context) => GalleryScreen(),
      },
    );
  }
}
