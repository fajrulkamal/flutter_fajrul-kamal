import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contact.dart';
import 'contact_provider.dart';
import 'contact_form_screen.dart';

class ContactListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: Consumer<ContactProvider>(
        builder: (context, contactProvider, child) {
          final contacts = contactProvider.contacts;
          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];
              print('Contact Icon Path: ${contact.iconPath}'); // Print iconPath for debugging
              
              // Check if iconPath is not empty and if the file exists at iconPath
              final iconFile = contact.iconPath.isNotEmpty ? File(contact.iconPath) : null;
              final iconExists = iconFile != null && iconFile.existsSync();
              print('Icon Exists: $iconExists'); // Print whether the file exists at iconPath
              
              return Container(
                color: stringToColor(contact.backgroundColor),
                child: ListTile(
                  leading: ClipOval(
                    child: iconExists // Check if the file exists before trying to display it
                        ? Image.file(
                            iconFile!,
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          )
                        : Icon(Icons.person), // Default icon if no image is selected or if the file does not exist
                  ),
                  title: Text(contact.name),
                  subtitle: Text(contact.email),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactFormScreen(contact: contact),
                      ),
                    );
                  },
                  onLongPress: () {
                    // Optionally, add functionality to delete or perform other actions on long press
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactFormScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactProvider(),
      child: MaterialApp(
        title: 'Contact List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ContactListScreen(),
      ),
    ),
  );
}
