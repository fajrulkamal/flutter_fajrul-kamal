import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contact.dart';
import 'contact_provider.dart';
import 'contact_form_screen.dart';
import 'user_provider.dart';

class ContactListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context); // Access the UserProvider

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contact List'),
            if (userProvider.username != null)
              Text(
                userProvider.username!,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
          ],
        ),
        actions: [
          if (userProvider.username != null)
            TextButton(
              onPressed: () async {
                await userProvider.logout();
                // Optionally, navigate to a different screen after logout
              },
              child: Text('Log out', style: TextStyle(color: Colors.white)),
            ),
        ],
      ),
      body: Consumer<ContactProvider>(
        builder: (context, contactProvider, child) {
          final contacts = contactProvider.contacts;
          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];
              
              final iconFile = contact.iconPath.isNotEmpty ? File(contact.iconPath) : null;
              final iconExists = iconFile != null && iconFile.existsSync();
              
              return Container(
                color: stringToColor(contact.backgroundColor),
                child: ListTile(
                  leading: ClipOval(
                    child: iconExists
                        ? Image.file(
                            iconFile!,
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          )
                        : Icon(Icons.person),
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
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Delete Contact'),
                          content: Text('Are you sure you want to delete ${contact.name}?'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                contactProvider.deleteContact(contact.id);
                                Navigator.pop(context);
                              },
                              child: Text('Delete'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
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
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider()..loadUserData()), // Add UserProvider
      ],
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
