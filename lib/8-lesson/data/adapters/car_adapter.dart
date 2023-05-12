import 'package:hive/hive.dart';
import 'package:state_managements/8-lesson/data/models/car_model.dart';

class CarAdapter extends TypeAdapter<CarModel> {
  @override
  final int typeId = 0;

  @override
  CarModel read(BinaryReader reader) {
    final name = reader.read() as String;
    final brand = reader.read() as String;
    final price = reader.read() as num;

    return CarModel(name: name, brand: brand, price: price);
  }

  @override
  void write(BinaryWriter writer, CarModel obj) {
    writer.write(obj.name);
    writer.write(obj.brand);
    writer.write(obj.price);
  }
}