import 'dart:math';

import 'package:flutter/cupertino.dart';

class InfoPageProvider extends ChangeNotifier {
  int value = 1;
  void add() {
    value++;
    notifyListeners();
  }

  void disscrement() {
    if (value < 2) {
      value = 1;
      notifyListeners();
    } else {
      value--;
      notifyListeners();
    }
  }
}
