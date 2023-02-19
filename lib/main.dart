import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/ui/default_state_management/default_counter.dart';
import 'package:state_managements/ui/provider/2-lesson%20dio/provider_with_dio.dart';

import 'ui/provider/1-lesson counter/counter_view_model.dart';
import 'ui/provider/1-lesson counter/provider_counter.dart';

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
      home: ProviderWithDio(
      ),
    );
  }
}


