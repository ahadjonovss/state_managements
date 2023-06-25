import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managements/9-lesson/ui/home/home_page.dart';

import '../../service/api_service.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: username,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("username")),
            ),
            SizedBox(height: 20),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("password")),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool isRegistered = await ApiService()
              .registerUser(username.text.trim(), password.text.trim());
          if (isRegistered) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
                (route) => false);
          }
        },
      ),
    );
  }
}
