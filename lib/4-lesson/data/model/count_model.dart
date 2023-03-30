import 'package:get/get.dart';

class CountModel{
  var count = 0.obs;
  var countOfChanging = 0.obs;

  CountModel(this.count,this.countOfChanging);


  void incrementChanging(){
    countOfChanging++;
  }
}