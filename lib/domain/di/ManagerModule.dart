import '../../data/di/DataModule.dart';
import '../counter/CounterManager.dart';
import '../counter/CounterManagerImpl.dart';

class ManagerModule {
  static CounterManager provideCounterManager() {
    return CounterManagerImpl(DataModule.provideCounterDataSource());
  }
}
