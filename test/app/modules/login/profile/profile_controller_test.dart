import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:paroquia_sao_lourenco/app/modules/login/profile/profile_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/login/login_module.dart';

void main() {
  initModule(LoginModule());
  ProfileController profile;

  setUp(() {
    profile = LoginModule.to.get<ProfileController>();
  });

  group('ProfileController Test', () {
    test("First Test", () {
      expect(profile, isInstanceOf<ProfileController>());
    });

    test("Set Value", () {
      expect(profile.value, equals(0));
      profile.increment();
      expect(profile.value, equals(1));
    });
  });
}
