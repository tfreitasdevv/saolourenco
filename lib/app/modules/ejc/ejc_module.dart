import 'package:paroquia_sao_lourenco/app/modules/ejc/ejc_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/ejc/ejc_page.dart';

class EjcModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EjcController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => EjcPage()),
      ];

  static Inject get to => Inject<EjcModule>.of();
}
