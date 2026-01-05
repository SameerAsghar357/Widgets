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
        body: Center(
        child: SizedBox( // can use SizedBox or Container anyone
        width: 100,
        height: 100,
        child: Image.asset('assets/images/flutter_icon_jpg.jpeg'),
        )
        )
        
      ),
    );
  }
}
