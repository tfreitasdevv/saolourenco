import 'package:paroquia_sao_lourenco/app/modules/cor/cor_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/cor/cor_page.dart';

class CorModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CorController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CorPage()),
      ];

  static Inject get to => Inject<CorModule>.of();
}
