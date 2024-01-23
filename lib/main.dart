import 'package:flutter/material.dart';
import 'package:state_management_basics/pages/homepage.dart';
import 'package:state_management_basics/widgets/new_contact_view.dart';

void main() {
  runApp(const ContactsApp());
}

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Book',
      theme: ThemeData.dark(),
      home: const HomePage(),
      routes: {
        '/new-contact': (context) => const NewContactView(),
      },
    );
  }
}
