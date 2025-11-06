import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padding vs Margin vs ContentPadding',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Spacing Example')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Margin Example
              Container(
                color: Colors.grey[300],
                child: Container(
                  margin: EdgeInsets.all(16), // Outside spacing
                  color: Colors.blue,
                  height: 50,
                  width: double.infinity,
                  child: Center(child: Text('Margin')),
                ),
              ),

              SizedBox(height: 20),

              // Padding Example
              Container(
                color: Colors.grey[300],
                padding: EdgeInsets.all(16), // Inside spacing
                child: Container(
                  color: Colors.green,
                  height: 50,
                  width: double.infinity,
                  child: Center(child: Text('Padding')),
                ),
              ),

              SizedBox(height: 20),

              // Content Padding Example
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Content Padding',
                  contentPadding: EdgeInsets.all(20), // Padding inside the text field
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}