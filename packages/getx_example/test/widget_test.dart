import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:getx_example/main.dart';

void main() {
  testWidgets('Getx Test', (WidgetTester tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(MyApp());
      await tester.pump();

      var column = tester.widget<Column>(find.byType(Column));
      expect(column.children.length, 0);
      await Future.delayed(const Duration(seconds: 1));
      await tester.pump();
      column = tester.widget<Column>(find.byType(Column));
      expect(column.children.length, 3);

      await tester.tap(find.byIcon(Icons.close));
      await Future.delayed(const Duration(seconds: 1));
      await tester.pump();

      column = tester.widget<Column>(find.byType(Column));
      expect(column.children.length, 4);
    });
  });
}
