import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/pastorais/plugins/page_transformer/intro_page_view.dart';
import 'pastorais_controller.dart';

class PastoraisPage extends StatefulWidget {
  final String title;
  const PastoraisPage({Key key, this.title = "Pastorais"}) : super(key: key);

  @override
  _PastoraisPageState createState() => _PastoraisPageState();
}

class _PastoraisPageState
    extends ModularState<PastoraisPage, PastoraisController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return IntroPageView();
  }
}
