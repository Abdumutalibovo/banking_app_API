import 'package:banking_app/data/repositories/user_repository.dart';
import 'package:banking_app/ui/home_page.dart';
import 'package:banking_app/view_model/sample_model.dart';
import 'package:banking_app/view_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserModel(userRepository: UserRepository()),
        ),
        ChangeNotifierProvider(create: (context) => SampleModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking App',
      home: HomeScreen(),
    );
  }
}
