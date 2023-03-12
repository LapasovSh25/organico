import 'dart:math';

import 'package:flutter/cupertino.dart';

class InfoPageProvider extends ChangeNotifier {
  List<Map<String, dynamic>> wishList = [];
  void addToWishList(Map<String, dynamic> element) {
    if (wishList.contains(element)) {
      wishList.remove(element);
      notifyListeners();
    } else {
      wishList.add(element);
      notifyListeners();
    }
  }

  void deleteFromWishList(
      Map<String, dynamic> element, List<Map<String, dynamic>> list) {
    list.remove(element);
    wishList.remove(element);
    notifyListeners();
  }

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
