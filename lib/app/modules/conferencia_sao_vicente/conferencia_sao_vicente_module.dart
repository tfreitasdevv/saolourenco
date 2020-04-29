import 'package:paroquia_sao_lourenco/app/modules/conferencia_sao_vicente/conferencia_sao_vicente_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/conferencia_sao_vicente/conferencia_sao_vicente_page.dart';

class ConferenciaSaoVicenteModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ConferenciaSaoVicenteController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ConferenciaSaoVicentePage()),
      ];

  static Inject get to => Inject<ConferenciaSaoVicenteModule>.of();
}
