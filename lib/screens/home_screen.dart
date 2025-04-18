import 'package:flutter/material.dart';
import 'add_card_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Credit Cards')),
      body: Center(child: Text('No cards added yet.')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => AddCardScreen()),
        ),
      ),
    );
  }
}
