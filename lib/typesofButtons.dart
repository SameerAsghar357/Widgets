import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Flat Button
        // body: TextButton(
        //   child: Text('Click Here!'),
        //   onPressed: () {
        //     print('Text Button Tapped');
        //   },
        //   onLongPress: () {
        //     print('Long Pressed');
        //   },
        // ),
        // Raised Button
        body: ElevatedButton(
          child: Text('Elevated Button'),

          onPressed: () {
            print('Button Pressed');
          },
        ),
      ),
    );
  }
}
