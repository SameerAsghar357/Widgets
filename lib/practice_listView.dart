// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'sameer',
      'asghar',
      'afaq',
      'chand',
      'faizan',
      'abdullah',
      'shahzaib',
      'usman',
      'haroon',
    ];

    return MaterialApp(
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),

      // backgroundColor: Colors.blueGrey,
      home: Scaffold(
        // backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Flutter HomePage')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            // child: Container(
            // width: 400,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'To Print your Name Press the Button !',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),

                          child: ElevatedButton(
                            onPressed: () {
                              print("Hi My Name is ${arrNames[index]}");
                            },
                            child: Text(
                              arrNames[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
              itemCount: arrNames.length,
              separatorBuilder: (context, index) {
                return Divider(height: 50, thickness: 2);
              },
            ),
            // ),
          ),
        ),
      ),
    );
  }
}
