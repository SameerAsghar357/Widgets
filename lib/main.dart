// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:widgets/drawer/drawer.dart';
import 'package:widgets/expanded_checking.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HomePage",
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: myDrawer(),
    );
  }
}
