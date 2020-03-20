import 'package:paroquia_sao_lourenco/app/modules/musica/musica_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/musica_page.dart';

class MusicaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MusicaController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MusicaPage()),
      ];

  static Inject get to => Inject<MusicaModule>.of();
}
