import 'package:paroquia_sao_lourenco/app/modules/acolitos/acolitos_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/alfabetizacao/alfabetizacao_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/avisos/avisos_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/batismo/batismo_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/capelas/capelas_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/catequese/catequese_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/coroinhas/coroinhas_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/crisma/crisma_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/dizimo/dizimo_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/ecc/ecc_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/ejc/ejc_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/eventos/eventos_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/grupo_de_oracao/grupo_de_oracao_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/home_page.dart';
import 'package:paroquia_sao_lourenco/app/modules/horarios/horarios_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/liturgia/liturgia_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/mae_tres_vezes/mae_tres_vezes_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/mej/mej_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/musica_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/nascituro/nascituro_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/pascom/pascom_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/pastorais_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/saude/saude_module.dart';

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
        Router('/capelas', module: CapelasModule()),
        Router('/pastorais', module: PastoraisModule()),
        Router('/musica', module: MusicaModule()),
        Router('/liturgia', module: LiturgiaModule()),
        Router('/batismo', module: BatismoModule()),
        Router('/grupo_de_oracao', module: GrupoDeOracaoModule()),
        Router('/catequese', module: CatequeseModule()),
        Router('/crisma', module: CrismaModule()),
        Router('/pascom', module: PascomModule()),
        Router('/mej', module: MejModule()),
        Router('/acolitos', module: AcolitosModule()),
        Router('/alfabetizacao', module: AlfabetizacaoModule()),
        Router('/mae_tres_vezes', module: MaeTresVezesModule()),
        Router('/dizimo', module: DizimoModule()),
        Router('/ecc', module: EccModule()),
        Router('/coroinhas', module: CoroinhasModule()),
        Router('/ejc', module: EjcModule()),
        Router('/eventos', module: EventosModule()),
        Router('/nascituro', module: NascituroModule()),
        Router('/saude', module: SaudeModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
