import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:utama/screens/gallery_screen.dart';

void main() {
  testWidgets('Gallery Screen UI Test', (WidgetTester tester) async {
    // Render GalleryScreen
    await tester.pumpWidget(MaterialApp(home: GalleryScreen()));

    // Cek apakah semua elemen ada
    expect(find.text('Gallery'), findsOneWidget);
    expect(find.byType(GestureDetector), findsWidgets); // Cek apakah ada beberapa gambar
  });
}
