import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:paroquia_sao_lourenco/app/modules/musica/musica_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/musica_module.dart';

void main() {
  initModule(MusicaModule());
  MusicaController musica;

  setUp(() {
    musica = MusicaModule.to.get<MusicaController>();
  });

  group('MusicaController Test', () {
    test("First Test", () {
      expect(musica, isInstanceOf<MusicaController>());
    });

    test("Set Value", () {
      expect(musica.value, equals(0));
      musica.increment();
      expect(musica.value, equals(1));
    });
  });
}
