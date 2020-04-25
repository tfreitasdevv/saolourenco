import 'package:paroquia_sao_lourenco/app/modules/coroinhas/coroinhas_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/coroinhas/coroinhas_page.dart';

class CoroinhasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CoroinhasController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CoroinhasPage()),
      ];

  static Inject get to => Inject<CoroinhasModule>.of();
}
