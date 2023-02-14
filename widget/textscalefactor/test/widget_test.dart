import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:textscalefactor/main.dart';

void main() {
  testWidgets('textScaleFactor is 1.0', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final context = tester.element(find.byType(MyHomePage));
    expect(MediaQuery.of(context).textScaleFactor, 1.0);

    // For GetX
    // final context = tester.element(find.byType(GetMaterialApp));
    // expect(context.textScaleFactor, 1.0);
  });
}
