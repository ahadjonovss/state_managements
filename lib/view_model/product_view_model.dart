import 'package:flutter/cupertino.dart';
import 'package:state_managements/data/models/poduct_model/product_model.dart';
import 'package:state_managements/data/repository/products_repository.dart';

class ProductViewModel extends ChangeNotifier{

  ProductModel? product;
  bool isLoading =false;

  void getSingleProduct(int id) async {
    changeLoadingState();
    product = await ProductsRepository().getSingleProduct(id);
    changeLoadingState();
  }


  void changeLoadingState(){
    isLoading = !isLoading;
    notifyListeners();
  }
}