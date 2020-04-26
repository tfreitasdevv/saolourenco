import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/modules/sobre/tabs/clero.dart';
import 'package:paroquia_sao_lourenco/app/modules/sobre/tabs/historia.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class SobrePage extends StatefulWidget {
  final String title;
  const SobrePage({Key key, this.title = "Sobre a Paróquia"}) : super(key: key);

  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: t1,
          title: Text(widget.title),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              child: Text("História", textAlign: TextAlign.center),
            ),
            Tab(
              child: Text("Clero", textAlign: TextAlign.center),
            ),
          ]),
        ),
        body: TabBarView(children: [Historia(), Clero()]),
      ),
    );
  }
}
