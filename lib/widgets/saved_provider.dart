import 'package:flutter/material.dart';

class SavedProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> saved = [];

  void addfavourite(Map<String, dynamic> course) {
    saved.add(course);
    notifyListeners();
  }

  void deletefavourite(Map<String, dynamic> course) {
    saved.remove(course);
    notifyListeners();
  }
}
