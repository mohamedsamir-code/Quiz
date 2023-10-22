import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int index = 0;

  bottomNavCurrent(value) {
    index = value;
    notifyListeners();
  }
}
