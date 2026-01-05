import 'package:flutter/material.dart';

class ChoiceChipController extends ChangeNotifier {
  bool isSelected = false;

  bool get selected => isSelected;

  void selection(bool value) {
    isSelected = value;
    notifyListeners();
  }
}
