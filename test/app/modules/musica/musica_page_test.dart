import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:paroquia_sao_lourenco/app/modules/musica/musica_page.dart';

main() {
  testWidgets('MusicaPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(MusicaPage(title: 'Musica')));
    final titleFinder = find.text('Musica');
    expect(titleFinder, findsOneWidget);
  });
}
