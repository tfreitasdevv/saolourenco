import 'package:paroquia_sao_lourenco/app/modules/alfabetizacao/alfabetizacao_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/alfabetizacao/alfabetizacao_page.dart';

class AlfabetizacaoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AlfabetizacaoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AlfabetizacaoPage()),
      ];

  static Inject get to => Inject<AlfabetizacaoModule>.of();
}
