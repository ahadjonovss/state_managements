import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const  EdgeInsets.only(top: 10),
          height: 120,
          width: 360,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        image:NetworkImage('https://picsum.photos/200/300'),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:const EdgeInsets.only(left: 18,top: 12),
                    child:  Text("Prepare for your first\nskateboard jump",
                      style: TextStyle(color: Get.theme.accentColor,fontSize: 16,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),),
                  ),
                  Container(
                    margin:const   EdgeInsets.only(left: 20,top: 8),
                    child: Text('Jordan Wise',style: TextStyle(fontSize: 12,color: Get.theme.accentColor),),
                  ),
                  Container(
                    margin:const  EdgeInsets.only(left: 20,top: 12),
                    child: Text('124,567 views - 2 days ago',style: TextStyle(fontSize: 12,color: Get.theme.accentColor),),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
