import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{

  ThemeController(context){
    checkTheme(context);
  }
  var isLight = false.obs;

  checkTheme(BuildContext context){
    isLight.value=Get.isDarkMode;
  }

  changeTheme(context){
    print("Changing");
    Get.changeThemeMode(Get.isDarkMode?ThemeMode.light:ThemeMode.dark);
    print(Get.isDarkMode);
    checkTheme(context);
  }
}