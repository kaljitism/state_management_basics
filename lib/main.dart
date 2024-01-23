import 'package:flutter/material.dart';

void main() {
  runApp(const ContactBook());
}

class ContactBook extends StatelessWidget {
  const ContactBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class Contact {
  final String name;

  const Contact({required this.name});
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Book'),
        centerTitle: true,
      ),
    );
  }
}
