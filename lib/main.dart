import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/ui/products/products_page.dart';
import 'package:state_managements/view_model/product_view_model.dart';
import 'package:state_managements/view_model/products_view_model.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProductsViewModel(),),
      ChangeNotifierProvider(create: (context) => ProductViewModel(),),
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
      home: ProductsPage()
    );
  }
}


