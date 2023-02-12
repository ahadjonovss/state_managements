import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/default_state_management/default_counter.dart';
import 'package:state_managements/provider/counter_view_model.dart';
import 'package:state_managements/provider/provider_counter.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterViewModel(),)
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProviderCounter(),
    );
  }
}


