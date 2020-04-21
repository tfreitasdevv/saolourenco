import 'package:paroquia_sao_lourenco/app/modules/crisma/crisma_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/crisma/crisma_page.dart';

class CrismaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CrismaController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CrismaPage()),
      ];

  static Inject get to => Inject<CrismaModule>.of();
}
