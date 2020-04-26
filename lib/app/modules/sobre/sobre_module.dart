import 'package:paroquia_sao_lourenco/app/modules/sobre/sobre_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/sobre/sobre_page.dart';

class SobreModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SobreController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SobrePage()),
      ];

  static Inject get to => Inject<SobreModule>.of();
}
