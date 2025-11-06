// ignore_for_file: avoid_unnecessary_containers

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

      home: Scaffold(
        // backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Flutter HomePage')),
        body: Container(
          // height: 300,
          // width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('A', style: TextStyle(fontSize: 30)),
                  Text('B', style: TextStyle(fontSize: 30)),
                  Column(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                      ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                    ],
                  ),
                  Text('C', style: TextStyle(fontSize: 30)),
                  Text('D', style: TextStyle(fontSize: 30)),
                ],
              ),
              Text('A', style: TextStyle(fontSize: 30)),
              Text('B', style: TextStyle(fontSize: 30)),
              Text('C', style: TextStyle(fontSize: 30)),
              Text('D', style: TextStyle(fontSize: 30)),
              ElevatedButton(
                onPressed: () {
                  print('Elevated Button Clicked ');
                },
                child: Text('Click'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
