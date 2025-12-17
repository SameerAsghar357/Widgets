import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int _currentIndex = 0;
  List<Widget> body = [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    centerTitle: true,
    title: const Text(
    'Bottom Navigation Bar Example',
    style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
    ),
    shadowColor: Colors.grey,
    elevation: 1,
    backgroundColor: Colors.blue.shade500,
    ),
    body: Center(
      child: body[
        _currentIndex
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
    },
    items: [
      BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: "Menu",
        icon: Icon(Icons.menu),
      ),
      BottomNavigationBarItem(
        label: "Person",
        icon: Icon(Icons.person),
      ),
    ]),
    );
  }
}