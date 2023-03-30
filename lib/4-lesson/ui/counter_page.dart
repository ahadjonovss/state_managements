import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_managements/4-lesson/controller/counter_controller.dart';
import 'package:state_managements/4-lesson/ui/first.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: Text("GetX Counter Page"),),
      body: Center(
        child: Column(
          children:  [
            const SizedBox(height: 100,),
            Obx(() => Text(controller.count.toString(),style: const  TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: () => controller.decrement(), child: const Text("Decrement")),
                TextButton(onPressed: () => controller.increment(), child:const  Text("Increment")),
              ],
            ),
            IconButton(onPressed: () => Get.to(FirstPage()), icon: Icon(Icons.next_plan))
          ],
        ),
      ),

    );
  }
}
