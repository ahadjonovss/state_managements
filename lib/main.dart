import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/1-lesson/default_state_management/default_counter.dart';
import 'package:state_managements/1-lesson/provider/1-lesson%20counter/counter_view_model.dart';
import 'package:state_managements/2-lesson/ui/products/products_page.dart';
import 'package:state_managements/2-lesson/view_model/products_view_model.dart';
import 'package:state_managements/3-lesson/data/repository/mind_repository.dart';
import 'package:state_managements/3-lesson/service/local_db_servcie.dart';
import 'package:state_managements/3-lesson/ui/write_to_db_page.dart';
import 'package:state_managements/3-lesson/view_model/minds_view_model.dart';
import 'package:get/get.dart';
import 'package:state_managements/4-lesson/ui/counter_page.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterViewModel(),),
      ChangeNotifierProvider(create: (context) => ProductsViewModel(),),
      ChangeNotifierProvider(create: (context) => MindsViewModel(mindRepository: MindRepository(db: LocalDatabase()),)),
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage()
    );
  }
}


