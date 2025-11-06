// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter HomePage',
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            // fontFamily: "ManufacturingConsent",
            fontSize: 25,
            fontStyle: FontStyle.normal,
            // fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),

      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter HomePage')),
      body: Center(
        child: Card(
          elevation: 5,
          shadowColor: Colors.orange,
          // margin: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hello World!', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
