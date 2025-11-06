// ignore_for_file: camel_case_types,, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter HomePage',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: FlutterHomePage(),
    );
  }
}

class FlutterHomePage extends StatelessWidget {
  const FlutterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hello World', style: TextStyle(fontSize: 25))),
    );
  }
}
