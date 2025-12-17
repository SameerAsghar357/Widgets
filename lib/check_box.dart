import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('CheckBox Example', style: TextStyle(color: Colors.white)),
        shadowColor: Colors.grey,
        elevation: 1,
      ),
      body: Center(
        child: Checkbox(
          value: isChecked,
          activeColor: Colors.blue,
          onChanged: (value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
      ),
    );
  }
}
