import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/provider/counter_view_model.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider Counter"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text("Sen shuncha marta FABni bosding"),
            Text("${context.watch<CounterViewModel>().count}",style: TextStyle(fontSize: 28),),
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
