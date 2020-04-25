import 'package:paroquia_sao_lourenco/app/modules/mej/mej_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/mej/mej_page.dart';

class MejModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MejController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MejPage()),
      ];

  static Inject get to => Inject<MejModule>.of();
}
