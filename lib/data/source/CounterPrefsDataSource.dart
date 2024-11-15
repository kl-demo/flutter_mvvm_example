import '../entity/CounterModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'CounterDataSource.dart';

class CounterPrefsDataSource implements CounterDataSource {
  static const _numberOfClicksKey = 'numberOfClicks';

  @override
  Future<void> save(CounterModel counterModel) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(_numberOfClicksKey, counterModel.numberOfClicks);
  }

  @override
  Future<CounterModel> fetch() async {
    await Future.delayed(const Duration(seconds: 1)); //simulate a delayed response
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return CounterModel(prefs.getInt(_numberOfClicksKey) ?? 0);
  }
}
