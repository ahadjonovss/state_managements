import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  int count =0;

  increment(){
    count++;
    notifyListeners();
    print("Counter oshdi : $count");
  }

  decrement(){
    count--;
    notifyListeners();
    print("Counter oshdi : $count");
  }
}