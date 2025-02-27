import 'package:flutter/material.dart';
import '../sl/ViewModelServiceLocator.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = ViewModelServiceLocator.getCounterViewModel();

    return ListenableBuilder(
        listenable: counterViewModel.stateChangeNotifier,
        builder: (context, child) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Flutter MVVM example'),
              ),
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('Number of clicks')),
                  _numberOfClicksChild(counterViewModel),
                  Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ElevatedButton(
                          onPressed: !counterViewModel
                                  .stateChangeNotifier.state.isLoading
                              ? () => counterViewModel.incrementNumberOfClicks()
                              : null,
                          child: const Text('Increment'))),
                ],
              )));
        });
  }

  Widget _numberOfClicksChild(counterViewModel) {
    if (counterViewModel.stateChangeNotifier.state.isLoading) {
      return const CircularProgressIndicator();
    } else {
      return Text(
          '${counterViewModel.stateChangeNotifier.state.numberOfClicks}');
    }
  }
}
