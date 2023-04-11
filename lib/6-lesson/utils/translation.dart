import 'package:get/get_navigation/src/root/internacionalization.dart';

class Messages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'uz_UZ':{
      "hello":"Assalomu alaykum @someone",
      "bye":"@someone Xayr salomat bo'ling",
      "name":"Ism"
    },
    "en_EN":{
      "hello":"Hello @someone",
      "bye":"Bye @someone",
      "name":"Name"
    }

  };

}