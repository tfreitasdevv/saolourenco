import 'package:paroquia_sao_lourenco/app/modules/mae_tres_vezes/mae_tres_vezes_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/mae_tres_vezes/mae_tres_vezes_page.dart';

class MaeTresVezesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MaeTresVezesController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MaeTresVezesPage()),
      ];

  static Inject get to => Inject<MaeTresVezesModule>.of();
}
