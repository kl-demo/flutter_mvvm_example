import 'package:flutter/material.dart';
import '../di/DI.dart';
import 'CounterViewModel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    var counterViewModel = CounterViewModel(DI.getCounter());

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
                Text(
                  counterViewModel.canClick
                      ? 'You have pushed the button this many times:'
                      : 'Awaiting the data',
                ),
                Visibility(
                    visible: counterViewModel.canClick ||
                        counterViewModel.numberOfClicks > 0,
                    child: Text('${counterViewModel.numberOfClicks}',
                        style: Theme.of(context).textTheme.headlineMedium))
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: counterViewModel.canClick
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
