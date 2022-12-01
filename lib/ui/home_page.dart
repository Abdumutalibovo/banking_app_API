import 'package:banking_app/view_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/sample_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home screen",
        ),
      ),
      body: Center(
        child: Consumer<UserModel>(
          builder: (context, counter, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              counter.userData == null
                  ? Text("UserData kelmadi",style: TextStyle(fontSize: 30),)
                  : Text(counter.userData!.bankName.toString(),style: TextStyle(fontSize: 30),),
              counter.isLoading
                  ? CircularProgressIndicator()
                  : const SizedBox(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var counter = context.read<UserModel>();
          counter.fetUserData();
        },
        child: Icon(Icons.download),
      ),
    );
  }
}
