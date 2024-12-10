import '../../domain/di/ManagerModule.dart';
import '../counter/CounterViewModel.dart';

class ViewModelModule {
  static CounterViewModel provideCounterViewModel() {
    return CounterViewModel(ManagerModule.provideCounterManager());
  }
}
