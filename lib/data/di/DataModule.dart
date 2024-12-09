import '../counter/CounterPrefsDataSource.dart';
import '../counter/CounterRepository.dart';
import '../counter/CounterRepositoryImpl.dart';

class DataModule {
  static CounterRepository provideCounterRepository() {
    return CounterRepositoryImpl(CounterPrefsDataSource());
  }
}
