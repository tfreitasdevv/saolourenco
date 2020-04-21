import 'package:paroquia_sao_lourenco/app/modules/avisos/avisos_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/batismo/batismo_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/catequese/catequese_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/crisma/crisma_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/grupo_de_oracao/grupo_de_oracao_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/home_page.dart';
import 'package:paroquia_sao_lourenco/app/modules/horarios/horarios_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/liturgia/liturgia_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/musica_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/pastorais_module.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/avisos', module: AvisosModule()),
        Router('/horarios', module: HorariosModule()),
        Router('/pastorais', module: PastoraisModule()),
        Router('/musica', module: MusicaModule()),
        Router('/liturgia', module: LiturgiaModule()),
        Router('/batismo', module: BatismoModule()),
        Router('/grupo_de_oracao', module: GrupoDeOracaoModule()),
        Router('/catequese', module: CatequeseModule()),
        Router('/crisma', module: CrismaModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
