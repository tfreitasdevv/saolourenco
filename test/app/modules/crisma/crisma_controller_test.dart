import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:paroquia_sao_lourenco/app/modules/crisma/crisma_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/crisma/crisma_module.dart';

void main() {
  initModule(CrismaModule());
  CrismaController crisma;

  setUp(() {
    crisma = CrismaModule.to.get<CrismaController>();
  });

  group('CrismaController Test', () {
    test("First Test", () {
      expect(crisma, isInstanceOf<CrismaController>());
    });

    test("Set Value", () {
      expect(crisma.value, equals(0));
      crisma.increment();
      expect(crisma.value, equals(1));
    });
  });
}
