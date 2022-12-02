import 'package:banking_app/view_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          builder: (context, counter, child) => counter.isLoading
              ? const CircularProgressIndicator()
              : (counter.userData.isEmpty
                  ? const Text(
                      "Data  Kelmadi",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: counter.userData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black54,
                            ),
                            height: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(counter.userData[index].bankName,style: TextStyle(fontSize: 30,color: Colors.white),),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.white,
                                      child: Image.network(counter.userData[index].iconImage),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )),
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
