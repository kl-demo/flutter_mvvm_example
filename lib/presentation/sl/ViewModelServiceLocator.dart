import '../../domain/sl/ManagerServiceLocator.dart';
import '../counter/CounterViewModel.dart';

class ViewModelServiceLocator {
  static CounterViewModel getCounterViewModel() {
    return CounterViewModel(ManagerServiceLocator.getCounterManager());
  }
}
