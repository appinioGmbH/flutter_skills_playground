import 'package:go_router/go_router.dart';
import '../features/counter/view_models/counter_view_model.dart';
import '../features/counter/views/counter_detail_view.dart';
import '../features/counter/views/counter_view.dart';

final counterViewModel = CounterViewModel();

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'counter',
      builder: (context, state) => CounterView(viewModel: counterViewModel),
      routes: [
        GoRoute(
          path: 'details',
          name: 'counterDetails',
          builder: (context, state) => const CounterDetailView(),
        ),
      ],
    ),
  ],
);
