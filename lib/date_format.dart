// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(myFlutterApp());
}

class myFlutterApp extends StatelessWidget {
  const myFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter HomePage',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(title: Text('Fluter HomePage')),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text('Current Time: $time', style: TextStyle(fontSize: 25)),
              // Text('Current Year: ${time.year}', style: TextStyle(fontSize: 25)),
              // Text('Current Month: ${time.month}', style: TextStyle(fontSize: 25)),
              // Text('Current Date: ${time.day}', style: TextStyle(fontSize: 25)),
              // Text('Current Day: ${time.weekday}', style: TextStyle(fontSize: 25)),
              // Text(
              //   'Current Time: ${time.hour}:${time.minute}:${time.second}',
              //   style: TextStyle(fontSize: 30),
              // ),
              // Text(
              //   'Current Time: ${DateFormat('Hms').format(time)}',
              //   style: TextStyle(fontSize: 25),
              // ),
              // Text(
              //   'Current Time: ${DateFormat('jms').format(time)}',
              //   style: TextStyle(fontSize: 25),
              // ),
              // Text(
              //   'Current Time: ${DateFormat('yMMMMd').format(time)}',
              //   style: TextStyle(fontSize: 25),
              // ),
              // Text(
              //   'Current Time: ${DateFormat('yMMMM').format(time)}',
              //   style: TextStyle(fontSize: 25),
              // ),
              // Text(
              //   'Current Time: ${DateFormat('QQQQ').format(time)}',
              //   style: TextStyle(fontSize: 25),
              // ),
              // Text(
              //   'Current Time: ${DateFormat('yMMMMEEEEd').format(time)}',
              //   style: TextStyle(fontSize: 25),
              // ),
              Text(
                'Current Time: ${DateFormat('EEEE').format(time)}',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: Text('Current Time'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
