import 'package:get/get.dart';
import 'package:state_managements/5-lesson/service/api_service.dart';
import 'package:state_managements/5-lesson/data/model/joke_model.dart';

class JokesController extends GetxController{

  JokesController(){
    getJokes();
  }

  var isLoading = false.obs;
  var jokes = [].obs;


  getJokes() async {
    changeLoading();
    jokes.value = await ApiService().getJokes();
    changeLoading();
  }

  changeLoading(){
    isLoading.value=!isLoading.value;
  }
}