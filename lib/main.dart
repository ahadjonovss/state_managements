import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/1-lesson/default_state_management/default_counter.dart';
import 'package:state_managements/1-lesson/provider/1-lesson%20counter/counter_view_model.dart';
import 'package:state_managements/2-lesson/ui/products/products_page.dart';
import 'package:state_managements/2-lesson/view_model/products_view_model.dart';
import 'package:state_managements/3-lesson/ui/write_to_db_page.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterViewModel(),),
      ChangeNotifierProvider(create: (context) => ProductsViewModel(),),
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WriteToDbPage()
    );
  }
}


