import 'package:flutter/material.dart';

class CheckingScreen extends StatefulWidget {
  const CheckingScreen({super.key});

  @override
  State<CheckingScreen> createState() => _CheckingScreenState();
}

class _CheckingScreenState extends State<CheckingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: UserAccountsDrawerHeader(accountName: Text("sameer"), accountEmail: Text("sameer@gmail.com"))),
            Divider(),
            ListTile(
              title: Text("1st List Tile"),
            ),
            ListTile(
              title: Text("2nd List Tile"),
            ),
            ListTile(
              title: Text("3rd List Tile"),
            ),
          ],
        ),
      ),
    appBar: AppBar(
    centerTitle: true,
    title: const Text(
    'Checking',
    style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
    ),
    shadowColor: Colors.grey,
    elevation: 1,
    backgroundColor: Colors.blue.shade500,
    ),
    body: Center(child: Text("Hello!"),),
    );
  }
}