import 'package:flutter/material.dart';
import '../di/ViewModelModule.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var counterViewModel = ViewModelModule.provideCounterViewModel();

    return ListenableBuilder(
        listenable: counterViewModel,
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
                  Visibility(
                      visible: !counterViewModel.counterViewState.isLoading,
                      child: Text(
                          '${counterViewModel.counterViewState.numberOfClicks}',
                          style: Theme.of(context).textTheme.headlineMedium)),
                  Visibility(
                      visible: counterViewModel.counterViewState.isLoading,
                      child: const CircularProgressIndicator()),
                  Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ElevatedButton(
                          onPressed: !counterViewModel
                                  .counterViewState.isLoading
                              ? () => counterViewModel.incrementNumberOfClicks()
                              : null,
                          child: const Text('Increment'))),
                ],
              )));
        });
  }
}
