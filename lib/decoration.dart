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
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Center(
            child: Text(
              'SAMEER',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ),
          decoration: BoxDecoration(
            // Border, BorderRadius, Shape, BoxShadow
            color: Colors.grey,

            // borderRadius: BorderRadius.circular(20), // Give Circle Radius to all corners together
            borderRadius: BorderRadius.only(
              // Only if specially want to give to one corner
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            // border: Border.all(color: Colors.black, width: 2),
            border: Border.fromBorderSide(
              BorderSide(color: Colors.black, width: 2),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
                spreadRadius: 2,
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
