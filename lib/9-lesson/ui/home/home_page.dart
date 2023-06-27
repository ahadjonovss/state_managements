import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:state_managements/9-lesson/ui/splash/splash_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Parser p = Parser();
    Expression exp = p.parse("(x^2 + cos(y)) / 3");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var auth = Hive.box('auth');
          auth.delete("token");
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => SplashPage(),
              ),
                  (route) => false);

        },
      ),
      body: Text(exp.evaluate(EvaluationType.REAL,ContextModel())),
    );
  }
}
