import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:state_managements/8-lesson/data/models/car_model.dart';

class HiveSecondExample extends StatefulWidget {
   HiveSecondExample({Key? key}) : super(key: key);

  @override
  State<HiveSecondExample> createState() => _HiveSecondExampleState();
}

class _HiveSecondExampleState extends State<HiveSecondExample> {
  TextEditingController name = TextEditingController();

  TextEditingController brand = TextEditingController();

  TextEditingController price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var gmShowRoom = Hive.box('gmShowRoom');
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Hive Second Example"),
        actions: [
          IconButton(onPressed: () {
            // gmShowRoom.deleteFromDisk();
            // setState(() {
            //
            // });

          }, icon: Icon(Icons.delete))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 440,
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                  label: Text("Name"),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 440,
              child: TextField(
                controller: brand,
                decoration: const InputDecoration(
                    label: Text("Brand"),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 440,
              child: TextField(
                controller: price,
                decoration: const InputDecoration(
                    label: Text("Price"),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            const SizedBox(height: 100,),
            ListView.builder(
              shrinkWrap: true,
              itemCount: gmShowRoom.values.length,
              itemBuilder:  (context, index) {
                List<CarModel> cars = gmShowRoom.values.toList().cast();
                return ListTile(
                  title: Text(cars[index].name),
                  subtitle: Text(cars[index].price.toString()),

                );
              },)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          gmShowRoom.add(CarModel(price: int.parse(price.text.trim()), brand: brand.text, name: name.text));
          name.clear();
          brand.clear();
          price.clear();

          setState(() {

          });



        },
        child: Icon(Icons.add),
      ),
    );
  }
}
