import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_managements/7-lesson%20(live)/controller/bottom_nav_controller.dart';
import 'package:state_managements/7-lesson%20(live)/controller/theme_controller.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.find();
    return Obx(
      () => BottomNavigationBar(
        currentIndex:controller.currentPage.value,
        onTap: (value) => controller.changePage(value),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Get.theme.backgroundColor,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items:const   [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back),label: "Browse"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: "Bookmark"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: "More"),
        ],
      ),
    );
  }
}
