import 'package:flutter/material.dart';

class RawChipWidget extends StatelessWidget {
  const RawChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'RawChip',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Colors.blue.shade500,
      ),
      body: Center(
        // these all chips are almost same with few differences for different use casesz
        child: RawChip(
          label: Text("RawChip"),
          onDeleted: () {},
          onPressed: () {},
          onSelected: (value) {},
        ),
      ),
    );
  }
}
