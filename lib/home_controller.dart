import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  int selectedIndex = 0;
  void onChangeSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
