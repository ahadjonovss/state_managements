import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managements/6-lesson/controller/username_controller.dart';

class TranslationPAge extends StatelessWidget {
  const TranslationPAge({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    UserNameController controller = Get.put(UserNameController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Translation with GetX"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               TextField(
                 onChanged: (value) {
                   controller.changeUserName(value);
                 },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "name".tr
                ),
              ),
               const SizedBox(height: 100,),
               Obx(() => Text("hello".trParams({
                "someone":controller.username.value
              })),)

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(Get.locale== const Locale('uz',"UZ")){
            Get.updateLocale(const Locale("en","EN"));
          }else{
            Get.updateLocale(const Locale("uz","UZ"));

          }
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
