import 'package:paroquia_sao_lourenco/app/modules/horarios/horarios_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/horarios/horarios_page.dart';

class HorariosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HorariosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HorariosPage()),
      ];

  static Inject get to => Inject<HorariosModule>.of();
}
