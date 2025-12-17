import 'package:flutter/material.dart';

class MyDrawerController extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateScreenIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }
}
