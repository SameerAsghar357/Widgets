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

var arrNames = [
  'Sameer',
  'Asghar',
  'Haroon',
  'Shahzaib',
  'Abdullah',
  'Mehdi',
  'Usman',
  'Masab',
  'Afaq',
  'Arham',
  'Hashir',
  'Arif Lohar',
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter HomePage')),
      // backgroundColor: Colors.blue.shade100,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/boy_logo.jpeg'),
              ),
              title: Text(arrNames[index]),
              subtitle: Text('Number'),
              trailing: Icon(Icons.call),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(height: 20, thickness: 2);
          },
          itemCount: arrNames.length,
        ),
      ),
    );
  }
}
