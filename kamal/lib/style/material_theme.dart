// lib/style/material_theme.dart
import 'package:flutter/material.dart';

final ThemeData materialTheme = ThemeData(
  primaryColor: Color(0xFF444443), // Warna appbar, drawer, dan bottomNavigationBar
  scaffoldBackgroundColor: Color(0xFF333433), // Warna latar belakang body aplikasi
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.white), // Warna teks dalam body
    bodyText2: TextStyle(color: Colors.white), // Warna teks dalam body
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF444443), // Warna appbar
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF444443), // Warna bottomNavigationBar
  ),
);
