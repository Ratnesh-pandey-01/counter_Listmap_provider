import 'package:flutter/material.dart';

class ListMapProvider extends ChangeNotifier {
  //data
  List<Map<String, dynamic>> _mData = [];

  // get,add data
  void addMap(Map<String, dynamic> values) {
    _mData.add(values);
    notifyListeners();
  }

  //fetch data
  List<Map<String, dynamic>> getAllMaps() {
    return _mData;
  }
}
