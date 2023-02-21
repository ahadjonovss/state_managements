import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/provider/1-lesson%20counter/counter_view_model.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Provider state manageentda ushbu build funksiyasi qayta chaqirildi");
    return Scaffold(
      appBar: AppBar(title: const  Text("Provider Counter"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text("Sen shuncha marta FABni bosding"),
            Text("${context.watch<CounterViewModel>().count}",style: const TextStyle(fontSize: 28),),
            IconButton(onPressed: (){
              context.read<CounterViewModel>().decrement();
            }, icon: Icon(Icons.map))
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CounterViewModel>().increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        )
    );
  }
}
