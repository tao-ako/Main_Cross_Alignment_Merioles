import 'package:alignment_demo_app/app.dart';
import 'package:alignment_demo_app/models/alignment_example.dart';
import 'package:alignment_demo_app/models/alignment_examples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all required values are configured for both layout directions', () {
    expect(mainAxisExamples, hasLength(12));
    expect(crossAxisExamples, hasLength(10));

    for (final direction in DemoDirection.values) {
      expect(
        mainAxisExamples.where((example) => example.direction == direction)
            .map((example) => example.alignment)
            .toSet(),
        MainAxisAlignment.values.toSet(),
      );
      expect(
        crossAxisExamples.where((example) => example.direction == direction)
            .map((example) => example.alignment)
            .toSet(),
        CrossAxisAlignment.values.toSet(),
      );
    }
  });

  testWidgets('shows the surname, sections, and first alignment example', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Merioles - Alignment Demo'), findsOneWidget);
    expect(find.text('MainAxisAlignment'), findsOneWidget);
    expect(find.text('Row / MainAxisAlignment.center'), findsOneWidget);
    expect(find.text('Column / MainAxisAlignment.center'), findsNothing);

    await tester.tap(find.text('Cross Axis'));
    await tester.pumpAndSettle();

    expect(find.text('Merioles - Alignment Demo'), findsOneWidget);
    expect(find.text('CrossAxisAlignment'), findsOneWidget);
    expect(find.text('Row / CrossAxisAlignment.start'), findsOneWidget);
  });
}
