import 'package:dio/dio.dart';
import 'package:state_managements/2-lesson/data/models/poduct_model/product_model.dart';

class ApiService {
  Future getAllProducts() async {
    Dio dio = Dio();
    print("Response ketdi");
    Response response = await dio.get("https://fakestoreapi.com/products");
    if (response.statusCode == 200) {
      print("Data keldi");
      List products =
          response.data.map((e) => ProductModel.fromJson(e)).toList();
      return products;
    }
  }
}
