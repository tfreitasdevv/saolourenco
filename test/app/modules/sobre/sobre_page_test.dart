import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:paroquia_sao_lourenco/app/modules/sobre/sobre_page.dart';

main() {
  testWidgets('SobrePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SobrePage(title: 'Sobre')));
    final titleFinder = find.text('Sobre');
    expect(titleFinder, findsOneWidget);
  });
}
