import 'package:hive/hive.dart';
import 'package:state_managements/8-lesson/data/model/car_model.dart';

class CarAdapter extends TypeAdapter<Car> {
  @override
  final int typeId = 0;

  @override
  Car read(BinaryReader reader) {
    final name = reader.read() as String;
    final brand = reader.read() as String;
    final price = reader.read() as int;

    return Car(name: name, brand: brand, price: price);
  }

  @override
  void write(BinaryWriter writer, Car obj) {
    writer.write(obj.name);
    writer.write(obj.brand);
    writer.write(obj.price);
  }
}