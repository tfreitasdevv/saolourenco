import 'package:paroquia_sao_lourenco/app/modules/catequese/catequese_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/catequese/catequese_page.dart';

class CatequeseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CatequeseController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CatequesePage()),
      ];

  static Inject get to => Inject<CatequeseModule>.of();
}
