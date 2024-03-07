import 'package:paroquia_sao_lourenco/app/modules/rua/rua_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/rua/rua_page.dart';

class RuaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RuaController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => RuaPage()),
      ];

  static Inject get to => Inject<RuaModule>.of();
}
