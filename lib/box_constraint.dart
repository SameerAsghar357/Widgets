import 'package:flutter/material.dart';

void main() {
  runApp(BoxConstraintsWidget());
}

class BoxConstraintsWidget extends StatelessWidget {
  const BoxConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('HomePage', style: TextStyle(color: Colors.white)),
        elevation: 1,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ElevatedButton(onPressed: () {}, child: Text('Next'))],
          ),
        ),
      ),
    );
  }
}
