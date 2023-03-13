import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:state_managements/3-lesson/data/model/mind_model.dart';
import 'package:state_managements/3-lesson/data/repository/mind_repository.dart';

class MindsViewModel extends ChangeNotifier{
  MindRepository? mindRepository;
  MindsViewModel({required this.mindRepository});

  List<MindModel>? minds;
  bool isLoading = false;


  void addMind(MindModel mind) async{
    mindRepository!.addMind(mind);
  }

  void readMinds() async{
    loadingChanger();
    minds = await mindRepository!.readMind();
    loadingChanger();
  }


  void loadingChanger(){
    isLoading=!isLoading;
    notifyListeners();
  }



}