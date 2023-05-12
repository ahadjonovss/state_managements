import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:state_managements/8-lesson/data/model/car_model.dart';

class HiveSecondExampple extends StatefulWidget {
   HiveSecondExampple({Key? key}) : super(key: key);

  @override
  State<HiveSecondExampple> createState() => _HiveSecondExamppleState();
}

class _HiveSecondExamppleState extends State<HiveSecondExampple> {
  TextEditingController name = TextEditingController();

  TextEditingController brand = TextEditingController();

  TextEditingController price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var gmShowRoom = Hive.box("gm");
    return Scaffold(
      appBar: AppBar(title: Text("Hive Second Example"),),
      body: Container(
        height: 900,
        width: 400,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 100,
                child: TextField(
                  controller: name,
                  decoration: const InputDecoration(
                      label:Text("Name"),
                      border: OutlineInputBorder()
                  ),
                )),
            SizedBox(height: 100,
                child: TextField(
                  controller: brand,
                  decoration: const InputDecoration(
                      label:Text("Brand"),
                      border: OutlineInputBorder()
                  ),
                )),
            SizedBox(height: 100,
                child: TextField(
                  controller: price,
                  decoration: const InputDecoration(
                    label:Text("Price"),
                      border: OutlineInputBorder()
                  ),
                )),
            SizedBox(height: 100,),
            Text("Yozilgan ma'lumotlar"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: gmShowRoom.values.length,
              itemBuilder: (context, index) {
                List<Car> data = gmShowRoom.values.toList().cast();
                return ListTile(
                  title: Text(data[index].name,style: TextStyle(fontWeight: FontWeight.w600),),
                  subtitle: Text("${data[index].price}USD"),

                );
              },)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          gmShowRoom.add(Car(name: name.text, brand: brand.text, price: int.parse(price.text.trim())));
          name.clear();
          brand.clear();
          price.clear();
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
