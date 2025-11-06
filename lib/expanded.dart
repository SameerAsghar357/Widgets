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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // As Name shows in row works for width & in colunm works for height
                  Expanded(
                    // flex: 2, // Using flex you can give ratio to specific widget for expansion and remaining ratio will be divided equally into remaining widgets
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(width: 50, height: 100, color: Colors.red),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // As Name shows in row works for width & in colunm works for height
                  Expanded(
                    // flex: 2, // Using flex you can give ratio to specific widget for expansion and remaining ratio will be divided equally into remaining widgets
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
