import 'package:paroquia_sao_lourenco/app/modules/promocao_humana/promocao_humana_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/promocao_humana/promocao_humana_page.dart';

class PromocaoHumanaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PromocaoHumanaController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PromocaoHumanaPage()),
      ];

  static Inject get to => Inject<PromocaoHumanaModule>.of();
}
