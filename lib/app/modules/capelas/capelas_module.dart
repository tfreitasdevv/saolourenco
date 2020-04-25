import 'package:paroquia_sao_lourenco/app/modules/capelas/capelas_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/capelas/capelas_page.dart';

class CapelasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CapelasController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CapelasPage()),
      ];

  static Inject get to => Inject<CapelasModule>.of();
}
