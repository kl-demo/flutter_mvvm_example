import '../../data/counter/CounterRepository.dart';
import '../../data/counter/CounterModel.dart';
import 'CounterManager.dart';

class CounterManagerImpl implements CounterManager {
  final CounterRepository _counterRepository;

  CounterManagerImpl(this._counterRepository);

  @override
  Future<void> incrementNumberOfClicks() async {
    _counterRepository.save(
        CounterModel((await _counterRepository.fetch()).numberOfClicks + 1));
  }

  @override
  Future<int> getNumberOfClicks() async {
    return (await _counterRepository.fetch()).numberOfClicks;
  }
}
