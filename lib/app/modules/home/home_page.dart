import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/widgets/app_bar_home.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/widgets/button_home.dart';
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
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
            bg,
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
                    funcao: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonHome(
                    texto: "Horários das Missas",
                    funcao: () {},
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
            child: Column(
              children: <Widget>[
                Text(
                  "Rua Dr. Benjamin Constant, 72\nSão Lourenço - Niterói",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                  "(21) 2621-5742",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),
                  )
              ],
            )
            )
        ],
      ),
    );
  }
}
