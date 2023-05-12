import 'package:hive/hive.dart';

class Car extends HiveObject{
  @HiveField(0)
  String name;
  @HiveField(0)
  String brand;
  @HiveField(1)
  int price;

  Car({required this.name,required this.brand,required this.price});
}