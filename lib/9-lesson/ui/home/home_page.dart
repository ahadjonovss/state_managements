import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:state_managements/9-lesson/ui/splash/splash_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
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
    );
  }
}
