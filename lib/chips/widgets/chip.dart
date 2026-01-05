import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Chip',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Colors.blue.shade500,
      ),
      body: Center(
        child: Chip(
          // you can check many things are here as well
          label: Text("Hello"),
          // deleteIcon: Container(height: 10, width: 10, color: Colors.amber),
          onDeleted: () {
            debugPrint("pressed");
          },
          avatar: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadiusGeometry.circular(5),
          // ),
        ),
      ),
    );
  }
}
