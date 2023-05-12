import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive/hive.dart';
import 'package:state_managements/8-lesson/ui/hive_second_example.dart';

class HiveFirstExample extends StatefulWidget {
  HiveFirstExample({Key? key}) : super(key: key);

  @override
  State<HiveFirstExample> createState() => _HiveFirstExampleState();
}

class _HiveFirstExampleState extends State<HiveFirstExample> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var box = Hive.box('myBox');
    return Scaffold(
      appBar: AppBar(title: const Text("Hive first example"),),
      body: Container(
        width: 400,
        height: 900,
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(height: 100,
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder()
                  ),
                )),
            IconButton(onPressed: () {
              box.add(controller.text);
              setState(() {

              });
            }, icon: Icon(Icons.add)),
            SizedBox(height: 100,),
            Text("Yozilgan ma'lumotlar"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: box.values.length,
              itemBuilder: (context, index) {
                List data = box.values.toList();
              return Text(data[index],style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),);
            },)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HiveSecondExampple(),));
        },
      ),
    );
  }
}
