import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme =
      ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue));

  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
  ));
}
