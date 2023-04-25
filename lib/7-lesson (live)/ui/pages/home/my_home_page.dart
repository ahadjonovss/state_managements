import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_managements/7-lesson%20(live)/ui/pages/home/widgets/app_bar.dart';
import 'package:state_managements/7-lesson%20(live)/ui/pages/home/widgets/posts_view.dart';
import 'package:state_managements/7-lesson%20(live)/ui/pages/home/widgets/stories_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary:false,
      child: Container(
          padding: const EdgeInsets.all(20),
          color: Get.theme.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              CustomAppBar(),
              StoriesView(),
              SizedBox(height: 12,),
              Text("Most Watched",style: TextStyle(fontWeight: FontWeight.w800,color:Get.theme.accentColor,fontSize: 20),), //Most Watched
              PostsView(),
            ],
          )
      ),
    );
  }
}
