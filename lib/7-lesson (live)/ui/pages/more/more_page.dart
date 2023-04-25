import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_managements/7-lesson%20(live)/controller/theme_controller.dart';
import 'package:state_managements/7-lesson%20(live)/utils/app_theme.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    ThemeController controller = Get.find();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.backgroundColor,
        title: Text("Settings",style: TextStyle(color: Get.theme.accentColor),),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.dark_mode,weight: 60,color: Get.theme.accentColor,),
                Text("Dark mode",style: TextStyle(color: Get.theme.accentColor),),
                CupertinoSwitch(value: Get.isDarkMode, onChanged: (value) {
                  Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());
                  setState(() {
                    print('Qayta chizildi');
                    print(Get.isDarkMode);
                  });
                },)
              ],
            )
          ],
        ),
      ),

    );
  }
}
