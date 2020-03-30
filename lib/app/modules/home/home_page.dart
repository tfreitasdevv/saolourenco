import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/widgets/app_bar_home.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/widgets/button_home.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/widgets/icons_home.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';
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
    bool web = kIsWeb;
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setEnabledSystemUIOverlays(
        web == false ? [SystemUiOverlay.bottom, SystemUiOverlay.top] : []);
  }

  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    bool web = kIsWeb;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: t2,
            image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AppBarHome(),
            SizedBox(height: alturaTela*0.008333),
            _buildListaBotoes(alturaTela),
            SizedBox(height: alturaTela*0.008333),
            _buildIconesBottom(alturaTela, web)
          ],
        ),
      ),
    );
  }

  Container _buildIconesBottom(double alturaTela, bool web) {
    return Container(
      height: alturaTela * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconsHome(
              icone: facebook,
              funcao: () {
                _facebook();
              },
              web: web),
          IconsHome(icone: instagram, funcao: () {}, web: web),
          IconsHome(
              icone: telefone,
              funcao: () {
                _telefone();
              },
              web: web),
          IconsHome(
              icone: mapa,
              funcao: () {
                _map();
              },
              web: web),
        ],
      ),
    );
  }

  void _facebook() {
    launch("https://www.facebook.com/paroquiasaolourenconiteroi/");
  }

  void _telefone() {
    launch("tel:02126215742");
  }

  void _map() {
    launch("https://goo.gl/maps/C1pTwXisfhoyH5uE7");
  }

  Container _buildListaBotoes(double alturaTela) {
    double _alturaSizedBox = alturaTela*0.6*0.03;
    return Container(
      height: alturaTela * 0.62,
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
              height: _alturaSizedBox,
            ),
            ButtonHome(
              texto: "Avisos Paroquiais",
              funcao: () {
                Modular.to.pushNamed('/avisos');
              },
            ),
            SizedBox(
              height: _alturaSizedBox,
            ),
            ButtonHome(
              texto: "Horários das Missas",
              funcao: () {
                Modular.to.pushNamed('/horarios');
              },
            ),
            SizedBox(
              height: _alturaSizedBox,
            ),
            ButtonHome(
              texto: "Secretaria",
              funcao: () {},
            ),
            SizedBox(
              height: _alturaSizedBox,
            ),
            ButtonHome(
              texto: "Dízimo",
              funcao: () {
                Modular.to.pushNamed('/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}
