import 'package:flutter/material.dart';
import '../../data/counter/CounterModel.dart';
import '../../domain/counter/CounterManager.dart';
import 'CounterViewState.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterManager _counterManager;

  CounterViewState _counterViewState =
      CounterViewState(counterModel: CounterModel(0), isLoading: false);

  CounterViewModel(this._counterManager) {
    _update();
  }

  void _update() {
    _counterManager.getNumberOfClicks().then((numberOfClick) {
      _counterViewState = _counterViewState.copyWith(
          counterModel: CounterModel(numberOfClick), isLoading: false);
      notifyListeners();
    }).catchError((error) {
      _counterViewState = _counterViewState.copyWith(isLoading: false);
      notifyListeners();
    });
  }

  CounterViewState get counterViewState => _counterViewState;

  void incrementNumberOfClicks() {
    _counterViewState = _counterViewState.copyWith(isLoading: true);
    notifyListeners();
    _counterManager.incrementNumberOfClicks().then((_) => _update());
  }
}
