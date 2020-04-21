import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:paroquia_sao_lourenco/app/modules/grupo_de_oracao/grupo_de_oracao_page.dart';

main() {
  testWidgets('GrupoDeOracaoPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(GrupoDeOracaoPage(title: 'GrupoDeOracao')));
    final titleFinder = find.text('GrupoDeOracao');
    expect(titleFinder, findsOneWidget);
  });
}
