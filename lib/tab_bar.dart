import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade50,
          toolbarHeight: 42,
          centerTitle: true,
          title: Text("TabBar", style: TextStyle(fontWeight: FontWeight.bold)),
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.home)),
              Tab(child: Icon(Icons.menu)),
              Tab(child: Icon(Icons.settings)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Icon(Icons.home)),
            Center(child: Icon(Icons.menu)),
            Center(child: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
