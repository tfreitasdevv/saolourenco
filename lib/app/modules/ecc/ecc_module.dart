import 'package:paroquia_sao_lourenco/app/modules/ecc/ecc_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/ecc/ecc_page.dart';

class EccModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EccController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => EccPage()),
      ];

  static Inject get to => Inject<EccModule>.of();
}
