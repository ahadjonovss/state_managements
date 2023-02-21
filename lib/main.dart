import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/default_state_management/default_counter.dart';
import 'package:state_managements/provider/1-lesson%20counter/counter_view_model.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterViewModel(),)
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
      home: MyHomePage(title: 's',)
    );
  }
}


