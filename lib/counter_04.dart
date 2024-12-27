import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  //data
  int _count = 0;

  //event
  void incrementCount() {
    _count++;
    notifyListeners();
  }

  //get
  getValue() {
    return _count;
  }
}
