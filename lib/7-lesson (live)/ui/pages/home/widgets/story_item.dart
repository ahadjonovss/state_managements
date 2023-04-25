import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>DirectPage()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, right: 14),
        padding: const EdgeInsets.only(left: 4),
        height: 94,
        width: 76,
        child: Column(
          children: [
            Container(
              padding:const  EdgeInsets.all(3),
              height: 68,
              width: 68,
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Container(
                  height: 60,
                  width: 60,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.black,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        image: DecorationImage(
                          image: NetworkImage("https://source.unsplash.com/random"),
                          fit: BoxFit.cover,
                        )),
                  )),
            ),
            const SizedBox(height: 4,),
            Center(
                child: Text(
                  "ahadjonovss",
                  style:  TextStyle(fontWeight: FontWeight.w400, fontSize: 12,color: Get.theme.accentColor),
                ))
          ],
        ),
      ),
    );
  }
}
