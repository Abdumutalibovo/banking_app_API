import 'package:banking_app/data/services/api_service.dart';
import '../models/user_data.dart';

class UserRepository{
  Future<List<UserData>> getUser(){
    return ApiService.getUserData();
}
}