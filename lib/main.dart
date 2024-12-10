import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/presentation/di/NavigatorModule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter MVVM example',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: NavigatorModule.provideAppNavigator().homeScreen());
  }
}
