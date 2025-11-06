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
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter HomePage')),
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: Column(
            children: [
              CircleAvatar(
                
                radius: 50,
                backgroundImage: AssetImage('assets/images/boy_logo.png'),
                backgroundColor: Colors.lightGreenAccent,
              ),
              Text(
                'Sameer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),
              ),
            ],
            // backgroundColor: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }
}
