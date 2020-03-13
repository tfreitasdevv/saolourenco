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
    double larguraTela = MediaQuery.of(context).size.width;
    double statusSize = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            alturaTela > 1920 ? bg4k : bg2k,
            fit: BoxFit.fill,
          ),
          Positioned(top: -230, right: -230, child: Image.asset(tercoBranco)),
          AppBarHome(),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: statusSize + 165 + 50),
              child: Column(
                children: <Widget>[
                  ButtonHome(
                    texto: "Pastorais e Movimentos",
                    funcao: () {},
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
          ),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconsHome(icone: 'assets/icones/f2.png', funcao: (){}),
                  IconsHome(icone: 'assets/icones/i1.png', funcao: (){}),
                  IconsHome(icone: 'assets/icones/t.png', funcao: (){}),
                  IconsHome(icone: 'assets/icones/m.png', funcao: (){}),
                  ],
              ))
        ],
      ),
    );
  }
}
