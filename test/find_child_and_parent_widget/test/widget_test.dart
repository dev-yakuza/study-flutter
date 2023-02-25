import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:find_child_and_parent_widget/main.dart';

void main() {
  testWidgets('Find parent widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final column = tester
        .element(find.text('You have pushed the button this many times:'))
        .findAncestorWidgetOfExactType<Column>();
    expect((column?.children[1] as Text).data, '0');
  });

  testWidgets('Find child widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final icon = find.descendant(
      of: find.byType(Scaffold),
      matching: find.byType(Icon),
    );
    expect(tester.widget<Icon>(icon).icon, Icons.add);
  });
}
