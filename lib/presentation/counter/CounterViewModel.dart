import '../../domain/counter/CounterManager.dart';
import '../core/StateChangeNotifier.dart';
import 'CounterViewState.dart';

class CounterViewModel {
  final CounterManager _counterManager;
  final StateChangeNotifier<CounterViewState> stateChangeNotifier =
      StateChangeNotifier(CounterViewState(numberOfClicks: 0, isLoading: true));

  CounterViewModel(this._counterManager) {
    _getNumberOfClicks();
  }

  void _getNumberOfClicks() {
    _counterManager.getNumberOfClicks().then((numberOfClicks) {
      stateChangeNotifier.setState(stateChangeNotifier.state
          .copyWith(numberOfClicks: numberOfClicks, isLoading: false));
    }).catchError((error) {
      stateChangeNotifier
          .setState(stateChangeNotifier.state.copyWith(isLoading: false));
    });
  }

  void incrementNumberOfClicks() {
    stateChangeNotifier
        .setState(stateChangeNotifier.state.copyWith(isLoading: true));
    _counterManager.incrementNumberOfClicks().then((_) => _getNumberOfClicks());
  }
}
