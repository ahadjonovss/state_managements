import 'package:flutter/material.dart';
import 'package:state_managements/7-lesson%20(live)/ui/pages/home/widgets/post_item.dart';
class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      child: Column(
        children: [
          ...List.generate(10, (index) => PostItem())
        ],
      ),
    );
  }
}
