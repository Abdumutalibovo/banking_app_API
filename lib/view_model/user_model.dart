import 'package:banking_app/data/models/user_data.dart';
import 'package:banking_app/data/repositories/user_repository.dart';
import 'package:flutter/foundation.dart';

class UserModel extends ChangeNotifier {

  UserModel({required UserRepository userRepository}) {
    _userRepository = userRepository;
  }

  late UserRepository _userRepository;

  bool isLoading = false;

  List<UserData> userData = [];

  void fetUserData() async {
    isLoading = true;
    notifyListeners();
    userData = await _userRepository.getUser();
    isLoading = false;
    notifyListeners();
  }
}