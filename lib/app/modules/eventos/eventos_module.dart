import 'package:paroquia_sao_lourenco/app/modules/eventos/eventos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/eventos/eventos_page.dart';

class EventosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EventosController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => EventosPage()),
      ];

  static Inject get to => Inject<EventosModule>.of();
}
