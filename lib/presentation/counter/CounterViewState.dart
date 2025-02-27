class CounterViewState {
  final int numberOfClicks;
  final bool isLoading;

  CounterViewState({required this.numberOfClicks, required this.isLoading});

  CounterViewState copyWith({int? numberOfClicks, bool? isLoading}) =>
      CounterViewState(
          numberOfClicks: numberOfClicks ?? this.numberOfClicks,
          isLoading: isLoading ?? this.isLoading);
}
