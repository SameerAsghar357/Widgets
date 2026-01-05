// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/check_box.dart';
import 'package:widgets/checkbox_listtile.dart';
import 'package:widgets/chips/controllers/choice_chip_controller.dart';
import 'package:widgets/chips/widgets/chip.dart';
import 'package:widgets/chips/widgets/choice_chip.dart';
import 'package:widgets/chips/widgets/raw_chip.dart';
import 'package:widgets/clip_path.dart';
import 'package:widgets/divider.dart';
import 'package:widgets/drawer/drawer.dart';
import 'package:widgets/expanded_checking.dart';
import 'package:widgets/grid_view.dart';
import 'package:widgets/grid_view_builder.dart';
import 'package:widgets/page_view.dart';
import 'package:widgets/practice_statefullwidget.dart';
import 'package:widgets/refresh_indicator.dart';
import 'package:widgets/tab_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(MyApp());
  runApp(
    ChangeNotifierProvider(
      create: (context) => ChoiceChipController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HomePage",
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: RefreshIndicatorWidget(),
    );
  }
}
