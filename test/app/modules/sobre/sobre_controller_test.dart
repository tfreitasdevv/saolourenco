import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:paroquia_sao_lourenco/app/modules/sobre/sobre_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/sobre/sobre_module.dart';

void main() {
  initModule(SobreModule());
  SobreController sobre;

  setUp(() {
    sobre = SobreModule.to.get<SobreController>();
  });

  group('SobreController Test', () {
    test("First Test", () {
      expect(sobre, isInstanceOf<SobreController>());
    });

    test("Set Value", () {
      expect(sobre.value, equals(0));
      sobre.increment();
      expect(sobre.value, equals(1));
    });
  });
}
