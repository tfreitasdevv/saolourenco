import 'package:paroquia_sao_lourenco/app/modules/familiar/familiar_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/familiar/familiar_page.dart';

class FamiliarModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FamiliarController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => FamiliarPage()),
      ];

  static Inject get to => Inject<FamiliarModule>.of();
}
