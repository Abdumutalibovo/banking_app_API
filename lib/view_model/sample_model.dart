import 'package:flutter/foundation.dart';

class SampleModel extends ChangeNotifier{
  int myCouner=0;

  void increment(){
    myCouner++;
    notifyListeners();
  }
}