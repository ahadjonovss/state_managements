import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/3-lesson/data/model/mind_model.dart';
import 'package:state_managements/3-lesson/service/local_db_servcie.dart';
import 'package:state_managements/3-lesson/ui/all_minds_page.dart';
import 'package:state_managements/3-lesson/view_model/minds_view_model.dart';

class WriteToDbPage extends StatelessWidget {
   WriteToDbPage({Key? key}) : super(key: key);
  TextEditingController mind= TextEditingController();
  TextEditingController author= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Write to Db"),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AllMindsPage(),));

          }, icon: Icon(Icons.read_more))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: mind,
              decoration: InputDecoration(
                label: Text("Quote"),
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 24,),
            TextField(
              controller: author,
              decoration: InputDecoration(
                label: Text("Author"),
                border: OutlineInputBorder()
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          context.read<MindsViewModel>().addMind(MindModel(author: author.text, mind: mind.text));
        },
      ),
    );
  }
}
