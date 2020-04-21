import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:paroquia_sao_lourenco/app/modules/crisma/crisma_page.dart';

main() {
  testWidgets('CrismaPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CrismaPage(title: 'Crisma')));
    final titleFinder = find.text('Crisma');
    expect(titleFinder, findsOneWidget);
  });
}
