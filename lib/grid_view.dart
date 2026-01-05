import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});

  final List<Widget> customWidget = [
    for (int i = 0; i < 14; i++) CustomContainer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'GridView',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Colors.deepPurple.shade500,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        // use simple GridView widget when you already know the no of items and its size is small like 2,3,4...
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 200,
          ),
          children: customWidget,
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.deepPurple.shade100,
      child: Center(child: Text("Grid View")),
    );
  }
}
