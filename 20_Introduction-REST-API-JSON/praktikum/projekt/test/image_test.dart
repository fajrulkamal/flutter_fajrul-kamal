import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:restapplication/main.dart';

void main() {
  testWidgets("Svgs testing", (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());
    await widgetTester.pumpAndSettle();
    expect(find.byType(Image), findsWidgets);
  });
}
