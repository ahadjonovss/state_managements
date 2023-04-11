import 'package:get/get.dart';

class UserNameController extends GetxController{

  var username = ''.obs;

  changeUserName(String name){
    username.value=name;
    notifyChildrens();

  }
}