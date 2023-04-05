import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:refreshindicator/main.dart';

void main() {
  testWidgets('Pull to refresh', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('There is not data.'), findsOneWidget);
    expect(find.text('Apple'), findsNothing);

    await tester.fling(
      find.text('There is not data.'),
      const Offset(0.0, 300.0),
      1000.0,
    );
    await tester.pump();

    expect(
      tester.getSemantics(find.byType(RefreshProgressIndicator)),
      matchesSemantics(label: 'Refresh'),
    );

    // finish the scroll animation
    await tester.pump(const Duration(seconds: 1));
    // finish the indicator settle animation
    await tester.pump(const Duration(seconds: 1));
    // finish the indicator hide animation
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('There is not data.'), findsNothing);
    expect(find.text('Apple'), findsOneWidget);
  });
}
