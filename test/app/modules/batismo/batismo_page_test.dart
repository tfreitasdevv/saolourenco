import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:paroquia_sao_lourenco/app/modules/batismo/batismo_page.dart';

main() {
  testWidgets('BatismoPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(BatismoPage(title: 'Batismo')));
    final titleFinder = find.text('Batismo');
    expect(titleFinder, findsOneWidget);
  });
}
