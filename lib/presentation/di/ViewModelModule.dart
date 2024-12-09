import '../../domain/di/ManagerModule.dart';
import '../counter/CounterViewModel.dart';
import '../navigator/AppNavigator.dart';
import '../navigator/AppNavigatorImpl.dart';

class ViewModelModule {
  static CounterViewModel provideCounterViewModel() {
    return CounterViewModel(ManagerModule.provideCounterManager());
  }

  static AppNavigator provideAppNavigator() {
    return AppNavigatorImpl();
  }
}
