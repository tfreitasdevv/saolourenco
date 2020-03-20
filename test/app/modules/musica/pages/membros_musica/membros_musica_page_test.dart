import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:paroquia_sao_lourenco/app/modules/musica/pages/membros_musica/membros_musica_page.dart';

main() {
  testWidgets('MembrosMusicaPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(MembrosMusicaPage(title: 'MembrosMusica')));
    final titleFinder = find.text('MembrosMusica');
    expect(titleFinder, findsOneWidget);
  });
}
