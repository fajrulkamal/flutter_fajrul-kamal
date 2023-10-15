import 'package:flutter_test/flutter_test.dart';
import 'package:utama/screens/contact_list_screen.dart';

void main() {
  testWidgets('Contact List Screen UI Test', (WidgetTester tester) async {
    // Render ContactListScreen
    await tester.pumpWidget(MaterialApp(home: ContactListScreen()));

    // Cek apakah semua elemen ada
    expect(find.text('Contact List'), findsOneWidget);
    expect(find.byType(ListTile), findsWidgets); // Cek apakah ada beberapa kontak
  });
}
