import 'package:state_managements/data/models/poduct_model/product_model.dart';
import 'package:state_managements/service/api_servcie/api_service.dart';

class ProductsRepository{
  Future<List<ProductModel>> getAllProducts() async => await ApiService().getAllProducts();

  Future<ProductModel> getSingleProduct(int id) async => await ApiService().getSingleProduct(id);
}