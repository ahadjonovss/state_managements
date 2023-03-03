import 'package:flutter/cupertino.dart';

import '../service/api_servcie/api_service.dart';

class ProductsViewModel extends ChangeNotifier{

  ProductsViewModel(){
    getAllProducts();
  }

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