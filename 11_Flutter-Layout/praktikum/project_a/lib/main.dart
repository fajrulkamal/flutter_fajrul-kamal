import 'package:flutter/material.dart';
import 'package:project_a/model/data_kontak.dart'; // Sesuaikan dengan nama paket Anda

void main() {
  runApp(const HelloWorld());
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App'),
          backgroundColor: Color(0xFF444443), // Warna appbar
        ),
        drawer: Drawer(
          child: Container(
            color: Color(0xFF444443), // Warna latar belakang drawer
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white, // Warna teks dalam drawer
                    ),
                  ),
                  onTap: () {
                    // Aksi ketika tombol 1 di drawer ditekan
                  },
                ),
                ListTile(
                  title: Text(
                    'Setting',
                    style: TextStyle(
                      color: Colors.white, // Warna teks dalam drawer
                    ),
                  ),
                  onTap: () {
                    // Aksi ketika tombol 2 di drawer ditekan
                  },
                ),
              ],
            ),
          ),
        ),
        body: Container(
          color: Color(0xFF333433), // Warna latar belakang body aplikasi
          child: ContactList(contacts), // Menggunakan ContactList dengan data kontak
        ),
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
          backgroundColor: Color(0xFF444443), // Warna bottomNavigationBar
        ),
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  final List<Contact> contacts;

  ContactList(this.contacts);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return ContactListItem(contact: contact);
      },
    );
  }
}

class ContactListItem extends StatelessWidget {
  final Contact contact;

  ContactListItem({required this.contact});

  @override
  Widget build(BuildContext context) {
    // Ambil inisial nama depan
    String initials = contact.name.isNotEmpty ? contact.name[0] : '';

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xFF444443), // Warna latar belakang lingkaran
        child: Text(
          initials,
          style: TextStyle(
            color: Colors.white, // Warna teks inisial
          ),
        ),
      ),
      title: Text(
        contact.name,
        style: TextStyle(
          color: Colors.white, // Warna teks inisial
        ),
      ),
      subtitle: Text(
        contact.phoneNumber,
        style: TextStyle(
          color: Colors.white, // Warna teks inisial
        ),
      ),
      // Tambahkan aksi ketika item kontak ditekan di sini
    );
  }
}
