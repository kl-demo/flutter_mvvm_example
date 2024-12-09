import 'package:flutter/material.dart';
import '../counter/CounterView.dart';
import 'AppNavigator.dart';

class AppNavigatorImpl extends AppNavigator {
  @override
  void navigateTo(BuildContext context, Screen screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => _getView(screen)),
    );
  }

  Widget _getView(Screen screen) {
    return switch (screen) {
      Counter() => const CounterView(),
    };
  }

  @override
  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
