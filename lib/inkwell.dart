// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),

      // backgroundColor: Colors.blueGrey,
      home: Scaffold(
        // backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Flutter HomePage')),
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: InkWell(
              child: Center(
                child: Text(
                  'Flutter',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              onTap: () {
                print('Tapped');
              },
              onDoubleTap: () {
                print('Double Tapped');
              },
              onLongPress: () {
                print('Long Pressed');
              },
            ),
          ),
        ),
      ),
    );
  }
}
