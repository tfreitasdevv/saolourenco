import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/models/pastoral_item_model.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/widgets/item_card.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
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
            image: DecorationImage(
                image: AssetImage(
                    MediaQuery.of(context).size.width > 420 ? bg4k : bg2k),
                fit: BoxFit.cover)),
        child: _buildMainChild(),
      ),
    );
  }

  List<PastoralItemModel> pastorais = [
    PastoralItemModel(
        titulo: 'PASTORAL DA LITURGUA',
        image: 'assets/images/liturgia.jpg',
        textColor: t1,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'PASTORAL DA MÚSICA',
        image: 'assets/images/musica.jpg',
        textColor: t1,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'PASTORAL DO DÍZIMO',
        image: 'assets/images/dizimo.jpg',
        textColor: t1,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'PASTORAL DO BATISMO',
        image: 'assets/images/batismo.jpg',
        textColor: t1,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'GRUPO DE ORAÇÃO',
        image: 'assets/images/grupo.jpg',
        textColor: Colors.white,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'ENCONTRO DE CASAIS',
        image: 'assets/images/ecc.jpg',
        textColor: t1,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'EAC',
        image: 'assets/images/eac.jpg',
        textColor: t1,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'EJC',
        image: 'assets/images/ejc.jpg',
        textColor: t1,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'CATEQUESE',
        image: 'assets/images/catequese.jpg',
        textColor: t1,
        funcao: () {}),
    PastoralItemModel(
        titulo: 'PASTORAL DA CRISMA',
        image: 'assets/images/crisma.jpg',
        textColor: t1,
        funcao: () {}),
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
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
