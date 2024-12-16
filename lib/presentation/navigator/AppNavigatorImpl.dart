import 'package:flutter/material.dart';
import '../counter/CounterScreen.dart';
import 'AppNavigator.dart';

class AppNavigatorImpl extends AppNavigator {
  @override
  Widget homeScreen() {
    return const CounterScreen();
  }

  @override
  void navigateTo(BuildContext context, Screen screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => _getWidget(screen)),
    );
  }

  Widget _getWidget(Screen screen) {
    return switch (screen) {
      ScreenCounter() => const CounterScreen(),
    };
  }

  @override
  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
