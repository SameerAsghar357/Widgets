// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:widgets/custom_fontstyles.dart';
// import 'package:';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter HomePage',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        // scaffoldBackgroundColor: Colors.grey.shade200,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 25, color: Colors.orange),
          headlineSmall: TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.italic,
            color: Colors.blue,
          ),
        ),
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
      // backgroundColor: Colors.blue.shade100,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Colors.lightGreenAccent,
              ),
            ),
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text('Hello World', style: myTextStyle11()),
          ],
        ),
      ),
    );
  }
}
