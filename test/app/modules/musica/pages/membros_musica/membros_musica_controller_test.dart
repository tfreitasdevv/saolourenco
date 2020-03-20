import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:paroquia_sao_lourenco/app/modules/musica/pages/membros_musica/membros_musica_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/musica_module.dart';

void main() {
  initModule(MusicaModule());
  MembrosMusicaController membrosmusica;

  setUp(() {
    membrosmusica = MusicaModule.to.get<MembrosMusicaController>();
  });

  group('MembrosMusicaController Test', () {
    test("First Test", () {
      expect(membrosmusica, isInstanceOf<MembrosMusicaController>());
    });

    test("Set Value", () {
      expect(membrosmusica.value, equals(0));
      membrosmusica.increment();
      expect(membrosmusica.value, equals(1));
    });
  });
}
