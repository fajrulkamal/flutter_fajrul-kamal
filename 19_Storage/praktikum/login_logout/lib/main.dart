import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/contact_provider.dart';
import 'screens/contact_list_screen.dart';
import 'screens/home_screen.dart'; // Import the HomeScreen
import 'screens/gallery_screen.dart'; // Import the GalleryScreen
import 'screens/user_provider.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider()..loadUserData()), // Initialize UserProvider and load user data
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Consumer<UserProvider>(
        builder: (context, userProvider, child) {
          if (userProvider.username == null) {
            return LoginScreen();
          } else {
            return HomeScreen();
          }
        },
      ),
      routes: {
        '/contactList': (context) => ContactListScreen(),
        '/gallery': (context) => GalleryScreen(),
        // Add other routes if needed
      },
    );
  }
}
