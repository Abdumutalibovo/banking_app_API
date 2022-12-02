import 'package:banking_app/data/services/api_service.dart';
import '../models/user_data.dart';

class UserRepository{

  UserRepository({required ApiService apiService}){
    _apiService=apiService;
  }

  late ApiService _apiService;


  Future<List<UserData>> getUser(){
    return ApiService.getUserData();
}
}