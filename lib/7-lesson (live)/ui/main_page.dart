import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_managements/7-lesson%20(live)/controller/bottom_nav_controller.dart';
import 'package:state_managements/7-lesson%20(live)/ui/pages/home/my_home_page.dart';
import 'package:state_managements/7-lesson%20(live)/ui/pages/more/more_page.dart';
import 'package:state_managements/7-lesson%20(live)/ui/widgets/bottom_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    List<Widget> pages =[
      MyHomePage(),
      Scaffold(),
      Scaffold(),
      MorePage()
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(()=> pages[controller.currentPage.value]),
      bottomNavigationBar:  CustomBottomNavBar(),
    );
  }
}

