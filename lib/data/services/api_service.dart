import 'dart:convert';
import 'package:http/http.dart';
import '../models/user_data.dart';
import 'package:http/http.dart' as https;

class ApiService{
  static Future<List<UserData>> getUserData() async{
    try{
      Response response = await https.get(Uri.parse("https://banking-api.free.mockoapp.net/user_cards"));
      if(response.statusCode==200){

        List json=jsonDecode(response.body) as List;
        List<UserData> userData = json.map((e) => UserData.fromJson(e)).toList();
        print(response.body);
        return userData;
      }else{
        throw Exception();
      }
    }catch(e){
      print(e.toString());
      throw Exception();
    }
  }
}

