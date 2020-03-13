import 'package:paroquia_sao_lourenco/app/modules/pastorais/pastorais_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/pastorais_page.dart';

class PastoraisModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PastoraisController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PastoraisPage()),
      ];

  static Inject get to => Inject<PastoraisModule>.of();
}
