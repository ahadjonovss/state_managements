import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_managements/7-lesson%20(live)/controller/theme_controller.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController controller = Get.put(ThemeController(context));
    return Obx(
      () =>  Scaffold(
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
                 Icon(Icons.light_mode,weight: 60,color: Get.theme.accentColor,),
                  Text("Light mode",style: TextStyle(color: Get.theme.accentColor),),
                 CupertinoSwitch(value: controller.isLight.value, onChanged: (value) {
                   controller.changeTheme(context);


                 },)
               ],
             )
            ],
          ),
        ),

      ),
    );
  }
}
