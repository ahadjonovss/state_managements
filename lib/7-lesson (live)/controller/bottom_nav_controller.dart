import 'package:get/get.dart';

class BottomNavController extends GetxController{

  var currentPage = 0.obs;

  changePage(int page){
    currentPage.value=page;
  }
}