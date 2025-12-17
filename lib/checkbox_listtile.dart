import 'package:flutter/material.dart';

class CheckboxListtileScreen extends StatefulWidget {
  const CheckboxListtileScreen({super.key});

  @override
  State<CheckboxListtileScreen> createState() => _CheckboxListtileScreenState();
}

class _CheckboxListtileScreenState extends State<CheckboxListtileScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'CheckBoxListTile Example',
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
      ),
      body: Center(
        child: CheckboxListTile(
          title: Text("CheckBox ListTile"),
          activeColor: Colors.blue,
          value: isChecked,
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
