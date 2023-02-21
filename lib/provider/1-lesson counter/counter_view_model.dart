import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  int count =0;

  increment(){
    count++;
    notifyListeners();
  }

  decrement(){
    count--;
    notifyListeners();
  }
}