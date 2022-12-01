import 'package:banking_app/data/models/user_data.dart';
import 'package:banking_app/data/repositories/user_repository.dart';
import 'package:flutter/foundation.dart';

class UserModel extends ChangeNotifier{

  UserModel({required this.userRepository});

  final UserRepository userRepository;

  bool isLoading=false;

  UserData? userData;

  void fetUserData()async{
    isLoading=true;
    notifyListeners();
    List<UserData> userData= await userRepository.getUser();
    userData=userData;
    isLoading=false;
    notifyListeners();
  }
}