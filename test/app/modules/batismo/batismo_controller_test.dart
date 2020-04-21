import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:paroquia_sao_lourenco/app/modules/batismo/batismo_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/batismo/batismo_module.dart';

void main() {
  initModule(BatismoModule());
  BatismoController batismo;

  setUp(() {
    batismo = BatismoModule.to.get<BatismoController>();
  });

  group('BatismoController Test', () {
    test("First Test", () {
      expect(batismo, isInstanceOf<BatismoController>());
    });

    test("Set Value", () {
      expect(batismo.value, equals(0));
      batismo.increment();
      expect(batismo.value, equals(1));
    });
  });
}
