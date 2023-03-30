import 'package:get/get.dart';

class CounterController extends GetxController{

  var count = 0.obs;
  void increment(){
    count++;
    print("Counter has been incremented : $count");
  }

  void decrement(){
    count--;
    print("Counter has been decremented : $count");

  }

}