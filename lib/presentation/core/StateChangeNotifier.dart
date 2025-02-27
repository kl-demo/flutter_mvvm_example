import 'package:flutter/cupertino.dart';

class StateChangeNotifier<T> extends ChangeNotifier {
  T _state;

  StateChangeNotifier(this._state);

  setState(T state) {
    _state = state;
    notifyListeners();
  }

  T get state => _state;
}
