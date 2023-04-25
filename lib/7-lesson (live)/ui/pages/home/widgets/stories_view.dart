import 'package:flutter/material.dart';
import 'package:state_managements/7-lesson%20(live)/ui/pages/home/widgets/story_item.dart';

class StoriesView extends StatelessWidget {
  const StoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      child: ListView.builder(itemBuilder: (context, index) => StoryItem(),
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),

    );
  }
}
