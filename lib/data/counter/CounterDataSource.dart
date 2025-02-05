abstract class CounterDataSource {
  Future<void> setNumberOfClicks(int numberOfClicks);

  Future<int> getNumberOfClicks();
}
