import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  late int _count = 0;

  int get count => _count;

  void incrementCounter() {
    _count++;
    notifyListeners();
  }

  void decrementCounter() {
    if (_count > 0) {
      _count--;
    }
    notifyListeners();
  }
}
