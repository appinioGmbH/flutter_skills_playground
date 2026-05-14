import 'package:flutter/material.dart';
import '../features/counter/view_models/counter_view_model.dart';
import '../features/counter/views/counter_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CounterView(viewModel: CounterViewModel()),
    );
  }
}
