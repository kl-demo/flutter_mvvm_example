
import 'package:flutter/cupertino.dart';

sealed class Screen {}

class Counter extends Screen {}

abstract class AppNavigator {
  void navigateTo(BuildContext context, Screen screen);
  void navigateBack(BuildContext context);
}