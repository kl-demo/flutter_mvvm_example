import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/presentation/sl/NavigatorServiceLocator.dart';
import 'package:flutter_mvvm_example/presentation/theme/AppTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter MVVM example',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: NavigatorServiceLocator.getAppNavigator().homeScreen());
  }
}
