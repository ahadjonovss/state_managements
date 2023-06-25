import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:state_managements/9-lesson/service/open_api_client.dart';
import 'package:state_managements/static_data.dart';

class ApiService extends ApiClient {
  registerUser(String username, String password) async {
    try {
      Response response = await dio
          .post(registerUrl, data: {"name": username, "password": password});
      if (response.statusCode == 201) {
        var auth = Hive.box('auth');
        auth.put("token", response.data["access_token"]);
        return true;
      } else {
       return false;
      }
    } catch (e) {
      print("error bo'ldi");
      print(e.toString());
    }
  }
}
