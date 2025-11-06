import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('Hello World', style: TextStyle(
          fontSize: 25,
          color: Colors.cyanAccent,
          fontWeight: FontWeight.w100
          ),
        ),
      ),
    );
  }
}
