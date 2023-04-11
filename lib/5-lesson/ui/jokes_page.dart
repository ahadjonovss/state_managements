import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managements/5-lesson/controller/jokes_controller.dart';

class JokesPage extends StatelessWidget {
  const JokesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    JokesController controller = Get.put(JokesController());
    return Scaffold(
      appBar: AppBar(title: const Text("Jokes Page"),),
      body: Obx(
        () {
          if(controller.isLoading.value){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return  ListView.builder(
                itemCount: controller.jokes!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                    title: Text(controller.jokes![index].setup),
                  subtitle: Text(controller.jokes![index].punchline),
                ));
          }

        },
      ),

    );
  }
}
