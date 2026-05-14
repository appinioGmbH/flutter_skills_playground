import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../view_models/counter_view_model.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key, required this.viewModel});

  final CounterViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Flutter Demo Home Page'),
            actions: [
              IconButton(
                icon: const Icon(Icons.info_outline),
                tooltip: 'Details',
                onPressed: () => context.push('/details'),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  '${viewModel.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 32),
                OutlinedButton.icon(
                  onPressed: () => context.push('/details'),
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Go to Details'),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            key: const ValueKey('increment'),
            onPressed: viewModel.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
