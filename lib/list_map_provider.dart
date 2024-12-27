import 'package:flutter/material.dart';

class ListMapProvider extends ChangeNotifier {
  //data
  List<Map<String, dynamic>> _mData = [];

  //event
  void addMap(Map<String, dynamic> values) {
    _mData.add(values);
    notifyListeners();
  }

  //get
  List<Map<String, dynamic>> getAllMaps() {
    return _mData;
  }
}
