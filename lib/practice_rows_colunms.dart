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

      home: Scaffold(
        // backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Flutter HomePage')),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,

            // Text('Tables', style: TextStyle(fontSize: 30)),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Tables Group 1', style: TextStyle(fontSize: 30))],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 02');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('02 x $i = ${02 * i}');
                      }
                    },
                    child: Text('Table of 02'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 03');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('03 x $i = ${03 * i}');
                      }
                    },
                    child: Text('Table of 03'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 04');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('04 x $i = ${04 * i}');
                      }
                    },
                    child: Text('Table of 04'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Tables Group 2', style: TextStyle(fontSize: 30))],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 05');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('05 x $i = ${05 * i}');
                      }
                    },
                    child: Text('Table of 05'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 06');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('06 x $i = ${06 * i}');
                      }
                    },
                    child: Text('Table of 06'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 07');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('07 x $i = ${02 * i}');
                      }
                    },
                    child: Text('Table of 07'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Tables Group 3', style: TextStyle(fontSize: 30))],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 08');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('08 x $i = ${08 * i}');
                      }
                    },
                    child: Text('Table of 08'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 09');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('06 x $i = ${09 * i}');
                      }
                    },
                    child: Text('Table of 09'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Table of 10');
                      print('\n');
                      for (int i = 1; i <= 10; i++) {
                        print('07 x $i = ${10 * i}');
                      }
                    },
                    child: Text('Table of 10'),
                  ),
                ],
              ),
            ],
          ),

          // ],
        ),
      ),
    );
  }
}
