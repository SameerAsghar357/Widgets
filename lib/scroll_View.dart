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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            // scrollView
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          height: 200,
                          width: 400,
                          color: Colors.lightGreenAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          height: 200,
                          width: 400,
                          color: Colors.blue,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          height: 200,
                          width: 400,
                          color: Colors.orange,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          height: 200,
                          width: 400,
                          color: Colors.cyanAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          height: 200,
                          width: 400,
                          color: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          height: 200,
                          width: 400,
                          color: Colors.limeAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          height: 200,
                          width: 400,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 300,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 300,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 300,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 300,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 300,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 300,
                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 300,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 300,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
