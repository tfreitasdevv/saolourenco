import 'package:paroquia_sao_lourenco/app/modules/batismo/batismo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/batismo/batismo_page.dart';

class BatismoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BatismoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => BatismoPage()),
      ];

  static Inject get to => Inject<BatismoModule>.of();
}
