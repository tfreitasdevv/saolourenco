import 'package:paroquia_sao_lourenco/app/modules/dizimo/dizimo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/dizimo/dizimo_page.dart';

class DizimoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DizimoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => DizimoPage()),
      ];

  static Inject get to => Inject<DizimoModule>.of();
}
