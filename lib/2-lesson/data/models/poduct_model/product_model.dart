import 'package:state_managements/2-lesson/data/models/poduct_model/rating_model.dart';

class ProductModel {
  int id;
  String title;
  num price;
  String description;
  String category;
  String image;
  RatingModel rating;

  ProductModel(
      {required this.title,
        required this.rating,
      required this.image,
      required this.category,
      required this.description,
      required this.id,
      required this.price});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json["title"]??"",
      image: json["image"]??"",
      category: json["category"]??"",
      description: json["description"]??"",
      id: json["id"]??0,
      price: json["price"]??0,
      rating: RatingModel.fromJson(json["rating"]??{}),
    );
  }
}
