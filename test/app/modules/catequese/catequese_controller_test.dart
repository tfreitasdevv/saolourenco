import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:paroquia_sao_lourenco/app/modules/catequese/catequese_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/catequese/catequese_module.dart';

void main() {
  initModule(CatequeseModule());
  CatequeseController catequese;

  setUp(() {
    catequese = CatequeseModule.to.get<CatequeseController>();
  });

  group('CatequeseController Test', () {
    test("First Test", () {
      expect(catequese, isInstanceOf<CatequeseController>());
    });

    test("Set Value", () {
      expect(catequese.value, equals(0));
      catequese.increment();
      expect(catequese.value, equals(1));
    });
  });
}
