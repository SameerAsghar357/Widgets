import 'package:flutter/material.dart';
import 'package:widgets/grid_view.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'GridViewBuilder',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Colors.deepPurple.shade500,
      ),
      body: GridView.builder(
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 200,
        ),
        itemBuilder: (_, index) {
          return GridTile(
            header: GridTileBar(
              backgroundColor: Colors.black45,
              leading: Icon(Icons.person),
              title: Text("Flutter Map"),
              trailing: Icon(Icons.menu),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              leading: Icon(Icons.favorite),
            ),
            child: CustomContainer(),
          );
        },
      ),
    );
  }
}
