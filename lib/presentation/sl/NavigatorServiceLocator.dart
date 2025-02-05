import '../navigator/AppNavigator.dart';
import '../navigator/AppNavigatorImpl.dart';

class NavigatorServiceLocator {
  static AppNavigator getAppNavigator() {
    return AppNavigatorImpl();
  }
}
