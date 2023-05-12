import 'package:flutter/material.dart';
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
    var vegetablesBox = Hive.box('vegetables');
    return Scaffold(
      appBar: AppBar(title: Text("Hive First example"),),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
             SizedBox(
              height: 100,
              width: 440,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ),
            IconButton(onPressed: () {
             vegetablesBox.add(controller.text);
             setState(() {

             });
            }, icon: Icon(Icons.add)),
            SizedBox(
              height: 100,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: vegetablesBox.values.length,
                itemBuilder:  (context, index) => Text(vegetablesBox.values.toList()[index]),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HiveSecondExample(),));
        },
      ),

    );
  }
}
