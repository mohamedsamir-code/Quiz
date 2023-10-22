import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int index = 2;

  bottomNavCurrent(value) {
    index = value;
    notifyListeners();
  }
}
