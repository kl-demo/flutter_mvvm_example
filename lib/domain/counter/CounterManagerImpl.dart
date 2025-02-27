import '../../data/counter/CounterDataSource.dart';
import 'CounterManager.dart';

class CounterManagerImpl implements CounterManager {
  final CounterDataSource _counterDataSource;

  CounterManagerImpl(this._counterDataSource);

  @override
  Future<void> incrementNumberOfClicks() async {
    _counterDataSource.setNumberOfClicks(await _counterDataSource.getNumberOfClicks() + 1);
  }

  @override
  Future<int> getNumberOfClicks() async {
    return await _counterDataSource.getNumberOfClicks();
  }
}
