import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:paroquia_sao_lourenco/app/modules/grupo_de_oracao/grupo_de_oracao_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/grupo_de_oracao/grupo_de_oracao_module.dart';

void main() {
  initModule(GrupoDeOracaoModule());
  GrupoDeOracaoController grupodeoracao;

  setUp(() {
    grupodeoracao = GrupoDeOracaoModule.to.get<GrupoDeOracaoController>();
  });

  group('GrupoDeOracaoController Test', () {
    test("First Test", () {
      expect(grupodeoracao, isInstanceOf<GrupoDeOracaoController>());
    });

    test("Set Value", () {
      expect(grupodeoracao.value, equals(0));
      grupodeoracao.increment();
      expect(grupodeoracao.value, equals(1));
    });
  });
}
