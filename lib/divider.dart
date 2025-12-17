import 'package:flutter/material.dart';

class DividerWidget extends StatefulWidget {
  const DividerWidget({super.key});

  @override
  State<DividerWidget> createState() => _DividerWidgetState();
}

class _DividerWidgetState extends State<DividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Divider Widget',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Colors.blue.shade500,
      ),
      body: Column(
        children: [
          Expanded(child: Container(height: 250, color: Colors.orange)),
          const Divider(
            color: Colors.black, // as name shows
            height: 30, // height different than thickness
            thickness: 4, // as name shows
            indent: 20, // padding from start
            endIndent: 100, // padding from end
          ),
          Expanded(child: Container(height: 250, color: Colors.orange)),
        ],
      ),
    );
  }
}
