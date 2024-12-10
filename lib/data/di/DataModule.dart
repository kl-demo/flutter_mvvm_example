import '../counter/CounterDataSource.dart';
import '../counter/CounterDataSourceImpl.dart';

class DataModule {
  static CounterDataSource provideCounterDataSource() {
    return CounterDataSourceImpl();
  }
}
