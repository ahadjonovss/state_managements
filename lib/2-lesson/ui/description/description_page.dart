import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/2-lesson/view_model/product_view_model.dart';

class DescriptionPage extends StatelessWidget {

  DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description Page"),
      ),
    );
  }
}
