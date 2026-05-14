import 'package:flutter/widgets.dart';
import 'package:flutter_skills_playground/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('MyApp integration', () {
    testWidgets('counter starts at 0 and increments on FAB tap', (tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      expect(find.text('Flutter Demo Home Page'), findsOneWidget);
      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('increment')));
      await tester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);
    });
  });
}
