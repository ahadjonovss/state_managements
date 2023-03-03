import 'package:flutter/cupertino.dart';
import 'package:state_managements/2-lesson/data/models/poduct_model/product_model.dart';
import 'package:state_managements/2-lesson/service/api_servcie/api_service.dart';

class ProductViewModel extends ChangeNotifier{
  ProductModel? products;
  bool isLoading =false;

  void getSingleProduct() async {
    changeLoadingState();
    products = await ApiService().getAllProducts();
    changeLoadingState();
  }


  void changeLoadingState(){
    isLoading = !isLoading;
    notifyListeners();
  }
}