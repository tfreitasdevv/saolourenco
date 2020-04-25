import 'package:paroquia_sao_lourenco/app/modules/nascituro/nascituro_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/nascituro/nascituro_page.dart';

class NascituroModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NascituroController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => NascituroPage()),
      ];

  static Inject get to => Inject<NascituroModule>.of();
}
