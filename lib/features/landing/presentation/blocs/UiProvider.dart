import 'package:flutter/cupertino.dart';

class UiProvider extends ChangeNotifier{
  int currentPageIndex = 0;

  void setCurrentPageIndex(int index){
    currentPageIndex = index;
    notifyListeners();
  }
}