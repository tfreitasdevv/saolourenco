import 'package:paroquia_sao_lourenco/app/modules/acolitos/acolitos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/acolitos/acolitos_page.dart';

class AcolitosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AcolitosController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AcolitosPage()),
      ];

  static Inject get to => Inject<AcolitosModule>.of();
}
