import 'package:flutter/cupertino.dart';
import 'package:state_managements/3-lesson/data/model/mind_model.dart';
import 'package:state_managements/3-lesson/data/repository/mind_repository.dart';

class MindsViewModel extends ChangeNotifier{
  MindRepository? mindRepository;
  MindsViewModel({required this.mindRepository});


  void addMind(MindModel mind) async{
    await mindRepository!.addMind(mind);
  }

}