import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(CreditCardApp());
}

class CreditCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credit Card Manager',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}
