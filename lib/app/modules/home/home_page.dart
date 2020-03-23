import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/widgets/app_bar_home.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/widgets/button_home.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/widgets/icons_home.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    MediaQuery.of(context).size.height > 1920 ? bg4k : bg2k),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AppBarHome(),
            SizedBox(height: 8),
            _buildListaBotoes(alturaTela),
            SizedBox(height: 4),
            _buildIconesBottom(alturaTela)
          ],
        ),
      ),
    );
  }

  Container _buildIconesBottom(double alturaTela) {
    return Container(
      height: alturaTela * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconsHome(icone: facebook, funcao: () {}),
          IconsHome(icone: instagram, funcao: () {}),
          IconsHome(icone: telefone, funcao: () {}),
          IconsHome(icone: mapa, funcao: () {}),
        ],
      ),
    );
  }

  Container _buildListaBotoes(double alturaTela) {
    return Container(
      height: alturaTela * 0.6,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ButtonHome(
              texto: "Pastorais e Movimentos",
              funcao: () {
                Modular.to.pushNamed('/pastorais');
              },
            ),
            SizedBox(
              height: 20,
            ),
            ButtonHome(
              texto: "Avisos Paroquiais",
              funcao: () {
                Modular.to.pushNamed('/avisos');
              },
            ),
            SizedBox(
              height: 20,
            ),
            ButtonHome(
              texto: "Horários das Missas",
              funcao: () {
                Modular.to.pushNamed('/horarios');
              },
            ),
            SizedBox(
              height: 20,
            ),
            ButtonHome(
              texto: "Secretaria",
              funcao: () {},
            ),
            SizedBox(
              height: 20,
            ),
            ButtonHome(
              texto: "Dízimo",
              funcao: () {},
            ),
          ],
        ),
      ),
    );
  }
}
