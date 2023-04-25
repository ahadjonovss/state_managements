import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(top: 50,left: 20,right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text("Discover",style: TextStyle(fontWeight: FontWeight.w800,color: Get.theme.accentColor,fontSize: 28),),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Get.theme.accentColor,size: 32,))
        ],
      ),
    );
  }
}
