import 'package:shared_preferences/shared_preferences.dart';
import 'CounterDataSource.dart';

class CounterDataSourceImpl implements CounterDataSource {
  static const _numberOfClicksKey = 'numberOfClicks';

  @override
  Future<void> setNumberOfClicks(int numberOfClicks) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(_numberOfClicksKey, numberOfClicks);
  }

  @override
  Future<int> getNumberOfClicks() async {
    await Future.delayed(const Duration(seconds: 1)); //simulate a delayed response
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_numberOfClicksKey) ?? 0;
  }
}
