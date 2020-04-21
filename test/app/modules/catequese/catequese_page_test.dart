import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:paroquia_sao_lourenco/app/modules/catequese/catequese_page.dart';

main() {
  testWidgets('CatequesePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(CatequesePage(title: 'Catequese')));
    final titleFinder = find.text('Catequese');
    expect(titleFinder, findsOneWidget);
  });
}
