import 'package:flutter_test/flutter_test.dart';

import 'package:show_date_picker/main.dart';

void main() {
  testWidgets('Change date by DatePicker', (WidgetTester tester) async {
    DateTime date = DateTime.now();

    await tester.pumpWidget(const MyApp());

    final year = date.year.toString();
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');

    expect(find.text('$year-$month-$day'), findsOneWidget);

    // Press cancel test
    await tester.tap(find.text('$year-$month-$day'));
    await tester.pump();
    await tester.tap(find.text('キャンセル')); // Cancel
    await tester.pump();
    expect(find.text('$year-$month-$day'), findsOneWidget);
    expect(find.text('キャンセル'), findsNothing);

    // Change date
    await tester.tap(find.text('$year-$month-$day'));
    await tester.pump();
    await tester.tap(find.text('15'));
    await tester.tap(find.text('OK'));
    await tester.pump();
    expect(find.text("$year-$month-15"), findsOneWidget);

    await tester.tap(find.text('$year-$month-15'));
    await tester.pump();
    await tester.tap(find.text('1'));
    await tester.tap(find.text('OK'));
    await tester.pump();
    expect(find.text("$year-$month-01"), findsOneWidget);
  });
}
