import '../navigator/AppNavigator.dart';
import '../navigator/AppNavigatorImpl.dart';

class NavigatorModule {
  static AppNavigator provideAppNavigator() {
    return AppNavigatorImpl();
  }
}
