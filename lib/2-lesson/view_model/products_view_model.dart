import 'package:flutter/cupertino.dart';
import 'package:state_managements/2-lesson/data/models/poduct_model/product_model.dart';
import 'package:state_managements/2-lesson/service/api_servcie/api_service.dart';

class ProductsViewModel extends ChangeNotifier{

  List products = [];
  bool isLoading =false;

  void getAllProducts() async {
    print("ZAPROS KETDI");
    changeLoadingState();
    // Future.delayed(Duration(seconds: 100));
    products = await ApiService().getAllProducts();
    changeLoadingState();
    print("ZAPROS KELDI");

  }


  void changeLoadingState(){
    isLoading = !isLoading;
    notifyListeners();
  }


}