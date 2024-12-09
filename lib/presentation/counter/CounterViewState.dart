import '../../data/counter/CounterModel.dart';

class CounterViewState {
  final CounterModel counterModel;
  final bool isLoading;

  CounterViewState({required this.counterModel, required this.isLoading});

  CounterViewState copyWith({CounterModel? counterModel, bool? isLoading}) =>
      CounterViewState(
          counterModel: counterModel ?? this.counterModel,
          isLoading: isLoading ?? this.isLoading);
}
