import 'package:flutter/material.dart';
import '../di/ViewModelModule.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

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
                        '${counterViewModel.counterViewState.counterModel.numberOfClicks}',
                        style: Theme.of(context).textTheme.headlineMedium)),
                Visibility(
                    visible: counterViewModel.counterViewState.isLoading,
                    child: const CircularProgressIndicator())
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: !counterViewModel.counterViewState.isLoading
                ? () => counterViewModel.incrementNumberOfClicks()
                : null,
            tooltip: 'Increment',
            disabledElevation: 3,
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
