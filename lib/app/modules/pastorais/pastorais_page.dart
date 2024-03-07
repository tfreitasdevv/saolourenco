import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/models/pastoral_item_model.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/widgets/item_card.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import '../../shared/constants/constants.dart';
import 'pastorais_controller.dart';

class PastoraisPage extends StatefulWidget {
  final String title;
  const PastoraisPage({Key key, this.title = "Pastorais e Movimentos"})
      : super(key: key);

  @override
  _PastoraisPageState createState() => _PastoraisPageState();
}

class _PastoraisPageState
    extends ModularState<PastoraisPage, PastoraisController> {
  //use 'controller' variable to access controller

  bool web = kIsWeb;
  int aux;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: t2,
        title: FittedBox(child: Text(widget.title)),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
        child: _buildMainChild(),
      ),
    );
  } 

  List<PastoralItemModel> pastorais = [
    PastoralItemModel(
        titulo: 'PASTORAL DA LITURGUA',
        image: liturgia,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/liturgia');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DA MÚSICA',
        image: musica,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/musica');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DA COMUNICAÇÃO',
        image: pascom,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/pascom');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DO BATISMO',
        image: bastismo,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/batismo');
        }),
    PastoralItemModel(
        titulo: 'GRUPO DE ORAÇÃO',
        image: grupo,
        textColor: Colors.white,
        funcao: () {
          Modular.to.pushNamed('/grupo_de_oracao');
        }),
    PastoralItemModel(
        titulo: 'ENCONTRO DE CASAIS',
        image: ecc,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/ecc');
        }),
    PastoralItemModel(titulo: 'EAC', image: eac, textColor: t1, funcao: () {}),
    PastoralItemModel(
        titulo: 'EJC',
        image: ejc2,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/ejc');
        }),
    PastoralItemModel(
        titulo: 'CATEQUESE',
        image: catequese,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/catequese');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DA CRISMA',
        image: crisma,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/crisma');
        }),
    PastoralItemModel(
        titulo: 'MEJ',
        image: mej,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/mej');
        }),
    PastoralItemModel(
        titulo: 'COROINHAS',
        image: coroinhas,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/coroinhas');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DO NASCITURO',
        image: nascituro,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/nascituro');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DA SAÚDE',
        image: saude,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/saude');
        }),
    PastoralItemModel(
        titulo: 'ACÓLITOS INSTITUÍDOS',
        image: acolitos,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/acolitos');
        }),
    PastoralItemModel(
        titulo: 'ALFABETIZAÇÃO DE ADULTOS',
        image: alfabetizacao,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/alfabetizacao');
        }),
    PastoralItemModel(
        titulo: 'CONFERÊNCIA SÃO VICENTE DE PAULO',
        image: conferencia_sao_vicente,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/conferencia_sao_vicente');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DO DÍZIMO',
        image: dizimo,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/dizimo');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DE EVENTOS',
        image: eventos,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/eventos');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL FAMILIAR',
        image: familiar,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/familiar');
        }),
    PastoralItemModel(
        titulo: 'MÃE TRÊS VEZES ADMIRÁVEL SCHOENSTATT',
        image: mae_tres_vezes,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/mae_tres_vezes');
        }),
    PastoralItemModel(
        titulo: 'PASTORAL DA PROMOÇÃO HUMANA',
        image: promocao_humana,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/promocao_humana');
        }),
    PastoralItemModel(
        titulo: 'RUA',
        image: rua,
        textColor: t1,
        funcao: () {
          Modular.to.pushNamed('/rua');
        }),
  ];

  _buildMainChild() {
    return Container(
      child: AnimationLimiter(
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: pastorais.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: Duration(milliseconds: 375),
              columnCount: 2,
              child: ScaleAnimation(
                child: ItemCard(
                  titulo: pastorais[index].titulo,
                  image: pastorais[index].image,
                  textColor: pastorais[index].textColor,
                  funcao: pastorais[index].funcao,
                  isWeb: web,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
