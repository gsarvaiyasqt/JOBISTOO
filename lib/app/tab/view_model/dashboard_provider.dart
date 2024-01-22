


import 'package:flutter/material.dart';

class TabIndexProvider with ChangeNotifier{

  int currentIndex = 0;

  tabChangeIndex({required int index}){
    currentIndex = index;
    notifyListeners();
  }
}