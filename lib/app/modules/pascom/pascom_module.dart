import 'package:paroquia_sao_lourenco/app/modules/pascom/pascom_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/pascom/pascom_page.dart';

class PascomModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PascomController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PascomPage()),
      ];

  static Inject get to => Inject<PascomModule>.of();
}
