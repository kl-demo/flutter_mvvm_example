import 'package:flutter/cupertino.dart';

sealed class Screen {}

class ScreenCounter extends Screen {}

abstract class AppNavigator {
  Widget homeScreen();
  void navigateTo(BuildContext context, Screen screen);
  void navigateBack(BuildContext context);
}