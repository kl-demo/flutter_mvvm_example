import 'package:flutter/material.dart';
import '../domain/Counter.dart';

class CounterViewModel extends ChangeNotifier {
  final Counter _counter;
  int _numberOfClick = 0;
  bool _canClick = false;

  CounterViewModel(this._counter) {
    _update();
  }

  void _update() {
    _counter.getNumberOfClicks().then((numberOfClick) {
      _numberOfClick = numberOfClick;
      _canClick = true;
      notifyListeners();
    }).catchError((error) {
      _canClick = true;
      notifyListeners();
    });
  }

  int get numberOfClicks => _numberOfClick;

  bool get canClick => _canClick;

  void incrementNumberOfClicks() {
    _canClick = false;
    notifyListeners();
    _counter.incrementNumberOfClicks().then((_) => _update());
  }
}
