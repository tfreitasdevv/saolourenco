import 'package:paroquia_sao_lourenco/app/modules/grupo_de_oracao/grupo_de_oracao_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/grupo_de_oracao/grupo_de_oracao_page.dart';

class GrupoDeOracaoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GrupoDeOracaoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => GrupoDeOracaoPage()),
      ];

  static Inject get to => Inject<GrupoDeOracaoModule>.of();
}
