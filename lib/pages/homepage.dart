import 'package:flutter/material.dart';
import 'package:state_management_basics/models/contact_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Book'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contactBook.length,
        itemBuilder: (context, index) {
          final contact = contactBook.contact(atIndex: index);
          return ListTile(
            title: Text(contact!.name),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed('/new-contact');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
