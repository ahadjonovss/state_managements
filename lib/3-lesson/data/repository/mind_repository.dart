import 'package:state_managements/3-lesson/data/model/mind_model.dart';
import 'package:state_managements/3-lesson/service/local_db_servcie.dart';

class MindRepository{
  LocalDatabase? db;

  MindRepository({required this.db});

  void addMind(MindModel mind) async => await db!.addMind(mind);

  Future<List<MindModel>> readMind() async{
    var result = await db!.getMinds();
    return result.map((e) => MindModel.fromJson(e)).toList();


  }
}