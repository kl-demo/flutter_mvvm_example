import '../counter/CounterDataSource.dart';
import '../counter/CounterDataSourceImpl.dart';

class DataServiceLocator {
  static CounterDataSource getCounterDataSource() {
    return CounterDataSourceImpl();
  }
}
