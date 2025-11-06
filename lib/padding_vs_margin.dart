// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter HomePage')),
      body: Container(
        margin: EdgeInsets.all(11), // Margin is for outside spacing
        color: Colors.blueGrey,
        child: Padding( // Padding is for inside spacing (when widget is inside another widget)
          padding: const EdgeInsets.only(
            left: 21,
            bottom: 11,
            right: 25,
            top: 25,
          ),
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
