import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  final List<String> items = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Refresh Indicator',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Colors.blue.shade500,
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.blue.shade400,
        color: Colors.white,
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 1), () {
            int itemNumber = items.length + 1;
            items.add("Item $itemNumber");
            setState(() {});
          });
        },
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Item ${index + 1}"),
                tileColor: Colors.blue.shade100,
                // contentPadding: EdgeInsets.all(5),
              ),
            );
          },
        ),
      ),
    );
  }
}
