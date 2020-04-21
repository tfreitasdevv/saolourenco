import 'package:paroquia_sao_lourenco/app/modules/liturgia/liturgia_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/liturgia/liturgia_page.dart';

class LiturgiaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LiturgiaController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LiturgiaPage()),
      ];

  static Inject get to => Inject<LiturgiaModule>.of();
}
