import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Stack(
        children: [
          Container(
            // height: double.infinity,
            // width: double.infinity,
            height: 300,
            width: 400,
            color: Colors.blueGrey,
          ),
          Positioned(
            bottom: 20,
            right: 20.0,
            child: Container(height: 70, width: 70, color: Colors.white),
          ),
          Positioned(
            bottom: 50,
            right: 50.0,
            child: Container(height: 70, width: 70, color: Colors.orange),
          ),
          Positioned(
            bottom: 80,
            right: 80.0,
            child: Container(height: 70, width: 70, color: Colors.tealAccent),
          ),
        ],
      ),
    );
  }
}
