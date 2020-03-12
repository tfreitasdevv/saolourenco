import 'package:paroquia_sao_lourenco/app/modules/avisos/avisos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/avisos/avisos_page.dart';

class AvisosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AvisosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => AvisosPage()),
      ];

  static Inject get to => Inject<AvisosModule>.of();
}
