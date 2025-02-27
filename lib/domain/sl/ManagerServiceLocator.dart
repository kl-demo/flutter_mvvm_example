import '../../data/sl/DataServiceLocator.dart';
import '../counter/CounterManager.dart';
import '../counter/CounterManagerImpl.dart';

class ManagerServiceLocator {
  static CounterManager getCounterManager() {
    return CounterManagerImpl(DataServiceLocator.getCounterDataSource());
  }
}
