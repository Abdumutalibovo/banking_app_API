import 'package:banking_app/view_model/sample_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample screen",),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Son qiymati: ',style: TextStyle(fontSize: 30)),
            Consumer<SampleModel>(
                builder: (context,counter,child)=>Text('${counter.myCouner}',style: TextStyle(fontSize: 30))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          var counter=context.read<SampleModel>();
          counter.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
