import 'package:hive/hive.dart';

class CarModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(0)
  String brand;
  @HiveField(1)
  num price;

  CarModel({required this.price,required this.brand,required this.name});
}