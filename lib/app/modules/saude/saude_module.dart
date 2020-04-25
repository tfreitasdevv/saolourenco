import 'package:paroquia_sao_lourenco/app/modules/saude/saude_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/saude/saude_page.dart';

class SaudeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SaudeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SaudePage()),
      ];

  static Inject get to => Inject<SaudeModule>.of();
}
